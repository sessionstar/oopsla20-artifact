# !/usr/bin/env python3
import os
import subprocess
import sys
import tempfile
import util
from typing import Optional


def generate_callback_implementation(iteration: int) -> str:
    lines = []
    protocol_name = f"PingPong{iteration}"
    lines.append(f"module {protocol_name}AImpl")
    lines.append(f"open Generated{protocol_name}A")
    lines.append("open FStar.Ref")
    lines.append("open FStar.Mul")
    lines.append("let mk_callbacks (count: pos) = ")
    lines.append(f"  let it = alloc 0 in {{")
    for i in range(iteration):
        # Send
        if i == 0:
            # Special send
            state = 2 * iteration + 4
            lines.append(f"  state{state}Onsend = (fun _ -> if !it < count then")
            lines.append(f"    (it := !it + 1;")
            lines.append(f"     Choice{state}Ping ((!it - 1) * {iteration}))")
            lines.append(f"    else Choice{state}Bye ());")
        else:
            state = 2 * (iteration + i) + 5
            lines.append(f"  state{state}OnsendPing = (fun st ->")
            lines.append(f"    Mkstate{state}?.y{i-1} st + 1);")
        # Receive
        state = 2 * (iteration + i) + 6
        lines.append(f"  state{state}OnreceivePong = (fun _ _ -> ());")
    lines.append(f"  state{4*iteration+5}OnreceiveBye = (fun _ _ -> ());")
    lines.append("}")
    return "\n".join(lines)


def generate_scribble_protocol(iteration: int) -> str:
    lines = []
    protocol_name = f"PingPong{iteration}"
    lines.append(f"module {protocol_name};")
    lines.append('type <fstar> "int" from "" as int;')
    lines.append(f"global protocol {protocol_name}(role A, role B) {{")
    lines.append("  choice at A {")
    for i in range(iteration):
        assert1 = f'@"x{i} > y{i-1}"' if i > 0 else ""
        assert2 = f'@"y{i} > x{i}"'
        lines.append(f"    Ping(x{i}: int) from A to B; {assert1}")
        lines.append(f"    Pong(y{i}: int) from B to A; {assert2}")
    lines.append(f"    do {protocol_name}(A, B);")
    lines.append("  } or {")
    lines.append("    Bye() from A to B;")
    lines.append("    Bye() from B to A;")
    lines.append("  }")
    lines.append("}")
    return "\n".join(lines)


def benchmark_for_pingpong_with_iteration(
    iteration: int, repetition: Optional[int] = None
) -> util.BenchmarkResult:
    protocol_name = f"PingPong{iteration}"
    protocol = generate_scribble_protocol(iteration)
    with tempfile.TemporaryDirectory() as d:
        protocol_filename = f"{d}/{protocol_name}.scr"
        with open(protocol_filename, "w") as f:
            f.write(protocol)
        implementation = generate_callback_implementation(iteration)
        implementation_filename = f"{d}/{protocol_name}AImpl.fst"
        with open(implementation_filename, "w") as f:
            f.write(implementation)
        result = util.benchmark_protocol(
            protocol_filename,
            protocol_name,
            "A",
            implementation_filename,
            repetition=repetition,
        )
    return result


def compile_pingpong(full):
    os.chdir("PingPong")
    if os.path.exists(".depend"):
        os.remove(".depend")
    print("Compiling endpoints for execution, this may take up to 20 min...")
    subprocess.check_output(["make", "main.ocaml.exe"], stderr=subprocess.DEVNULL)


PING_PONGS = 100_000


def make_compilation_times(iterations, repetition):
    print("Compilation Times".center(80))
    print("=" * 80)
    headers = [
        "Protocol Len.",
        "Gen Time (CFSM)",
        "Gen Time (F*)",
        "TC Time (Gen.)",
        "TC Time (Impl)",
    ]
    headers = [h.center(15) for h in headers]
    print(*headers, sep="|")
    print("=" * 80)
    for iteration in iterations:
        benchmark = benchmark_for_pingpong_with_iteration(
            iteration, repetition=repetition
        )
        columns = [
            "%d" % iteration,
            "%f" % benchmark.generation_fsm_time,
            "%f" % benchmark.generation_fstar_time,
            "%f" % benchmark.typechecking_generated_time,
            "%f" % benchmark.typechecking_implementation_time,
        ]
        columns = [c.center(15) for c in columns]
        print(*columns, sep="|")
    print("=" * 80)


def make_execution_times(iterations, repetition):
    print("Execution Times".center(80))
    print("=" * 80)
    headers = ["Protocol Len.", "Execution Time"]
    headers = [h.center(38) for h in headers]
    print(*headers, sep="|")
    print("=" * 80)
    if repetition is None:
        repetition = 1
    bareserver = subprocess.Popen(
        ["./main.ocaml.exe", "127.0.0.1", "3000", "bareserverforever"]
    )
    times = []
    for i in range(repetition):
        time = subprocess.check_output(
            ["./main.ocaml.exe", "127.0.0.1", "3000", "bareclient", str(PING_PONGS)]
        )
        times.append(float(time.decode("ascii")))
    columns = ["bare", "%f" % (sum(times) / len(times))]
    columns = [c.center(38) for c in columns]
    print(*columns, sep="|")
    bareserver.terminate()
    for iteration in iterations:
        server = subprocess.Popen(
            ["./main.ocaml.exe", "127.0.0.1", "3000", "serverforever", str(iteration)]
        )
        times = []
        for i in range(repetition):
            time = subprocess.check_output(
                [
                    "./main.ocaml.exe",
                    "127.0.0.1",
                    "3000",
                    "client",
                    str(PING_PONGS // iteration),
                    str(iteration),
                ]
            )
            times.append(float(time.decode("ascii")))
        columns = ["%d" % iteration, "%f" % (sum(times) / len(times))]
        columns = [c.center(38) for c in columns]
        print(*columns, sep="|")
        server.terminate()
    print("=" * 80)


if __name__ == "__main__":
    repetition = int(sys.argv[1]) if len(sys.argv) > 1 else None
    full = os.getenv("FULL")
    comp_iterations = [1, 5, 10, 15, 20, 25] if full else [1, 5, 10]
    make_compilation_times(comp_iterations, repetition)
    compile_pingpong(full)
    exec_iterations = [1, 5, 10, 20, 25] if full else [1, 5, 10]
    make_execution_times(exec_iterations, repetition)
