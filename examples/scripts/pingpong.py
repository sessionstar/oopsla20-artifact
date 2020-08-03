# !/usr/bin/env python3
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


if __name__ == "__main__":
    iterations = [1, 5, 10, 15, 20, 25]
    repetition = int(sys.argv[1]) if len(sys.argv) > 1 else None
    print("=" * 80)
    headers = [
        "Iteration",
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
