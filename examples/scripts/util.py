# !/usr/bin/env python3
import os
import time
import subprocess
import shutil
import tempfile
from typing import List, Optional, NamedTuple


class BenchmarkResult(NamedTuple):
    generation_fsm_time: float
    generation_fstar_time: float
    typechecking_generated_time: float
    typechecking_implementation_time: float


def benchmark_command(
    command: List[str],
    directory: str,
    save_stdout: Optional[str] = None,
    repetition: Optional[int] = None,
) -> float:
    def benchmark_single():
        start = time.time()
        output = subprocess.check_output(
            command, cwd=directory, stderr=subprocess.DEVNULL
        )
        finish = time.time()
        if save_stdout is not None:
            with open(save_stdout, "wb") as f:
                f.write(output)
        return finish - start

    if repetition is not None:
        if repetition <= 0:
            raise ValueError("repetition must be positive")
        iterations = [benchmark_single() for i in range(repetition)]
        return sum(iterations) / repetition
    else:
        return benchmark_single()


def benchmark_fstar_file(filename: str, repetition: Optional[int] = None) -> float:
    filename = os.path.abspath(filename)
    directory = os.path.dirname(filename)
    command = ["fstar.exe", filename]
    return benchmark_command(command, directory, repetition=repetition)


def benchmark_protocol(
    protocol_filename: str,
    protocol_name: str,
    role_name: str,
    implementation_filename: str,
    repetition: Optional[int] = None,
) -> BenchmarkResult:
    cwd = os.getcwd()
    with tempfile.TemporaryDirectory() as d:
        shutil.copy2(protocol_filename, d)
        shutil.copy2(implementation_filename, d)
        os.chdir(d)
        generated_filename = f"Generated{protocol_name}{role_name}.fst"
        protocol_filename = f"{d}/{os.path.basename(protocol_filename)}"
        implementation_filename = f"{d}/{os.path.basename(implementation_filename)}"
        fsm_file_name = f"{d}/{protocol_name}_{role_name}.fsm"
        generation_fsm_time = benchmark_command(
            [
                "scribblec-assrt.sh",
                protocol_filename,
                "-fair",
                "-assrt",
                "-fsm",
                protocol_name,
                role_name,
            ],
            d,
            save_stdout=fsm_file_name,
            repetition=repetition,
        )
        generation_fstar_time = benchmark_command(
            [
                "ScribbleCodeGen.exe",
                "--protocol",
                protocol_name,
                "--role",
                role_name,
                "-o",
                generated_filename,
                fsm_file_name,
            ],
            d,
            repetition=repetition,
        )
        typecheck_gencode_time = benchmark_fstar_file(
            generated_filename, repetition=repetition
        )
        typecheck_impl_time = benchmark_fstar_file(
            implementation_filename, repetition=repetition
        )
    os.chdir(cwd)
    return BenchmarkResult(
        generation_fsm_time=generation_fsm_time,
        generation_fstar_time=generation_fstar_time,
        typechecking_generated_time=typecheck_gencode_time,
        typechecking_implementation_time=typecheck_impl_time,
    )
