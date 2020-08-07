#!/usr/bin/env python3
import util
import sys


ALL_EXAMPLES = [
    ("TwoBuyer/TwoBuyer.scr", "TwoBuyer", "A", "TwoBuyer/A/TwoBuyerA_CallbackImpl.fst"),
    (
        "Negotiation/SapNego.scr",
        "Negotiate",
        "C",
        "Negotiation/C/NegotiateC_CallbackImpl.fst",
    ),
    ("Fibonacci/Fib.scr", "Fib", "A", "Fibonacci/A/FibA_CallbackImpl.fst"),
    (
        "TravelAgency/TravelAgency.scr",
        "Booking",
        "C",
        "TravelAgency/C/TravelAgencyC_CallbackImpl.fst",
    ),
    ("Calculator/Calc.scr", "Calc", "C", "Calculator/C/CalcC_CallbackImpl.fst"),
    ("SH/SH.scr", "SH", "P", "SH/P/SHP_CallbackImpl.fst"),
    (
        "OnlineWallet/OnlineWallet.scr",
        "OnlineWallet",
        "C",
        "OnlineWallet/C/OnlineWalletC_CallbackImpl.fst",
    ),
    ("Ticket/Ticket.scr", "Ticket", "C", "Ticket/C/TicketC_CallbackImpl.fst"),
    ("HTTP/Http.scr", "Http", "S", "HTTP/ServerImpl.fst"),
]


if __name__ == "__main__":
    repetition = int(sys.argv[1]) if len(sys.argv) > 1 else None
    print("=" * 80)
    headers = [
        "Example",
        "Gen Time (CFSM)",
        "Gen Time (F*)",
        "TC Time (Gen.)",
        "TC Time (Impl)",
    ]
    headers = [h.center(15) for h in headers]
    print(*headers, sep="|")
    print("=" * 80)
    for example in ALL_EXAMPLES:
        benchmark = util.benchmark_protocol(
            example[0], example[1], example[2], example[3], repetition=repetition
        )
        columns = [
            f"{example[1]}({example[2]})",
            "%f" % benchmark.generation_fsm_time,
            "%f" % benchmark.generation_fstar_time,
            "%f" % benchmark.typechecking_generated_time,
            "%f" % benchmark.typechecking_implementation_time,
        ]
        columns = [c.center(15) for c in columns]
        print(*columns, sep="|")
    print("=" * 80)
