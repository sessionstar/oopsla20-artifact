module GeneratedPingPong20A
(* This file is GENERATED, do not modify manually *)
open FStar.All
open FStar.Error

type role =
| B
type state44 = unit
and state45 = unit
and state46 = {
_dumstate46 : unit;
x0 : int;
}
and state47 = {
_dumstate47 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
}
and state48 = {
_dumstate48 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
}
and state49 = {
_dumstate49 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
}
and state50 = {
_dumstate50 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
}
and state51 = {
_dumstate51 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
}
and state52 = {
_dumstate52 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
}
and state53 = {
_dumstate53 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
}
and state54 = {
_dumstate54 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
}
and state55 = {
_dumstate55 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
}
and state56 = {
_dumstate56 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
}
and state57 = {
_dumstate57 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
}
and state58 = {
_dumstate58 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
}
and state59 = {
_dumstate59 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
y6 : (y6 : int{((y6) > (x6))});
}
and state60 = {
_dumstate60 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
y6 : (y6 : int{((y6) > (x6))});
x7 : (x7 : int{((x7) > (y6))});
}
and state61 = {
_dumstate61 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
y6 : (y6 : int{((y6) > (x6))});
x7 : (x7 : int{((x7) > (y6))});
y7 : (y7 : int{((y7) > (x7))});
}
and state62 = {
_dumstate62 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
y6 : (y6 : int{((y6) > (x6))});
x7 : (x7 : int{((x7) > (y6))});
y7 : (y7 : int{((y7) > (x7))});
x8 : (x8 : int{((x8) > (y7))});
}
and state63 = {
_dumstate63 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
y6 : (y6 : int{((y6) > (x6))});
x7 : (x7 : int{((x7) > (y6))});
y7 : (y7 : int{((y7) > (x7))});
x8 : (x8 : int{((x8) > (y7))});
y8 : (y8 : int{((y8) > (x8))});
}
and state64 = {
_dumstate64 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
y6 : (y6 : int{((y6) > (x6))});
x7 : (x7 : int{((x7) > (y6))});
y7 : (y7 : int{((y7) > (x7))});
x8 : (x8 : int{((x8) > (y7))});
y8 : (y8 : int{((y8) > (x8))});
x9 : (x9 : int{((x9) > (y8))});
}
and state65 = {
_dumstate65 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
y6 : (y6 : int{((y6) > (x6))});
x7 : (x7 : int{((x7) > (y6))});
y7 : (y7 : int{((y7) > (x7))});
x8 : (x8 : int{((x8) > (y7))});
y8 : (y8 : int{((y8) > (x8))});
x9 : (x9 : int{((x9) > (y8))});
y9 : (y9 : int{((y9) > (x9))});
}
and state66 = {
_dumstate66 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
y6 : (y6 : int{((y6) > (x6))});
x7 : (x7 : int{((x7) > (y6))});
y7 : (y7 : int{((y7) > (x7))});
x8 : (x8 : int{((x8) > (y7))});
y8 : (y8 : int{((y8) > (x8))});
x9 : (x9 : int{((x9) > (y8))});
y9 : (y9 : int{((y9) > (x9))});
x10 : (x10 : int{((x10) > (y9))});
}
and state67 = {
_dumstate67 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
y6 : (y6 : int{((y6) > (x6))});
x7 : (x7 : int{((x7) > (y6))});
y7 : (y7 : int{((y7) > (x7))});
x8 : (x8 : int{((x8) > (y7))});
y8 : (y8 : int{((y8) > (x8))});
x9 : (x9 : int{((x9) > (y8))});
y9 : (y9 : int{((y9) > (x9))});
x10 : (x10 : int{((x10) > (y9))});
y10 : (y10 : int{((y10) > (x10))});
}
and state68 = {
_dumstate68 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
y6 : (y6 : int{((y6) > (x6))});
x7 : (x7 : int{((x7) > (y6))});
y7 : (y7 : int{((y7) > (x7))});
x8 : (x8 : int{((x8) > (y7))});
y8 : (y8 : int{((y8) > (x8))});
x9 : (x9 : int{((x9) > (y8))});
y9 : (y9 : int{((y9) > (x9))});
x10 : (x10 : int{((x10) > (y9))});
y10 : (y10 : int{((y10) > (x10))});
x11 : (x11 : int{((x11) > (y10))});
}
and state69 = {
_dumstate69 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
y6 : (y6 : int{((y6) > (x6))});
x7 : (x7 : int{((x7) > (y6))});
y7 : (y7 : int{((y7) > (x7))});
x8 : (x8 : int{((x8) > (y7))});
y8 : (y8 : int{((y8) > (x8))});
x9 : (x9 : int{((x9) > (y8))});
y9 : (y9 : int{((y9) > (x9))});
x10 : (x10 : int{((x10) > (y9))});
y10 : (y10 : int{((y10) > (x10))});
x11 : (x11 : int{((x11) > (y10))});
y11 : (y11 : int{((y11) > (x11))});
}
and state70 = {
_dumstate70 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
y6 : (y6 : int{((y6) > (x6))});
x7 : (x7 : int{((x7) > (y6))});
y7 : (y7 : int{((y7) > (x7))});
x8 : (x8 : int{((x8) > (y7))});
y8 : (y8 : int{((y8) > (x8))});
x9 : (x9 : int{((x9) > (y8))});
y9 : (y9 : int{((y9) > (x9))});
x10 : (x10 : int{((x10) > (y9))});
y10 : (y10 : int{((y10) > (x10))});
x11 : (x11 : int{((x11) > (y10))});
y11 : (y11 : int{((y11) > (x11))});
x12 : (x12 : int{((x12) > (y11))});
}
and state71 = {
_dumstate71 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
y6 : (y6 : int{((y6) > (x6))});
x7 : (x7 : int{((x7) > (y6))});
y7 : (y7 : int{((y7) > (x7))});
x8 : (x8 : int{((x8) > (y7))});
y8 : (y8 : int{((y8) > (x8))});
x9 : (x9 : int{((x9) > (y8))});
y9 : (y9 : int{((y9) > (x9))});
x10 : (x10 : int{((x10) > (y9))});
y10 : (y10 : int{((y10) > (x10))});
x11 : (x11 : int{((x11) > (y10))});
y11 : (y11 : int{((y11) > (x11))});
x12 : (x12 : int{((x12) > (y11))});
y12 : (y12 : int{((y12) > (x12))});
}
and state72 = {
_dumstate72 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
y6 : (y6 : int{((y6) > (x6))});
x7 : (x7 : int{((x7) > (y6))});
y7 : (y7 : int{((y7) > (x7))});
x8 : (x8 : int{((x8) > (y7))});
y8 : (y8 : int{((y8) > (x8))});
x9 : (x9 : int{((x9) > (y8))});
y9 : (y9 : int{((y9) > (x9))});
x10 : (x10 : int{((x10) > (y9))});
y10 : (y10 : int{((y10) > (x10))});
x11 : (x11 : int{((x11) > (y10))});
y11 : (y11 : int{((y11) > (x11))});
x12 : (x12 : int{((x12) > (y11))});
y12 : (y12 : int{((y12) > (x12))});
x13 : (x13 : int{((x13) > (y12))});
}
and state73 = {
_dumstate73 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
y6 : (y6 : int{((y6) > (x6))});
x7 : (x7 : int{((x7) > (y6))});
y7 : (y7 : int{((y7) > (x7))});
x8 : (x8 : int{((x8) > (y7))});
y8 : (y8 : int{((y8) > (x8))});
x9 : (x9 : int{((x9) > (y8))});
y9 : (y9 : int{((y9) > (x9))});
x10 : (x10 : int{((x10) > (y9))});
y10 : (y10 : int{((y10) > (x10))});
x11 : (x11 : int{((x11) > (y10))});
y11 : (y11 : int{((y11) > (x11))});
x12 : (x12 : int{((x12) > (y11))});
y12 : (y12 : int{((y12) > (x12))});
x13 : (x13 : int{((x13) > (y12))});
y13 : (y13 : int{((y13) > (x13))});
}
and state74 = {
_dumstate74 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
y6 : (y6 : int{((y6) > (x6))});
x7 : (x7 : int{((x7) > (y6))});
y7 : (y7 : int{((y7) > (x7))});
x8 : (x8 : int{((x8) > (y7))});
y8 : (y8 : int{((y8) > (x8))});
x9 : (x9 : int{((x9) > (y8))});
y9 : (y9 : int{((y9) > (x9))});
x10 : (x10 : int{((x10) > (y9))});
y10 : (y10 : int{((y10) > (x10))});
x11 : (x11 : int{((x11) > (y10))});
y11 : (y11 : int{((y11) > (x11))});
x12 : (x12 : int{((x12) > (y11))});
y12 : (y12 : int{((y12) > (x12))});
x13 : (x13 : int{((x13) > (y12))});
y13 : (y13 : int{((y13) > (x13))});
x14 : (x14 : int{((x14) > (y13))});
}
and state75 = {
_dumstate75 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
y6 : (y6 : int{((y6) > (x6))});
x7 : (x7 : int{((x7) > (y6))});
y7 : (y7 : int{((y7) > (x7))});
x8 : (x8 : int{((x8) > (y7))});
y8 : (y8 : int{((y8) > (x8))});
x9 : (x9 : int{((x9) > (y8))});
y9 : (y9 : int{((y9) > (x9))});
x10 : (x10 : int{((x10) > (y9))});
y10 : (y10 : int{((y10) > (x10))});
x11 : (x11 : int{((x11) > (y10))});
y11 : (y11 : int{((y11) > (x11))});
x12 : (x12 : int{((x12) > (y11))});
y12 : (y12 : int{((y12) > (x12))});
x13 : (x13 : int{((x13) > (y12))});
y13 : (y13 : int{((y13) > (x13))});
x14 : (x14 : int{((x14) > (y13))});
y14 : (y14 : int{((y14) > (x14))});
}
and state76 = {
_dumstate76 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
y6 : (y6 : int{((y6) > (x6))});
x7 : (x7 : int{((x7) > (y6))});
y7 : (y7 : int{((y7) > (x7))});
x8 : (x8 : int{((x8) > (y7))});
y8 : (y8 : int{((y8) > (x8))});
x9 : (x9 : int{((x9) > (y8))});
y9 : (y9 : int{((y9) > (x9))});
x10 : (x10 : int{((x10) > (y9))});
y10 : (y10 : int{((y10) > (x10))});
x11 : (x11 : int{((x11) > (y10))});
y11 : (y11 : int{((y11) > (x11))});
x12 : (x12 : int{((x12) > (y11))});
y12 : (y12 : int{((y12) > (x12))});
x13 : (x13 : int{((x13) > (y12))});
y13 : (y13 : int{((y13) > (x13))});
x14 : (x14 : int{((x14) > (y13))});
y14 : (y14 : int{((y14) > (x14))});
x15 : (x15 : int{((x15) > (y14))});
}
and state77 = {
_dumstate77 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
y6 : (y6 : int{((y6) > (x6))});
x7 : (x7 : int{((x7) > (y6))});
y7 : (y7 : int{((y7) > (x7))});
x8 : (x8 : int{((x8) > (y7))});
y8 : (y8 : int{((y8) > (x8))});
x9 : (x9 : int{((x9) > (y8))});
y9 : (y9 : int{((y9) > (x9))});
x10 : (x10 : int{((x10) > (y9))});
y10 : (y10 : int{((y10) > (x10))});
x11 : (x11 : int{((x11) > (y10))});
y11 : (y11 : int{((y11) > (x11))});
x12 : (x12 : int{((x12) > (y11))});
y12 : (y12 : int{((y12) > (x12))});
x13 : (x13 : int{((x13) > (y12))});
y13 : (y13 : int{((y13) > (x13))});
x14 : (x14 : int{((x14) > (y13))});
y14 : (y14 : int{((y14) > (x14))});
x15 : (x15 : int{((x15) > (y14))});
y15 : (y15 : int{((y15) > (x15))});
}
and state78 = {
_dumstate78 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
y6 : (y6 : int{((y6) > (x6))});
x7 : (x7 : int{((x7) > (y6))});
y7 : (y7 : int{((y7) > (x7))});
x8 : (x8 : int{((x8) > (y7))});
y8 : (y8 : int{((y8) > (x8))});
x9 : (x9 : int{((x9) > (y8))});
y9 : (y9 : int{((y9) > (x9))});
x10 : (x10 : int{((x10) > (y9))});
y10 : (y10 : int{((y10) > (x10))});
x11 : (x11 : int{((x11) > (y10))});
y11 : (y11 : int{((y11) > (x11))});
x12 : (x12 : int{((x12) > (y11))});
y12 : (y12 : int{((y12) > (x12))});
x13 : (x13 : int{((x13) > (y12))});
y13 : (y13 : int{((y13) > (x13))});
x14 : (x14 : int{((x14) > (y13))});
y14 : (y14 : int{((y14) > (x14))});
x15 : (x15 : int{((x15) > (y14))});
y15 : (y15 : int{((y15) > (x15))});
x16 : (x16 : int{((x16) > (y15))});
}
and state79 = {
_dumstate79 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
y6 : (y6 : int{((y6) > (x6))});
x7 : (x7 : int{((x7) > (y6))});
y7 : (y7 : int{((y7) > (x7))});
x8 : (x8 : int{((x8) > (y7))});
y8 : (y8 : int{((y8) > (x8))});
x9 : (x9 : int{((x9) > (y8))});
y9 : (y9 : int{((y9) > (x9))});
x10 : (x10 : int{((x10) > (y9))});
y10 : (y10 : int{((y10) > (x10))});
x11 : (x11 : int{((x11) > (y10))});
y11 : (y11 : int{((y11) > (x11))});
x12 : (x12 : int{((x12) > (y11))});
y12 : (y12 : int{((y12) > (x12))});
x13 : (x13 : int{((x13) > (y12))});
y13 : (y13 : int{((y13) > (x13))});
x14 : (x14 : int{((x14) > (y13))});
y14 : (y14 : int{((y14) > (x14))});
x15 : (x15 : int{((x15) > (y14))});
y15 : (y15 : int{((y15) > (x15))});
x16 : (x16 : int{((x16) > (y15))});
y16 : (y16 : int{((y16) > (x16))});
}
and state80 = {
_dumstate80 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
y6 : (y6 : int{((y6) > (x6))});
x7 : (x7 : int{((x7) > (y6))});
y7 : (y7 : int{((y7) > (x7))});
x8 : (x8 : int{((x8) > (y7))});
y8 : (y8 : int{((y8) > (x8))});
x9 : (x9 : int{((x9) > (y8))});
y9 : (y9 : int{((y9) > (x9))});
x10 : (x10 : int{((x10) > (y9))});
y10 : (y10 : int{((y10) > (x10))});
x11 : (x11 : int{((x11) > (y10))});
y11 : (y11 : int{((y11) > (x11))});
x12 : (x12 : int{((x12) > (y11))});
y12 : (y12 : int{((y12) > (x12))});
x13 : (x13 : int{((x13) > (y12))});
y13 : (y13 : int{((y13) > (x13))});
x14 : (x14 : int{((x14) > (y13))});
y14 : (y14 : int{((y14) > (x14))});
x15 : (x15 : int{((x15) > (y14))});
y15 : (y15 : int{((y15) > (x15))});
x16 : (x16 : int{((x16) > (y15))});
y16 : (y16 : int{((y16) > (x16))});
x17 : (x17 : int{((x17) > (y16))});
}
and state81 = {
_dumstate81 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
y6 : (y6 : int{((y6) > (x6))});
x7 : (x7 : int{((x7) > (y6))});
y7 : (y7 : int{((y7) > (x7))});
x8 : (x8 : int{((x8) > (y7))});
y8 : (y8 : int{((y8) > (x8))});
x9 : (x9 : int{((x9) > (y8))});
y9 : (y9 : int{((y9) > (x9))});
x10 : (x10 : int{((x10) > (y9))});
y10 : (y10 : int{((y10) > (x10))});
x11 : (x11 : int{((x11) > (y10))});
y11 : (y11 : int{((y11) > (x11))});
x12 : (x12 : int{((x12) > (y11))});
y12 : (y12 : int{((y12) > (x12))});
x13 : (x13 : int{((x13) > (y12))});
y13 : (y13 : int{((y13) > (x13))});
x14 : (x14 : int{((x14) > (y13))});
y14 : (y14 : int{((y14) > (x14))});
x15 : (x15 : int{((x15) > (y14))});
y15 : (y15 : int{((y15) > (x15))});
x16 : (x16 : int{((x16) > (y15))});
y16 : (y16 : int{((y16) > (x16))});
x17 : (x17 : int{((x17) > (y16))});
y17 : (y17 : int{((y17) > (x17))});
}
and state82 = {
_dumstate82 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
y6 : (y6 : int{((y6) > (x6))});
x7 : (x7 : int{((x7) > (y6))});
y7 : (y7 : int{((y7) > (x7))});
x8 : (x8 : int{((x8) > (y7))});
y8 : (y8 : int{((y8) > (x8))});
x9 : (x9 : int{((x9) > (y8))});
y9 : (y9 : int{((y9) > (x9))});
x10 : (x10 : int{((x10) > (y9))});
y10 : (y10 : int{((y10) > (x10))});
x11 : (x11 : int{((x11) > (y10))});
y11 : (y11 : int{((y11) > (x11))});
x12 : (x12 : int{((x12) > (y11))});
y12 : (y12 : int{((y12) > (x12))});
x13 : (x13 : int{((x13) > (y12))});
y13 : (y13 : int{((y13) > (x13))});
x14 : (x14 : int{((x14) > (y13))});
y14 : (y14 : int{((y14) > (x14))});
x15 : (x15 : int{((x15) > (y14))});
y15 : (y15 : int{((y15) > (x15))});
x16 : (x16 : int{((x16) > (y15))});
y16 : (y16 : int{((y16) > (x16))});
x17 : (x17 : int{((x17) > (y16))});
y17 : (y17 : int{((y17) > (x17))});
x18 : (x18 : int{((x18) > (y17))});
}
and state83 = {
_dumstate83 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
y6 : (y6 : int{((y6) > (x6))});
x7 : (x7 : int{((x7) > (y6))});
y7 : (y7 : int{((y7) > (x7))});
x8 : (x8 : int{((x8) > (y7))});
y8 : (y8 : int{((y8) > (x8))});
x9 : (x9 : int{((x9) > (y8))});
y9 : (y9 : int{((y9) > (x9))});
x10 : (x10 : int{((x10) > (y9))});
y10 : (y10 : int{((y10) > (x10))});
x11 : (x11 : int{((x11) > (y10))});
y11 : (y11 : int{((y11) > (x11))});
x12 : (x12 : int{((x12) > (y11))});
y12 : (y12 : int{((y12) > (x12))});
x13 : (x13 : int{((x13) > (y12))});
y13 : (y13 : int{((y13) > (x13))});
x14 : (x14 : int{((x14) > (y13))});
y14 : (y14 : int{((y14) > (x14))});
x15 : (x15 : int{((x15) > (y14))});
y15 : (y15 : int{((y15) > (x15))});
x16 : (x16 : int{((x16) > (y15))});
y16 : (y16 : int{((y16) > (x16))});
x17 : (x17 : int{((x17) > (y16))});
y17 : (y17 : int{((y17) > (x17))});
x18 : (x18 : int{((x18) > (y17))});
y18 : (y18 : int{((y18) > (x18))});
}
and state84 = {
_dumstate84 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
x4 : (x4 : int{((x4) > (y3))});
y4 : (y4 : int{((y4) > (x4))});
x5 : (x5 : int{((x5) > (y4))});
y5 : (y5 : int{((y5) > (x5))});
x6 : (x6 : int{((x6) > (y5))});
y6 : (y6 : int{((y6) > (x6))});
x7 : (x7 : int{((x7) > (y6))});
y7 : (y7 : int{((y7) > (x7))});
x8 : (x8 : int{((x8) > (y7))});
y8 : (y8 : int{((y8) > (x8))});
x9 : (x9 : int{((x9) > (y8))});
y9 : (y9 : int{((y9) > (x9))});
x10 : (x10 : int{((x10) > (y9))});
y10 : (y10 : int{((y10) > (x10))});
x11 : (x11 : int{((x11) > (y10))});
y11 : (y11 : int{((y11) > (x11))});
x12 : (x12 : int{((x12) > (y11))});
y12 : (y12 : int{((y12) > (x12))});
x13 : (x13 : int{((x13) > (y12))});
y13 : (y13 : int{((y13) > (x13))});
x14 : (x14 : int{((x14) > (y13))});
y14 : (y14 : int{((y14) > (x14))});
x15 : (x15 : int{((x15) > (y14))});
y15 : (y15 : int{((y15) > (x15))});
x16 : (x16 : int{((x16) > (y15))});
y16 : (y16 : int{((y16) > (x16))});
x17 : (x17 : int{((x17) > (y16))});
y17 : (y17 : int{((y17) > (x17))});
x18 : (x18 : int{((x18) > (y17))});
y18 : (y18 : int{((y18) > (x18))});
x19 : (x19 : int{((x19) > (y18))});
}
and state85 = unit
type state44Choice (st: state44) =
| Choice44Bye of unit
| Choice44Ping of int
noeq type callbacksA = {
state44Onsend : (st: state44) -> ML (state44Choice st);
state46OnreceivePong : (st: state46) -> (y0: int{((y0) > (Mkstate46?.x0 st))}) -> ML (unit);
state47OnsendPing : (st: state47) -> ML (x1:int{((x1) > (Mkstate47?.y0 st))});
state48OnreceivePong : (st: state48) -> (y1: int{((y1) > (Mkstate48?.x1 st))}) -> ML (unit);
state49OnsendPing : (st: state49) -> ML (x2:int{((x2) > (Mkstate49?.y1 st))});
state50OnreceivePong : (st: state50) -> (y2: int{((y2) > (Mkstate50?.x2 st))}) -> ML (unit);
state51OnsendPing : (st: state51) -> ML (x3:int{((x3) > (Mkstate51?.y2 st))});
state52OnreceivePong : (st: state52) -> (y3: int{((y3) > (Mkstate52?.x3 st))}) -> ML (unit);
state53OnsendPing : (st: state53) -> ML (x4:int{((x4) > (Mkstate53?.y3 st))});
state54OnreceivePong : (st: state54) -> (y4: int{((y4) > (Mkstate54?.x4 st))}) -> ML (unit);
state55OnsendPing : (st: state55) -> ML (x5:int{((x5) > (Mkstate55?.y4 st))});
state56OnreceivePong : (st: state56) -> (y5: int{((y5) > (Mkstate56?.x5 st))}) -> ML (unit);
state57OnsendPing : (st: state57) -> ML (x6:int{((x6) > (Mkstate57?.y5 st))});
state58OnreceivePong : (st: state58) -> (y6: int{((y6) > (Mkstate58?.x6 st))}) -> ML (unit);
state59OnsendPing : (st: state59) -> ML (x7:int{((x7) > (Mkstate59?.y6 st))});
state60OnreceivePong : (st: state60) -> (y7: int{((y7) > (Mkstate60?.x7 st))}) -> ML (unit);
state61OnsendPing : (st: state61) -> ML (x8:int{((x8) > (Mkstate61?.y7 st))});
state62OnreceivePong : (st: state62) -> (y8: int{((y8) > (Mkstate62?.x8 st))}) -> ML (unit);
state63OnsendPing : (st: state63) -> ML (x9:int{((x9) > (Mkstate63?.y8 st))});
state64OnreceivePong : (st: state64) -> (y9: int{((y9) > (Mkstate64?.x9 st))}) -> ML (unit);
state65OnsendPing : (st: state65) -> ML (x10:int{((x10) > (Mkstate65?.y9 st))});
state66OnreceivePong : (st: state66) -> (y10: int{((y10) > (Mkstate66?.x10 st))}) -> ML (unit);
state67OnsendPing : (st: state67) -> ML (x11:int{((x11) > (Mkstate67?.y10 st))});
state68OnreceivePong : (st: state68) -> (y11: int{((y11) > (Mkstate68?.x11 st))}) -> ML (unit);
state69OnsendPing : (st: state69) -> ML (x12:int{((x12) > (Mkstate69?.y11 st))});
state70OnreceivePong : (st: state70) -> (y12: int{((y12) > (Mkstate70?.x12 st))}) -> ML (unit);
state71OnsendPing : (st: state71) -> ML (x13:int{((x13) > (Mkstate71?.y12 st))});
state72OnreceivePong : (st: state72) -> (y13: int{((y13) > (Mkstate72?.x13 st))}) -> ML (unit);
state73OnsendPing : (st: state73) -> ML (x14:int{((x14) > (Mkstate73?.y13 st))});
state74OnreceivePong : (st: state74) -> (y14: int{((y14) > (Mkstate74?.x14 st))}) -> ML (unit);
state75OnsendPing : (st: state75) -> ML (x15:int{((x15) > (Mkstate75?.y14 st))});
state76OnreceivePong : (st: state76) -> (y15: int{((y15) > (Mkstate76?.x15 st))}) -> ML (unit);
state77OnsendPing : (st: state77) -> ML (x16:int{((x16) > (Mkstate77?.y15 st))});
state78OnreceivePong : (st: state78) -> (y16: int{((y16) > (Mkstate78?.x16 st))}) -> ML (unit);
state79OnsendPing : (st: state79) -> ML (x17:int{((x17) > (Mkstate79?.y16 st))});
state80OnreceivePong : (st: state80) -> (y17: int{((y17) > (Mkstate80?.x17 st))}) -> ML (unit);
state81OnsendPing : (st: state81) -> ML (x18:int{((x18) > (Mkstate81?.y17 st))});
state82OnreceivePong : (st: state82) -> (y18: int{((y18) > (Mkstate82?.x18 st))}) -> ML (unit);
state83OnsendPing : (st: state83) -> ML (x19:int{((x19) > (Mkstate83?.y18 st))});
state84OnreceivePong : (st: state84) -> (y19: int{((y19) > (Mkstate84?.x19 st))}) -> ML (unit);
state85OnreceiveBye : (st: state85) -> ML (unit);
}
noeq type communications = {
    send_int : role -> int -> ML unit;
    send_string : role -> string -> ML unit;
    send_unit : role -> unit -> ML unit;
    recv_int : role -> unit -> ML int;
    recv_string : role -> unit -> ML string;
    recv_unit : role -> unit -> ML unit;
}
let run (callbacks : callbacksA) (comms : communications) : ML unit =
let rec runState44 (st: state44) : ML unit =
let label = callbacks.state44Onsend st in
match label with
| Choice44Bye _dummy ->
comms.send_string B "Bye";
comms.send_unit B _dummy;
let st : state85 = ()
in
runState85 st
| Choice44Ping x0 ->
comms.send_string B "Ping";
comms.send_int B x0;
let st : state46 = {
_dumstate46 = ();
x0 = x0;
}
in
runState46 st
and runState45 (st: state45) : ML unit =
()
and runState46 (st: state46) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y0 = comms.recv_int B () in
assume (((y0) > (Mkstate46?.x0 st)));
callbacks.state46OnreceivePong st y0;
let st : state47 = {
_dumstate47 = ();
x0 = (Mkstate46?.x0 st);
y0 = y0;
}
in
runState47 st
| _ -> unexpected "unexpected label"
and runState47 (st: state47) : ML unit =
comms.send_string B "Ping";
let x1 = callbacks.state47OnsendPing st in
comms.send_int B x1;
let st : state48 = {
_dumstate48 = ();
x0 = (Mkstate47?.x0 st);
y0 = (Mkstate47?.y0 st);
x1 = x1;
}
in
runState48 st
and runState48 (st: state48) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y1 = comms.recv_int B () in
assume (((y1) > (Mkstate48?.x1 st)));
callbacks.state48OnreceivePong st y1;
let st : state49 = {
_dumstate49 = ();
x0 = (Mkstate48?.x0 st);
y0 = (Mkstate48?.y0 st);
x1 = (Mkstate48?.x1 st);
y1 = y1;
}
in
runState49 st
| _ -> unexpected "unexpected label"
and runState49 (st: state49) : ML unit =
comms.send_string B "Ping";
let x2 = callbacks.state49OnsendPing st in
comms.send_int B x2;
let st : state50 = {
_dumstate50 = ();
x0 = (Mkstate49?.x0 st);
y0 = (Mkstate49?.y0 st);
x1 = (Mkstate49?.x1 st);
y1 = (Mkstate49?.y1 st);
x2 = x2;
}
in
runState50 st
and runState50 (st: state50) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y2 = comms.recv_int B () in
assume (((y2) > (Mkstate50?.x2 st)));
callbacks.state50OnreceivePong st y2;
let st : state51 = {
_dumstate51 = ();
x0 = (Mkstate50?.x0 st);
y0 = (Mkstate50?.y0 st);
x1 = (Mkstate50?.x1 st);
y1 = (Mkstate50?.y1 st);
x2 = (Mkstate50?.x2 st);
y2 = y2;
}
in
runState51 st
| _ -> unexpected "unexpected label"
and runState51 (st: state51) : ML unit =
comms.send_string B "Ping";
let x3 = callbacks.state51OnsendPing st in
comms.send_int B x3;
let st : state52 = {
_dumstate52 = ();
x0 = (Mkstate51?.x0 st);
y0 = (Mkstate51?.y0 st);
x1 = (Mkstate51?.x1 st);
y1 = (Mkstate51?.y1 st);
x2 = (Mkstate51?.x2 st);
y2 = (Mkstate51?.y2 st);
x3 = x3;
}
in
runState52 st
and runState52 (st: state52) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y3 = comms.recv_int B () in
assume (((y3) > (Mkstate52?.x3 st)));
callbacks.state52OnreceivePong st y3;
let st : state53 = {
_dumstate53 = ();
x0 = (Mkstate52?.x0 st);
y0 = (Mkstate52?.y0 st);
x1 = (Mkstate52?.x1 st);
y1 = (Mkstate52?.y1 st);
x2 = (Mkstate52?.x2 st);
y2 = (Mkstate52?.y2 st);
x3 = (Mkstate52?.x3 st);
y3 = y3;
}
in
runState53 st
| _ -> unexpected "unexpected label"
and runState53 (st: state53) : ML unit =
comms.send_string B "Ping";
let x4 = callbacks.state53OnsendPing st in
comms.send_int B x4;
let st : state54 = {
_dumstate54 = ();
x0 = (Mkstate53?.x0 st);
y0 = (Mkstate53?.y0 st);
x1 = (Mkstate53?.x1 st);
y1 = (Mkstate53?.y1 st);
x2 = (Mkstate53?.x2 st);
y2 = (Mkstate53?.y2 st);
x3 = (Mkstate53?.x3 st);
y3 = (Mkstate53?.y3 st);
x4 = x4;
}
in
runState54 st
and runState54 (st: state54) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y4 = comms.recv_int B () in
assume (((y4) > (Mkstate54?.x4 st)));
callbacks.state54OnreceivePong st y4;
let st : state55 = {
_dumstate55 = ();
x0 = (Mkstate54?.x0 st);
y0 = (Mkstate54?.y0 st);
x1 = (Mkstate54?.x1 st);
y1 = (Mkstate54?.y1 st);
x2 = (Mkstate54?.x2 st);
y2 = (Mkstate54?.y2 st);
x3 = (Mkstate54?.x3 st);
y3 = (Mkstate54?.y3 st);
x4 = (Mkstate54?.x4 st);
y4 = y4;
}
in
runState55 st
| _ -> unexpected "unexpected label"
and runState55 (st: state55) : ML unit =
comms.send_string B "Ping";
let x5 = callbacks.state55OnsendPing st in
comms.send_int B x5;
let st : state56 = {
_dumstate56 = ();
x0 = (Mkstate55?.x0 st);
y0 = (Mkstate55?.y0 st);
x1 = (Mkstate55?.x1 st);
y1 = (Mkstate55?.y1 st);
x2 = (Mkstate55?.x2 st);
y2 = (Mkstate55?.y2 st);
x3 = (Mkstate55?.x3 st);
y3 = (Mkstate55?.y3 st);
x4 = (Mkstate55?.x4 st);
y4 = (Mkstate55?.y4 st);
x5 = x5;
}
in
runState56 st
and runState56 (st: state56) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y5 = comms.recv_int B () in
assume (((y5) > (Mkstate56?.x5 st)));
callbacks.state56OnreceivePong st y5;
let st : state57 = {
_dumstate57 = ();
x0 = (Mkstate56?.x0 st);
y0 = (Mkstate56?.y0 st);
x1 = (Mkstate56?.x1 st);
y1 = (Mkstate56?.y1 st);
x2 = (Mkstate56?.x2 st);
y2 = (Mkstate56?.y2 st);
x3 = (Mkstate56?.x3 st);
y3 = (Mkstate56?.y3 st);
x4 = (Mkstate56?.x4 st);
y4 = (Mkstate56?.y4 st);
x5 = (Mkstate56?.x5 st);
y5 = y5;
}
in
runState57 st
| _ -> unexpected "unexpected label"
and runState57 (st: state57) : ML unit =
comms.send_string B "Ping";
let x6 = callbacks.state57OnsendPing st in
comms.send_int B x6;
let st : state58 = {
_dumstate58 = ();
x0 = (Mkstate57?.x0 st);
y0 = (Mkstate57?.y0 st);
x1 = (Mkstate57?.x1 st);
y1 = (Mkstate57?.y1 st);
x2 = (Mkstate57?.x2 st);
y2 = (Mkstate57?.y2 st);
x3 = (Mkstate57?.x3 st);
y3 = (Mkstate57?.y3 st);
x4 = (Mkstate57?.x4 st);
y4 = (Mkstate57?.y4 st);
x5 = (Mkstate57?.x5 st);
y5 = (Mkstate57?.y5 st);
x6 = x6;
}
in
runState58 st
and runState58 (st: state58) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y6 = comms.recv_int B () in
assume (((y6) > (Mkstate58?.x6 st)));
callbacks.state58OnreceivePong st y6;
let st : state59 = {
_dumstate59 = ();
x0 = (Mkstate58?.x0 st);
y0 = (Mkstate58?.y0 st);
x1 = (Mkstate58?.x1 st);
y1 = (Mkstate58?.y1 st);
x2 = (Mkstate58?.x2 st);
y2 = (Mkstate58?.y2 st);
x3 = (Mkstate58?.x3 st);
y3 = (Mkstate58?.y3 st);
x4 = (Mkstate58?.x4 st);
y4 = (Mkstate58?.y4 st);
x5 = (Mkstate58?.x5 st);
y5 = (Mkstate58?.y5 st);
x6 = (Mkstate58?.x6 st);
y6 = y6;
}
in
runState59 st
| _ -> unexpected "unexpected label"
and runState59 (st: state59) : ML unit =
comms.send_string B "Ping";
let x7 = callbacks.state59OnsendPing st in
comms.send_int B x7;
let st : state60 = {
_dumstate60 = ();
x0 = (Mkstate59?.x0 st);
y0 = (Mkstate59?.y0 st);
x1 = (Mkstate59?.x1 st);
y1 = (Mkstate59?.y1 st);
x2 = (Mkstate59?.x2 st);
y2 = (Mkstate59?.y2 st);
x3 = (Mkstate59?.x3 st);
y3 = (Mkstate59?.y3 st);
x4 = (Mkstate59?.x4 st);
y4 = (Mkstate59?.y4 st);
x5 = (Mkstate59?.x5 st);
y5 = (Mkstate59?.y5 st);
x6 = (Mkstate59?.x6 st);
y6 = (Mkstate59?.y6 st);
x7 = x7;
}
in
runState60 st
and runState60 (st: state60) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y7 = comms.recv_int B () in
assume (((y7) > (Mkstate60?.x7 st)));
callbacks.state60OnreceivePong st y7;
let st : state61 = {
_dumstate61 = ();
x0 = (Mkstate60?.x0 st);
y0 = (Mkstate60?.y0 st);
x1 = (Mkstate60?.x1 st);
y1 = (Mkstate60?.y1 st);
x2 = (Mkstate60?.x2 st);
y2 = (Mkstate60?.y2 st);
x3 = (Mkstate60?.x3 st);
y3 = (Mkstate60?.y3 st);
x4 = (Mkstate60?.x4 st);
y4 = (Mkstate60?.y4 st);
x5 = (Mkstate60?.x5 st);
y5 = (Mkstate60?.y5 st);
x6 = (Mkstate60?.x6 st);
y6 = (Mkstate60?.y6 st);
x7 = (Mkstate60?.x7 st);
y7 = y7;
}
in
runState61 st
| _ -> unexpected "unexpected label"
and runState61 (st: state61) : ML unit =
comms.send_string B "Ping";
let x8 = callbacks.state61OnsendPing st in
comms.send_int B x8;
let st : state62 = {
_dumstate62 = ();
x0 = (Mkstate61?.x0 st);
y0 = (Mkstate61?.y0 st);
x1 = (Mkstate61?.x1 st);
y1 = (Mkstate61?.y1 st);
x2 = (Mkstate61?.x2 st);
y2 = (Mkstate61?.y2 st);
x3 = (Mkstate61?.x3 st);
y3 = (Mkstate61?.y3 st);
x4 = (Mkstate61?.x4 st);
y4 = (Mkstate61?.y4 st);
x5 = (Mkstate61?.x5 st);
y5 = (Mkstate61?.y5 st);
x6 = (Mkstate61?.x6 st);
y6 = (Mkstate61?.y6 st);
x7 = (Mkstate61?.x7 st);
y7 = (Mkstate61?.y7 st);
x8 = x8;
}
in
runState62 st
and runState62 (st: state62) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y8 = comms.recv_int B () in
assume (((y8) > (Mkstate62?.x8 st)));
callbacks.state62OnreceivePong st y8;
let st : state63 = {
_dumstate63 = ();
x0 = (Mkstate62?.x0 st);
y0 = (Mkstate62?.y0 st);
x1 = (Mkstate62?.x1 st);
y1 = (Mkstate62?.y1 st);
x2 = (Mkstate62?.x2 st);
y2 = (Mkstate62?.y2 st);
x3 = (Mkstate62?.x3 st);
y3 = (Mkstate62?.y3 st);
x4 = (Mkstate62?.x4 st);
y4 = (Mkstate62?.y4 st);
x5 = (Mkstate62?.x5 st);
y5 = (Mkstate62?.y5 st);
x6 = (Mkstate62?.x6 st);
y6 = (Mkstate62?.y6 st);
x7 = (Mkstate62?.x7 st);
y7 = (Mkstate62?.y7 st);
x8 = (Mkstate62?.x8 st);
y8 = y8;
}
in
runState63 st
| _ -> unexpected "unexpected label"
and runState63 (st: state63) : ML unit =
comms.send_string B "Ping";
let x9 = callbacks.state63OnsendPing st in
comms.send_int B x9;
let st : state64 = {
_dumstate64 = ();
x0 = (Mkstate63?.x0 st);
y0 = (Mkstate63?.y0 st);
x1 = (Mkstate63?.x1 st);
y1 = (Mkstate63?.y1 st);
x2 = (Mkstate63?.x2 st);
y2 = (Mkstate63?.y2 st);
x3 = (Mkstate63?.x3 st);
y3 = (Mkstate63?.y3 st);
x4 = (Mkstate63?.x4 st);
y4 = (Mkstate63?.y4 st);
x5 = (Mkstate63?.x5 st);
y5 = (Mkstate63?.y5 st);
x6 = (Mkstate63?.x6 st);
y6 = (Mkstate63?.y6 st);
x7 = (Mkstate63?.x7 st);
y7 = (Mkstate63?.y7 st);
x8 = (Mkstate63?.x8 st);
y8 = (Mkstate63?.y8 st);
x9 = x9;
}
in
runState64 st
and runState64 (st: state64) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y9 = comms.recv_int B () in
assume (((y9) > (Mkstate64?.x9 st)));
callbacks.state64OnreceivePong st y9;
let st : state65 = {
_dumstate65 = ();
x0 = (Mkstate64?.x0 st);
y0 = (Mkstate64?.y0 st);
x1 = (Mkstate64?.x1 st);
y1 = (Mkstate64?.y1 st);
x2 = (Mkstate64?.x2 st);
y2 = (Mkstate64?.y2 st);
x3 = (Mkstate64?.x3 st);
y3 = (Mkstate64?.y3 st);
x4 = (Mkstate64?.x4 st);
y4 = (Mkstate64?.y4 st);
x5 = (Mkstate64?.x5 st);
y5 = (Mkstate64?.y5 st);
x6 = (Mkstate64?.x6 st);
y6 = (Mkstate64?.y6 st);
x7 = (Mkstate64?.x7 st);
y7 = (Mkstate64?.y7 st);
x8 = (Mkstate64?.x8 st);
y8 = (Mkstate64?.y8 st);
x9 = (Mkstate64?.x9 st);
y9 = y9;
}
in
runState65 st
| _ -> unexpected "unexpected label"
and runState65 (st: state65) : ML unit =
comms.send_string B "Ping";
let x10 = callbacks.state65OnsendPing st in
comms.send_int B x10;
let st : state66 = {
_dumstate66 = ();
x0 = (Mkstate65?.x0 st);
y0 = (Mkstate65?.y0 st);
x1 = (Mkstate65?.x1 st);
y1 = (Mkstate65?.y1 st);
x2 = (Mkstate65?.x2 st);
y2 = (Mkstate65?.y2 st);
x3 = (Mkstate65?.x3 st);
y3 = (Mkstate65?.y3 st);
x4 = (Mkstate65?.x4 st);
y4 = (Mkstate65?.y4 st);
x5 = (Mkstate65?.x5 st);
y5 = (Mkstate65?.y5 st);
x6 = (Mkstate65?.x6 st);
y6 = (Mkstate65?.y6 st);
x7 = (Mkstate65?.x7 st);
y7 = (Mkstate65?.y7 st);
x8 = (Mkstate65?.x8 st);
y8 = (Mkstate65?.y8 st);
x9 = (Mkstate65?.x9 st);
y9 = (Mkstate65?.y9 st);
x10 = x10;
}
in
runState66 st
and runState66 (st: state66) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y10 = comms.recv_int B () in
assume (((y10) > (Mkstate66?.x10 st)));
callbacks.state66OnreceivePong st y10;
let st : state67 = {
_dumstate67 = ();
x0 = (Mkstate66?.x0 st);
y0 = (Mkstate66?.y0 st);
x1 = (Mkstate66?.x1 st);
y1 = (Mkstate66?.y1 st);
x2 = (Mkstate66?.x2 st);
y2 = (Mkstate66?.y2 st);
x3 = (Mkstate66?.x3 st);
y3 = (Mkstate66?.y3 st);
x4 = (Mkstate66?.x4 st);
y4 = (Mkstate66?.y4 st);
x5 = (Mkstate66?.x5 st);
y5 = (Mkstate66?.y5 st);
x6 = (Mkstate66?.x6 st);
y6 = (Mkstate66?.y6 st);
x7 = (Mkstate66?.x7 st);
y7 = (Mkstate66?.y7 st);
x8 = (Mkstate66?.x8 st);
y8 = (Mkstate66?.y8 st);
x9 = (Mkstate66?.x9 st);
y9 = (Mkstate66?.y9 st);
x10 = (Mkstate66?.x10 st);
y10 = y10;
}
in
runState67 st
| _ -> unexpected "unexpected label"
and runState67 (st: state67) : ML unit =
comms.send_string B "Ping";
let x11 = callbacks.state67OnsendPing st in
comms.send_int B x11;
let st : state68 = {
_dumstate68 = ();
x0 = (Mkstate67?.x0 st);
y0 = (Mkstate67?.y0 st);
x1 = (Mkstate67?.x1 st);
y1 = (Mkstate67?.y1 st);
x2 = (Mkstate67?.x2 st);
y2 = (Mkstate67?.y2 st);
x3 = (Mkstate67?.x3 st);
y3 = (Mkstate67?.y3 st);
x4 = (Mkstate67?.x4 st);
y4 = (Mkstate67?.y4 st);
x5 = (Mkstate67?.x5 st);
y5 = (Mkstate67?.y5 st);
x6 = (Mkstate67?.x6 st);
y6 = (Mkstate67?.y6 st);
x7 = (Mkstate67?.x7 st);
y7 = (Mkstate67?.y7 st);
x8 = (Mkstate67?.x8 st);
y8 = (Mkstate67?.y8 st);
x9 = (Mkstate67?.x9 st);
y9 = (Mkstate67?.y9 st);
x10 = (Mkstate67?.x10 st);
y10 = (Mkstate67?.y10 st);
x11 = x11;
}
in
runState68 st
and runState68 (st: state68) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y11 = comms.recv_int B () in
assume (((y11) > (Mkstate68?.x11 st)));
callbacks.state68OnreceivePong st y11;
let st : state69 = {
_dumstate69 = ();
x0 = (Mkstate68?.x0 st);
y0 = (Mkstate68?.y0 st);
x1 = (Mkstate68?.x1 st);
y1 = (Mkstate68?.y1 st);
x2 = (Mkstate68?.x2 st);
y2 = (Mkstate68?.y2 st);
x3 = (Mkstate68?.x3 st);
y3 = (Mkstate68?.y3 st);
x4 = (Mkstate68?.x4 st);
y4 = (Mkstate68?.y4 st);
x5 = (Mkstate68?.x5 st);
y5 = (Mkstate68?.y5 st);
x6 = (Mkstate68?.x6 st);
y6 = (Mkstate68?.y6 st);
x7 = (Mkstate68?.x7 st);
y7 = (Mkstate68?.y7 st);
x8 = (Mkstate68?.x8 st);
y8 = (Mkstate68?.y8 st);
x9 = (Mkstate68?.x9 st);
y9 = (Mkstate68?.y9 st);
x10 = (Mkstate68?.x10 st);
y10 = (Mkstate68?.y10 st);
x11 = (Mkstate68?.x11 st);
y11 = y11;
}
in
runState69 st
| _ -> unexpected "unexpected label"
and runState69 (st: state69) : ML unit =
comms.send_string B "Ping";
let x12 = callbacks.state69OnsendPing st in
comms.send_int B x12;
let st : state70 = {
_dumstate70 = ();
x0 = (Mkstate69?.x0 st);
y0 = (Mkstate69?.y0 st);
x1 = (Mkstate69?.x1 st);
y1 = (Mkstate69?.y1 st);
x2 = (Mkstate69?.x2 st);
y2 = (Mkstate69?.y2 st);
x3 = (Mkstate69?.x3 st);
y3 = (Mkstate69?.y3 st);
x4 = (Mkstate69?.x4 st);
y4 = (Mkstate69?.y4 st);
x5 = (Mkstate69?.x5 st);
y5 = (Mkstate69?.y5 st);
x6 = (Mkstate69?.x6 st);
y6 = (Mkstate69?.y6 st);
x7 = (Mkstate69?.x7 st);
y7 = (Mkstate69?.y7 st);
x8 = (Mkstate69?.x8 st);
y8 = (Mkstate69?.y8 st);
x9 = (Mkstate69?.x9 st);
y9 = (Mkstate69?.y9 st);
x10 = (Mkstate69?.x10 st);
y10 = (Mkstate69?.y10 st);
x11 = (Mkstate69?.x11 st);
y11 = (Mkstate69?.y11 st);
x12 = x12;
}
in
runState70 st
and runState70 (st: state70) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y12 = comms.recv_int B () in
assume (((y12) > (Mkstate70?.x12 st)));
callbacks.state70OnreceivePong st y12;
let st : state71 = {
_dumstate71 = ();
x0 = (Mkstate70?.x0 st);
y0 = (Mkstate70?.y0 st);
x1 = (Mkstate70?.x1 st);
y1 = (Mkstate70?.y1 st);
x2 = (Mkstate70?.x2 st);
y2 = (Mkstate70?.y2 st);
x3 = (Mkstate70?.x3 st);
y3 = (Mkstate70?.y3 st);
x4 = (Mkstate70?.x4 st);
y4 = (Mkstate70?.y4 st);
x5 = (Mkstate70?.x5 st);
y5 = (Mkstate70?.y5 st);
x6 = (Mkstate70?.x6 st);
y6 = (Mkstate70?.y6 st);
x7 = (Mkstate70?.x7 st);
y7 = (Mkstate70?.y7 st);
x8 = (Mkstate70?.x8 st);
y8 = (Mkstate70?.y8 st);
x9 = (Mkstate70?.x9 st);
y9 = (Mkstate70?.y9 st);
x10 = (Mkstate70?.x10 st);
y10 = (Mkstate70?.y10 st);
x11 = (Mkstate70?.x11 st);
y11 = (Mkstate70?.y11 st);
x12 = (Mkstate70?.x12 st);
y12 = y12;
}
in
runState71 st
| _ -> unexpected "unexpected label"
and runState71 (st: state71) : ML unit =
comms.send_string B "Ping";
let x13 = callbacks.state71OnsendPing st in
comms.send_int B x13;
let st : state72 = {
_dumstate72 = ();
x0 = (Mkstate71?.x0 st);
y0 = (Mkstate71?.y0 st);
x1 = (Mkstate71?.x1 st);
y1 = (Mkstate71?.y1 st);
x2 = (Mkstate71?.x2 st);
y2 = (Mkstate71?.y2 st);
x3 = (Mkstate71?.x3 st);
y3 = (Mkstate71?.y3 st);
x4 = (Mkstate71?.x4 st);
y4 = (Mkstate71?.y4 st);
x5 = (Mkstate71?.x5 st);
y5 = (Mkstate71?.y5 st);
x6 = (Mkstate71?.x6 st);
y6 = (Mkstate71?.y6 st);
x7 = (Mkstate71?.x7 st);
y7 = (Mkstate71?.y7 st);
x8 = (Mkstate71?.x8 st);
y8 = (Mkstate71?.y8 st);
x9 = (Mkstate71?.x9 st);
y9 = (Mkstate71?.y9 st);
x10 = (Mkstate71?.x10 st);
y10 = (Mkstate71?.y10 st);
x11 = (Mkstate71?.x11 st);
y11 = (Mkstate71?.y11 st);
x12 = (Mkstate71?.x12 st);
y12 = (Mkstate71?.y12 st);
x13 = x13;
}
in
runState72 st
and runState72 (st: state72) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y13 = comms.recv_int B () in
assume (((y13) > (Mkstate72?.x13 st)));
callbacks.state72OnreceivePong st y13;
let st : state73 = {
_dumstate73 = ();
x0 = (Mkstate72?.x0 st);
y0 = (Mkstate72?.y0 st);
x1 = (Mkstate72?.x1 st);
y1 = (Mkstate72?.y1 st);
x2 = (Mkstate72?.x2 st);
y2 = (Mkstate72?.y2 st);
x3 = (Mkstate72?.x3 st);
y3 = (Mkstate72?.y3 st);
x4 = (Mkstate72?.x4 st);
y4 = (Mkstate72?.y4 st);
x5 = (Mkstate72?.x5 st);
y5 = (Mkstate72?.y5 st);
x6 = (Mkstate72?.x6 st);
y6 = (Mkstate72?.y6 st);
x7 = (Mkstate72?.x7 st);
y7 = (Mkstate72?.y7 st);
x8 = (Mkstate72?.x8 st);
y8 = (Mkstate72?.y8 st);
x9 = (Mkstate72?.x9 st);
y9 = (Mkstate72?.y9 st);
x10 = (Mkstate72?.x10 st);
y10 = (Mkstate72?.y10 st);
x11 = (Mkstate72?.x11 st);
y11 = (Mkstate72?.y11 st);
x12 = (Mkstate72?.x12 st);
y12 = (Mkstate72?.y12 st);
x13 = (Mkstate72?.x13 st);
y13 = y13;
}
in
runState73 st
| _ -> unexpected "unexpected label"
and runState73 (st: state73) : ML unit =
comms.send_string B "Ping";
let x14 = callbacks.state73OnsendPing st in
comms.send_int B x14;
let st : state74 = {
_dumstate74 = ();
x0 = (Mkstate73?.x0 st);
y0 = (Mkstate73?.y0 st);
x1 = (Mkstate73?.x1 st);
y1 = (Mkstate73?.y1 st);
x2 = (Mkstate73?.x2 st);
y2 = (Mkstate73?.y2 st);
x3 = (Mkstate73?.x3 st);
y3 = (Mkstate73?.y3 st);
x4 = (Mkstate73?.x4 st);
y4 = (Mkstate73?.y4 st);
x5 = (Mkstate73?.x5 st);
y5 = (Mkstate73?.y5 st);
x6 = (Mkstate73?.x6 st);
y6 = (Mkstate73?.y6 st);
x7 = (Mkstate73?.x7 st);
y7 = (Mkstate73?.y7 st);
x8 = (Mkstate73?.x8 st);
y8 = (Mkstate73?.y8 st);
x9 = (Mkstate73?.x9 st);
y9 = (Mkstate73?.y9 st);
x10 = (Mkstate73?.x10 st);
y10 = (Mkstate73?.y10 st);
x11 = (Mkstate73?.x11 st);
y11 = (Mkstate73?.y11 st);
x12 = (Mkstate73?.x12 st);
y12 = (Mkstate73?.y12 st);
x13 = (Mkstate73?.x13 st);
y13 = (Mkstate73?.y13 st);
x14 = x14;
}
in
runState74 st
and runState74 (st: state74) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y14 = comms.recv_int B () in
assume (((y14) > (Mkstate74?.x14 st)));
callbacks.state74OnreceivePong st y14;
let st : state75 = {
_dumstate75 = ();
x0 = (Mkstate74?.x0 st);
y0 = (Mkstate74?.y0 st);
x1 = (Mkstate74?.x1 st);
y1 = (Mkstate74?.y1 st);
x2 = (Mkstate74?.x2 st);
y2 = (Mkstate74?.y2 st);
x3 = (Mkstate74?.x3 st);
y3 = (Mkstate74?.y3 st);
x4 = (Mkstate74?.x4 st);
y4 = (Mkstate74?.y4 st);
x5 = (Mkstate74?.x5 st);
y5 = (Mkstate74?.y5 st);
x6 = (Mkstate74?.x6 st);
y6 = (Mkstate74?.y6 st);
x7 = (Mkstate74?.x7 st);
y7 = (Mkstate74?.y7 st);
x8 = (Mkstate74?.x8 st);
y8 = (Mkstate74?.y8 st);
x9 = (Mkstate74?.x9 st);
y9 = (Mkstate74?.y9 st);
x10 = (Mkstate74?.x10 st);
y10 = (Mkstate74?.y10 st);
x11 = (Mkstate74?.x11 st);
y11 = (Mkstate74?.y11 st);
x12 = (Mkstate74?.x12 st);
y12 = (Mkstate74?.y12 st);
x13 = (Mkstate74?.x13 st);
y13 = (Mkstate74?.y13 st);
x14 = (Mkstate74?.x14 st);
y14 = y14;
}
in
runState75 st
| _ -> unexpected "unexpected label"
and runState75 (st: state75) : ML unit =
comms.send_string B "Ping";
let x15 = callbacks.state75OnsendPing st in
comms.send_int B x15;
let st : state76 = {
_dumstate76 = ();
x0 = (Mkstate75?.x0 st);
y0 = (Mkstate75?.y0 st);
x1 = (Mkstate75?.x1 st);
y1 = (Mkstate75?.y1 st);
x2 = (Mkstate75?.x2 st);
y2 = (Mkstate75?.y2 st);
x3 = (Mkstate75?.x3 st);
y3 = (Mkstate75?.y3 st);
x4 = (Mkstate75?.x4 st);
y4 = (Mkstate75?.y4 st);
x5 = (Mkstate75?.x5 st);
y5 = (Mkstate75?.y5 st);
x6 = (Mkstate75?.x6 st);
y6 = (Mkstate75?.y6 st);
x7 = (Mkstate75?.x7 st);
y7 = (Mkstate75?.y7 st);
x8 = (Mkstate75?.x8 st);
y8 = (Mkstate75?.y8 st);
x9 = (Mkstate75?.x9 st);
y9 = (Mkstate75?.y9 st);
x10 = (Mkstate75?.x10 st);
y10 = (Mkstate75?.y10 st);
x11 = (Mkstate75?.x11 st);
y11 = (Mkstate75?.y11 st);
x12 = (Mkstate75?.x12 st);
y12 = (Mkstate75?.y12 st);
x13 = (Mkstate75?.x13 st);
y13 = (Mkstate75?.y13 st);
x14 = (Mkstate75?.x14 st);
y14 = (Mkstate75?.y14 st);
x15 = x15;
}
in
runState76 st
and runState76 (st: state76) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y15 = comms.recv_int B () in
assume (((y15) > (Mkstate76?.x15 st)));
callbacks.state76OnreceivePong st y15;
let st : state77 = {
_dumstate77 = ();
x0 = (Mkstate76?.x0 st);
y0 = (Mkstate76?.y0 st);
x1 = (Mkstate76?.x1 st);
y1 = (Mkstate76?.y1 st);
x2 = (Mkstate76?.x2 st);
y2 = (Mkstate76?.y2 st);
x3 = (Mkstate76?.x3 st);
y3 = (Mkstate76?.y3 st);
x4 = (Mkstate76?.x4 st);
y4 = (Mkstate76?.y4 st);
x5 = (Mkstate76?.x5 st);
y5 = (Mkstate76?.y5 st);
x6 = (Mkstate76?.x6 st);
y6 = (Mkstate76?.y6 st);
x7 = (Mkstate76?.x7 st);
y7 = (Mkstate76?.y7 st);
x8 = (Mkstate76?.x8 st);
y8 = (Mkstate76?.y8 st);
x9 = (Mkstate76?.x9 st);
y9 = (Mkstate76?.y9 st);
x10 = (Mkstate76?.x10 st);
y10 = (Mkstate76?.y10 st);
x11 = (Mkstate76?.x11 st);
y11 = (Mkstate76?.y11 st);
x12 = (Mkstate76?.x12 st);
y12 = (Mkstate76?.y12 st);
x13 = (Mkstate76?.x13 st);
y13 = (Mkstate76?.y13 st);
x14 = (Mkstate76?.x14 st);
y14 = (Mkstate76?.y14 st);
x15 = (Mkstate76?.x15 st);
y15 = y15;
}
in
runState77 st
| _ -> unexpected "unexpected label"
and runState77 (st: state77) : ML unit =
comms.send_string B "Ping";
let x16 = callbacks.state77OnsendPing st in
comms.send_int B x16;
let st : state78 = {
_dumstate78 = ();
x0 = (Mkstate77?.x0 st);
y0 = (Mkstate77?.y0 st);
x1 = (Mkstate77?.x1 st);
y1 = (Mkstate77?.y1 st);
x2 = (Mkstate77?.x2 st);
y2 = (Mkstate77?.y2 st);
x3 = (Mkstate77?.x3 st);
y3 = (Mkstate77?.y3 st);
x4 = (Mkstate77?.x4 st);
y4 = (Mkstate77?.y4 st);
x5 = (Mkstate77?.x5 st);
y5 = (Mkstate77?.y5 st);
x6 = (Mkstate77?.x6 st);
y6 = (Mkstate77?.y6 st);
x7 = (Mkstate77?.x7 st);
y7 = (Mkstate77?.y7 st);
x8 = (Mkstate77?.x8 st);
y8 = (Mkstate77?.y8 st);
x9 = (Mkstate77?.x9 st);
y9 = (Mkstate77?.y9 st);
x10 = (Mkstate77?.x10 st);
y10 = (Mkstate77?.y10 st);
x11 = (Mkstate77?.x11 st);
y11 = (Mkstate77?.y11 st);
x12 = (Mkstate77?.x12 st);
y12 = (Mkstate77?.y12 st);
x13 = (Mkstate77?.x13 st);
y13 = (Mkstate77?.y13 st);
x14 = (Mkstate77?.x14 st);
y14 = (Mkstate77?.y14 st);
x15 = (Mkstate77?.x15 st);
y15 = (Mkstate77?.y15 st);
x16 = x16;
}
in
runState78 st
and runState78 (st: state78) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y16 = comms.recv_int B () in
assume (((y16) > (Mkstate78?.x16 st)));
callbacks.state78OnreceivePong st y16;
let st : state79 = {
_dumstate79 = ();
x0 = (Mkstate78?.x0 st);
y0 = (Mkstate78?.y0 st);
x1 = (Mkstate78?.x1 st);
y1 = (Mkstate78?.y1 st);
x2 = (Mkstate78?.x2 st);
y2 = (Mkstate78?.y2 st);
x3 = (Mkstate78?.x3 st);
y3 = (Mkstate78?.y3 st);
x4 = (Mkstate78?.x4 st);
y4 = (Mkstate78?.y4 st);
x5 = (Mkstate78?.x5 st);
y5 = (Mkstate78?.y5 st);
x6 = (Mkstate78?.x6 st);
y6 = (Mkstate78?.y6 st);
x7 = (Mkstate78?.x7 st);
y7 = (Mkstate78?.y7 st);
x8 = (Mkstate78?.x8 st);
y8 = (Mkstate78?.y8 st);
x9 = (Mkstate78?.x9 st);
y9 = (Mkstate78?.y9 st);
x10 = (Mkstate78?.x10 st);
y10 = (Mkstate78?.y10 st);
x11 = (Mkstate78?.x11 st);
y11 = (Mkstate78?.y11 st);
x12 = (Mkstate78?.x12 st);
y12 = (Mkstate78?.y12 st);
x13 = (Mkstate78?.x13 st);
y13 = (Mkstate78?.y13 st);
x14 = (Mkstate78?.x14 st);
y14 = (Mkstate78?.y14 st);
x15 = (Mkstate78?.x15 st);
y15 = (Mkstate78?.y15 st);
x16 = (Mkstate78?.x16 st);
y16 = y16;
}
in
runState79 st
| _ -> unexpected "unexpected label"
and runState79 (st: state79) : ML unit =
comms.send_string B "Ping";
let x17 = callbacks.state79OnsendPing st in
comms.send_int B x17;
let st : state80 = {
_dumstate80 = ();
x0 = (Mkstate79?.x0 st);
y0 = (Mkstate79?.y0 st);
x1 = (Mkstate79?.x1 st);
y1 = (Mkstate79?.y1 st);
x2 = (Mkstate79?.x2 st);
y2 = (Mkstate79?.y2 st);
x3 = (Mkstate79?.x3 st);
y3 = (Mkstate79?.y3 st);
x4 = (Mkstate79?.x4 st);
y4 = (Mkstate79?.y4 st);
x5 = (Mkstate79?.x5 st);
y5 = (Mkstate79?.y5 st);
x6 = (Mkstate79?.x6 st);
y6 = (Mkstate79?.y6 st);
x7 = (Mkstate79?.x7 st);
y7 = (Mkstate79?.y7 st);
x8 = (Mkstate79?.x8 st);
y8 = (Mkstate79?.y8 st);
x9 = (Mkstate79?.x9 st);
y9 = (Mkstate79?.y9 st);
x10 = (Mkstate79?.x10 st);
y10 = (Mkstate79?.y10 st);
x11 = (Mkstate79?.x11 st);
y11 = (Mkstate79?.y11 st);
x12 = (Mkstate79?.x12 st);
y12 = (Mkstate79?.y12 st);
x13 = (Mkstate79?.x13 st);
y13 = (Mkstate79?.y13 st);
x14 = (Mkstate79?.x14 st);
y14 = (Mkstate79?.y14 st);
x15 = (Mkstate79?.x15 st);
y15 = (Mkstate79?.y15 st);
x16 = (Mkstate79?.x16 st);
y16 = (Mkstate79?.y16 st);
x17 = x17;
}
in
runState80 st
and runState80 (st: state80) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y17 = comms.recv_int B () in
assume (((y17) > (Mkstate80?.x17 st)));
callbacks.state80OnreceivePong st y17;
let st : state81 = {
_dumstate81 = ();
x0 = (Mkstate80?.x0 st);
y0 = (Mkstate80?.y0 st);
x1 = (Mkstate80?.x1 st);
y1 = (Mkstate80?.y1 st);
x2 = (Mkstate80?.x2 st);
y2 = (Mkstate80?.y2 st);
x3 = (Mkstate80?.x3 st);
y3 = (Mkstate80?.y3 st);
x4 = (Mkstate80?.x4 st);
y4 = (Mkstate80?.y4 st);
x5 = (Mkstate80?.x5 st);
y5 = (Mkstate80?.y5 st);
x6 = (Mkstate80?.x6 st);
y6 = (Mkstate80?.y6 st);
x7 = (Mkstate80?.x7 st);
y7 = (Mkstate80?.y7 st);
x8 = (Mkstate80?.x8 st);
y8 = (Mkstate80?.y8 st);
x9 = (Mkstate80?.x9 st);
y9 = (Mkstate80?.y9 st);
x10 = (Mkstate80?.x10 st);
y10 = (Mkstate80?.y10 st);
x11 = (Mkstate80?.x11 st);
y11 = (Mkstate80?.y11 st);
x12 = (Mkstate80?.x12 st);
y12 = (Mkstate80?.y12 st);
x13 = (Mkstate80?.x13 st);
y13 = (Mkstate80?.y13 st);
x14 = (Mkstate80?.x14 st);
y14 = (Mkstate80?.y14 st);
x15 = (Mkstate80?.x15 st);
y15 = (Mkstate80?.y15 st);
x16 = (Mkstate80?.x16 st);
y16 = (Mkstate80?.y16 st);
x17 = (Mkstate80?.x17 st);
y17 = y17;
}
in
runState81 st
| _ -> unexpected "unexpected label"
and runState81 (st: state81) : ML unit =
comms.send_string B "Ping";
let x18 = callbacks.state81OnsendPing st in
comms.send_int B x18;
let st : state82 = {
_dumstate82 = ();
x0 = (Mkstate81?.x0 st);
y0 = (Mkstate81?.y0 st);
x1 = (Mkstate81?.x1 st);
y1 = (Mkstate81?.y1 st);
x2 = (Mkstate81?.x2 st);
y2 = (Mkstate81?.y2 st);
x3 = (Mkstate81?.x3 st);
y3 = (Mkstate81?.y3 st);
x4 = (Mkstate81?.x4 st);
y4 = (Mkstate81?.y4 st);
x5 = (Mkstate81?.x5 st);
y5 = (Mkstate81?.y5 st);
x6 = (Mkstate81?.x6 st);
y6 = (Mkstate81?.y6 st);
x7 = (Mkstate81?.x7 st);
y7 = (Mkstate81?.y7 st);
x8 = (Mkstate81?.x8 st);
y8 = (Mkstate81?.y8 st);
x9 = (Mkstate81?.x9 st);
y9 = (Mkstate81?.y9 st);
x10 = (Mkstate81?.x10 st);
y10 = (Mkstate81?.y10 st);
x11 = (Mkstate81?.x11 st);
y11 = (Mkstate81?.y11 st);
x12 = (Mkstate81?.x12 st);
y12 = (Mkstate81?.y12 st);
x13 = (Mkstate81?.x13 st);
y13 = (Mkstate81?.y13 st);
x14 = (Mkstate81?.x14 st);
y14 = (Mkstate81?.y14 st);
x15 = (Mkstate81?.x15 st);
y15 = (Mkstate81?.y15 st);
x16 = (Mkstate81?.x16 st);
y16 = (Mkstate81?.y16 st);
x17 = (Mkstate81?.x17 st);
y17 = (Mkstate81?.y17 st);
x18 = x18;
}
in
runState82 st
and runState82 (st: state82) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y18 = comms.recv_int B () in
assume (((y18) > (Mkstate82?.x18 st)));
callbacks.state82OnreceivePong st y18;
let st : state83 = {
_dumstate83 = ();
x0 = (Mkstate82?.x0 st);
y0 = (Mkstate82?.y0 st);
x1 = (Mkstate82?.x1 st);
y1 = (Mkstate82?.y1 st);
x2 = (Mkstate82?.x2 st);
y2 = (Mkstate82?.y2 st);
x3 = (Mkstate82?.x3 st);
y3 = (Mkstate82?.y3 st);
x4 = (Mkstate82?.x4 st);
y4 = (Mkstate82?.y4 st);
x5 = (Mkstate82?.x5 st);
y5 = (Mkstate82?.y5 st);
x6 = (Mkstate82?.x6 st);
y6 = (Mkstate82?.y6 st);
x7 = (Mkstate82?.x7 st);
y7 = (Mkstate82?.y7 st);
x8 = (Mkstate82?.x8 st);
y8 = (Mkstate82?.y8 st);
x9 = (Mkstate82?.x9 st);
y9 = (Mkstate82?.y9 st);
x10 = (Mkstate82?.x10 st);
y10 = (Mkstate82?.y10 st);
x11 = (Mkstate82?.x11 st);
y11 = (Mkstate82?.y11 st);
x12 = (Mkstate82?.x12 st);
y12 = (Mkstate82?.y12 st);
x13 = (Mkstate82?.x13 st);
y13 = (Mkstate82?.y13 st);
x14 = (Mkstate82?.x14 st);
y14 = (Mkstate82?.y14 st);
x15 = (Mkstate82?.x15 st);
y15 = (Mkstate82?.y15 st);
x16 = (Mkstate82?.x16 st);
y16 = (Mkstate82?.y16 st);
x17 = (Mkstate82?.x17 st);
y17 = (Mkstate82?.y17 st);
x18 = (Mkstate82?.x18 st);
y18 = y18;
}
in
runState83 st
| _ -> unexpected "unexpected label"
and runState83 (st: state83) : ML unit =
comms.send_string B "Ping";
let x19 = callbacks.state83OnsendPing st in
comms.send_int B x19;
let st : state84 = {
_dumstate84 = ();
x0 = (Mkstate83?.x0 st);
y0 = (Mkstate83?.y0 st);
x1 = (Mkstate83?.x1 st);
y1 = (Mkstate83?.y1 st);
x2 = (Mkstate83?.x2 st);
y2 = (Mkstate83?.y2 st);
x3 = (Mkstate83?.x3 st);
y3 = (Mkstate83?.y3 st);
x4 = (Mkstate83?.x4 st);
y4 = (Mkstate83?.y4 st);
x5 = (Mkstate83?.x5 st);
y5 = (Mkstate83?.y5 st);
x6 = (Mkstate83?.x6 st);
y6 = (Mkstate83?.y6 st);
x7 = (Mkstate83?.x7 st);
y7 = (Mkstate83?.y7 st);
x8 = (Mkstate83?.x8 st);
y8 = (Mkstate83?.y8 st);
x9 = (Mkstate83?.x9 st);
y9 = (Mkstate83?.y9 st);
x10 = (Mkstate83?.x10 st);
y10 = (Mkstate83?.y10 st);
x11 = (Mkstate83?.x11 st);
y11 = (Mkstate83?.y11 st);
x12 = (Mkstate83?.x12 st);
y12 = (Mkstate83?.y12 st);
x13 = (Mkstate83?.x13 st);
y13 = (Mkstate83?.y13 st);
x14 = (Mkstate83?.x14 st);
y14 = (Mkstate83?.y14 st);
x15 = (Mkstate83?.x15 st);
y15 = (Mkstate83?.y15 st);
x16 = (Mkstate83?.x16 st);
y16 = (Mkstate83?.y16 st);
x17 = (Mkstate83?.x17 st);
y17 = (Mkstate83?.y17 st);
x18 = (Mkstate83?.x18 st);
y18 = (Mkstate83?.y18 st);
x19 = x19;
}
in
runState84 st
and runState84 (st: state84) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y19 = comms.recv_int B () in
assume (((y19) > (Mkstate84?.x19 st)));
callbacks.state84OnreceivePong st y19;
let st : state44 = ()
in
runState44 st
| _ -> unexpected "unexpected label"
and runState85 (st: state85) : ML unit =
let label = comms.recv_string B () in
match label with
| "Bye" ->
let _dummy = comms.recv_unit B () in
callbacks.state85OnreceiveBye st ;
let st : state45 = ()
in
runState45 st
| _ -> unexpected "unexpected label"
in
let initState : state44 =
()
in
runState44 initState
