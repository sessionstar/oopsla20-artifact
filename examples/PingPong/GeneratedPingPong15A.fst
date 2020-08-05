module GeneratedPingPong15A
(* This file is GENERATED, do not modify manually *)
open FStar.All
open FStar.Error

type role =
| B
type state34 = unit
and state35 = unit
and state36 = {
_dumstate36 : unit;
x0 : int;
}
and state37 = {
_dumstate37 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
}
and state38 = {
_dumstate38 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
}
and state39 = {
_dumstate39 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
}
and state40 = {
_dumstate40 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
}
and state41 = {
_dumstate41 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
}
and state42 = {
_dumstate42 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
}
and state43 = {
_dumstate43 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
}
and state44 = {
_dumstate44 : unit;
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
and state45 = {
_dumstate45 : unit;
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
and state46 = {
_dumstate46 : unit;
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
and state47 = {
_dumstate47 : unit;
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
and state48 = {
_dumstate48 : unit;
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
and state49 = {
_dumstate49 : unit;
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
and state50 = {
_dumstate50 : unit;
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
and state51 = {
_dumstate51 : unit;
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
and state52 = {
_dumstate52 : unit;
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
and state65 = unit
type state34Choice (st: state34) =
| Choice34Bye of unit
| Choice34Ping of int
noeq type callbacksA = {
state34Onsend : (st: state34) -> ML (state34Choice st);
state36OnreceivePong : (st: state36) -> (y0: int{((y0) > (Mkstate36?.x0 st))}) -> ML (unit);
state37OnsendPing : (st: state37) -> ML (x1:int{((x1) > (Mkstate37?.y0 st))});
state38OnreceivePong : (st: state38) -> (y1: int{((y1) > (Mkstate38?.x1 st))}) -> ML (unit);
state39OnsendPing : (st: state39) -> ML (x2:int{((x2) > (Mkstate39?.y1 st))});
state40OnreceivePong : (st: state40) -> (y2: int{((y2) > (Mkstate40?.x2 st))}) -> ML (unit);
state41OnsendPing : (st: state41) -> ML (x3:int{((x3) > (Mkstate41?.y2 st))});
state42OnreceivePong : (st: state42) -> (y3: int{((y3) > (Mkstate42?.x3 st))}) -> ML (unit);
state43OnsendPing : (st: state43) -> ML (x4:int{((x4) > (Mkstate43?.y3 st))});
state44OnreceivePong : (st: state44) -> (y4: int{((y4) > (Mkstate44?.x4 st))}) -> ML (unit);
state45OnsendPing : (st: state45) -> ML (x5:int{((x5) > (Mkstate45?.y4 st))});
state46OnreceivePong : (st: state46) -> (y5: int{((y5) > (Mkstate46?.x5 st))}) -> ML (unit);
state47OnsendPing : (st: state47) -> ML (x6:int{((x6) > (Mkstate47?.y5 st))});
state48OnreceivePong : (st: state48) -> (y6: int{((y6) > (Mkstate48?.x6 st))}) -> ML (unit);
state49OnsendPing : (st: state49) -> ML (x7:int{((x7) > (Mkstate49?.y6 st))});
state50OnreceivePong : (st: state50) -> (y7: int{((y7) > (Mkstate50?.x7 st))}) -> ML (unit);
state51OnsendPing : (st: state51) -> ML (x8:int{((x8) > (Mkstate51?.y7 st))});
state52OnreceivePong : (st: state52) -> (y8: int{((y8) > (Mkstate52?.x8 st))}) -> ML (unit);
state53OnsendPing : (st: state53) -> ML (x9:int{((x9) > (Mkstate53?.y8 st))});
state54OnreceivePong : (st: state54) -> (y9: int{((y9) > (Mkstate54?.x9 st))}) -> ML (unit);
state55OnsendPing : (st: state55) -> ML (x10:int{((x10) > (Mkstate55?.y9 st))});
state56OnreceivePong : (st: state56) -> (y10: int{((y10) > (Mkstate56?.x10 st))}) -> ML (unit);
state57OnsendPing : (st: state57) -> ML (x11:int{((x11) > (Mkstate57?.y10 st))});
state58OnreceivePong : (st: state58) -> (y11: int{((y11) > (Mkstate58?.x11 st))}) -> ML (unit);
state59OnsendPing : (st: state59) -> ML (x12:int{((x12) > (Mkstate59?.y11 st))});
state60OnreceivePong : (st: state60) -> (y12: int{((y12) > (Mkstate60?.x12 st))}) -> ML (unit);
state61OnsendPing : (st: state61) -> ML (x13:int{((x13) > (Mkstate61?.y12 st))});
state62OnreceivePong : (st: state62) -> (y13: int{((y13) > (Mkstate62?.x13 st))}) -> ML (unit);
state63OnsendPing : (st: state63) -> ML (x14:int{((x14) > (Mkstate63?.y13 st))});
state64OnreceivePong : (st: state64) -> (y14: int{((y14) > (Mkstate64?.x14 st))}) -> ML (unit);
state65OnreceiveBye : (st: state65) -> ML (unit);
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
let rec runState34 (st: state34) : ML unit =
let label = callbacks.state34Onsend st in
match label with
| Choice34Bye _dummy ->
comms.send_string B "Bye";
comms.send_unit B _dummy;
let st : state65 = ()
in
runState65 st
| Choice34Ping x0 ->
comms.send_string B "Ping";
comms.send_int B x0;
let st : state36 = {
_dumstate36 = ();
x0 = x0;
}
in
runState36 st
and runState35 (st: state35) : ML unit =
()
and runState36 (st: state36) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y0 = comms.recv_int B () in
assume (((y0) > (Mkstate36?.x0 st)));
callbacks.state36OnreceivePong st y0;
let st : state37 = {
_dumstate37 = ();
x0 = (Mkstate36?.x0 st);
y0 = y0;
}
in
runState37 st
| _ -> unexpected "unexpected label"
and runState37 (st: state37) : ML unit =
comms.send_string B "Ping";
let x1 = callbacks.state37OnsendPing st in
comms.send_int B x1;
let st : state38 = {
_dumstate38 = ();
x0 = (Mkstate37?.x0 st);
y0 = (Mkstate37?.y0 st);
x1 = x1;
}
in
runState38 st
and runState38 (st: state38) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y1 = comms.recv_int B () in
assume (((y1) > (Mkstate38?.x1 st)));
callbacks.state38OnreceivePong st y1;
let st : state39 = {
_dumstate39 = ();
x0 = (Mkstate38?.x0 st);
y0 = (Mkstate38?.y0 st);
x1 = (Mkstate38?.x1 st);
y1 = y1;
}
in
runState39 st
| _ -> unexpected "unexpected label"
and runState39 (st: state39) : ML unit =
comms.send_string B "Ping";
let x2 = callbacks.state39OnsendPing st in
comms.send_int B x2;
let st : state40 = {
_dumstate40 = ();
x0 = (Mkstate39?.x0 st);
y0 = (Mkstate39?.y0 st);
x1 = (Mkstate39?.x1 st);
y1 = (Mkstate39?.y1 st);
x2 = x2;
}
in
runState40 st
and runState40 (st: state40) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y2 = comms.recv_int B () in
assume (((y2) > (Mkstate40?.x2 st)));
callbacks.state40OnreceivePong st y2;
let st : state41 = {
_dumstate41 = ();
x0 = (Mkstate40?.x0 st);
y0 = (Mkstate40?.y0 st);
x1 = (Mkstate40?.x1 st);
y1 = (Mkstate40?.y1 st);
x2 = (Mkstate40?.x2 st);
y2 = y2;
}
in
runState41 st
| _ -> unexpected "unexpected label"
and runState41 (st: state41) : ML unit =
comms.send_string B "Ping";
let x3 = callbacks.state41OnsendPing st in
comms.send_int B x3;
let st : state42 = {
_dumstate42 = ();
x0 = (Mkstate41?.x0 st);
y0 = (Mkstate41?.y0 st);
x1 = (Mkstate41?.x1 st);
y1 = (Mkstate41?.y1 st);
x2 = (Mkstate41?.x2 st);
y2 = (Mkstate41?.y2 st);
x3 = x3;
}
in
runState42 st
and runState42 (st: state42) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y3 = comms.recv_int B () in
assume (((y3) > (Mkstate42?.x3 st)));
callbacks.state42OnreceivePong st y3;
let st : state43 = {
_dumstate43 = ();
x0 = (Mkstate42?.x0 st);
y0 = (Mkstate42?.y0 st);
x1 = (Mkstate42?.x1 st);
y1 = (Mkstate42?.y1 st);
x2 = (Mkstate42?.x2 st);
y2 = (Mkstate42?.y2 st);
x3 = (Mkstate42?.x3 st);
y3 = y3;
}
in
runState43 st
| _ -> unexpected "unexpected label"
and runState43 (st: state43) : ML unit =
comms.send_string B "Ping";
let x4 = callbacks.state43OnsendPing st in
comms.send_int B x4;
let st : state44 = {
_dumstate44 = ();
x0 = (Mkstate43?.x0 st);
y0 = (Mkstate43?.y0 st);
x1 = (Mkstate43?.x1 st);
y1 = (Mkstate43?.y1 st);
x2 = (Mkstate43?.x2 st);
y2 = (Mkstate43?.y2 st);
x3 = (Mkstate43?.x3 st);
y3 = (Mkstate43?.y3 st);
x4 = x4;
}
in
runState44 st
and runState44 (st: state44) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y4 = comms.recv_int B () in
assume (((y4) > (Mkstate44?.x4 st)));
callbacks.state44OnreceivePong st y4;
let st : state45 = {
_dumstate45 = ();
x0 = (Mkstate44?.x0 st);
y0 = (Mkstate44?.y0 st);
x1 = (Mkstate44?.x1 st);
y1 = (Mkstate44?.y1 st);
x2 = (Mkstate44?.x2 st);
y2 = (Mkstate44?.y2 st);
x3 = (Mkstate44?.x3 st);
y3 = (Mkstate44?.y3 st);
x4 = (Mkstate44?.x4 st);
y4 = y4;
}
in
runState45 st
| _ -> unexpected "unexpected label"
and runState45 (st: state45) : ML unit =
comms.send_string B "Ping";
let x5 = callbacks.state45OnsendPing st in
comms.send_int B x5;
let st : state46 = {
_dumstate46 = ();
x0 = (Mkstate45?.x0 st);
y0 = (Mkstate45?.y0 st);
x1 = (Mkstate45?.x1 st);
y1 = (Mkstate45?.y1 st);
x2 = (Mkstate45?.x2 st);
y2 = (Mkstate45?.y2 st);
x3 = (Mkstate45?.x3 st);
y3 = (Mkstate45?.y3 st);
x4 = (Mkstate45?.x4 st);
y4 = (Mkstate45?.y4 st);
x5 = x5;
}
in
runState46 st
and runState46 (st: state46) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y5 = comms.recv_int B () in
assume (((y5) > (Mkstate46?.x5 st)));
callbacks.state46OnreceivePong st y5;
let st : state47 = {
_dumstate47 = ();
x0 = (Mkstate46?.x0 st);
y0 = (Mkstate46?.y0 st);
x1 = (Mkstate46?.x1 st);
y1 = (Mkstate46?.y1 st);
x2 = (Mkstate46?.x2 st);
y2 = (Mkstate46?.y2 st);
x3 = (Mkstate46?.x3 st);
y3 = (Mkstate46?.y3 st);
x4 = (Mkstate46?.x4 st);
y4 = (Mkstate46?.y4 st);
x5 = (Mkstate46?.x5 st);
y5 = y5;
}
in
runState47 st
| _ -> unexpected "unexpected label"
and runState47 (st: state47) : ML unit =
comms.send_string B "Ping";
let x6 = callbacks.state47OnsendPing st in
comms.send_int B x6;
let st : state48 = {
_dumstate48 = ();
x0 = (Mkstate47?.x0 st);
y0 = (Mkstate47?.y0 st);
x1 = (Mkstate47?.x1 st);
y1 = (Mkstate47?.y1 st);
x2 = (Mkstate47?.x2 st);
y2 = (Mkstate47?.y2 st);
x3 = (Mkstate47?.x3 st);
y3 = (Mkstate47?.y3 st);
x4 = (Mkstate47?.x4 st);
y4 = (Mkstate47?.y4 st);
x5 = (Mkstate47?.x5 st);
y5 = (Mkstate47?.y5 st);
x6 = x6;
}
in
runState48 st
and runState48 (st: state48) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y6 = comms.recv_int B () in
assume (((y6) > (Mkstate48?.x6 st)));
callbacks.state48OnreceivePong st y6;
let st : state49 = {
_dumstate49 = ();
x0 = (Mkstate48?.x0 st);
y0 = (Mkstate48?.y0 st);
x1 = (Mkstate48?.x1 st);
y1 = (Mkstate48?.y1 st);
x2 = (Mkstate48?.x2 st);
y2 = (Mkstate48?.y2 st);
x3 = (Mkstate48?.x3 st);
y3 = (Mkstate48?.y3 st);
x4 = (Mkstate48?.x4 st);
y4 = (Mkstate48?.y4 st);
x5 = (Mkstate48?.x5 st);
y5 = (Mkstate48?.y5 st);
x6 = (Mkstate48?.x6 st);
y6 = y6;
}
in
runState49 st
| _ -> unexpected "unexpected label"
and runState49 (st: state49) : ML unit =
comms.send_string B "Ping";
let x7 = callbacks.state49OnsendPing st in
comms.send_int B x7;
let st : state50 = {
_dumstate50 = ();
x0 = (Mkstate49?.x0 st);
y0 = (Mkstate49?.y0 st);
x1 = (Mkstate49?.x1 st);
y1 = (Mkstate49?.y1 st);
x2 = (Mkstate49?.x2 st);
y2 = (Mkstate49?.y2 st);
x3 = (Mkstate49?.x3 st);
y3 = (Mkstate49?.y3 st);
x4 = (Mkstate49?.x4 st);
y4 = (Mkstate49?.y4 st);
x5 = (Mkstate49?.x5 st);
y5 = (Mkstate49?.y5 st);
x6 = (Mkstate49?.x6 st);
y6 = (Mkstate49?.y6 st);
x7 = x7;
}
in
runState50 st
and runState50 (st: state50) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y7 = comms.recv_int B () in
assume (((y7) > (Mkstate50?.x7 st)));
callbacks.state50OnreceivePong st y7;
let st : state51 = {
_dumstate51 = ();
x0 = (Mkstate50?.x0 st);
y0 = (Mkstate50?.y0 st);
x1 = (Mkstate50?.x1 st);
y1 = (Mkstate50?.y1 st);
x2 = (Mkstate50?.x2 st);
y2 = (Mkstate50?.y2 st);
x3 = (Mkstate50?.x3 st);
y3 = (Mkstate50?.y3 st);
x4 = (Mkstate50?.x4 st);
y4 = (Mkstate50?.y4 st);
x5 = (Mkstate50?.x5 st);
y5 = (Mkstate50?.y5 st);
x6 = (Mkstate50?.x6 st);
y6 = (Mkstate50?.y6 st);
x7 = (Mkstate50?.x7 st);
y7 = y7;
}
in
runState51 st
| _ -> unexpected "unexpected label"
and runState51 (st: state51) : ML unit =
comms.send_string B "Ping";
let x8 = callbacks.state51OnsendPing st in
comms.send_int B x8;
let st : state52 = {
_dumstate52 = ();
x0 = (Mkstate51?.x0 st);
y0 = (Mkstate51?.y0 st);
x1 = (Mkstate51?.x1 st);
y1 = (Mkstate51?.y1 st);
x2 = (Mkstate51?.x2 st);
y2 = (Mkstate51?.y2 st);
x3 = (Mkstate51?.x3 st);
y3 = (Mkstate51?.y3 st);
x4 = (Mkstate51?.x4 st);
y4 = (Mkstate51?.y4 st);
x5 = (Mkstate51?.x5 st);
y5 = (Mkstate51?.y5 st);
x6 = (Mkstate51?.x6 st);
y6 = (Mkstate51?.y6 st);
x7 = (Mkstate51?.x7 st);
y7 = (Mkstate51?.y7 st);
x8 = x8;
}
in
runState52 st
and runState52 (st: state52) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y8 = comms.recv_int B () in
assume (((y8) > (Mkstate52?.x8 st)));
callbacks.state52OnreceivePong st y8;
let st : state53 = {
_dumstate53 = ();
x0 = (Mkstate52?.x0 st);
y0 = (Mkstate52?.y0 st);
x1 = (Mkstate52?.x1 st);
y1 = (Mkstate52?.y1 st);
x2 = (Mkstate52?.x2 st);
y2 = (Mkstate52?.y2 st);
x3 = (Mkstate52?.x3 st);
y3 = (Mkstate52?.y3 st);
x4 = (Mkstate52?.x4 st);
y4 = (Mkstate52?.y4 st);
x5 = (Mkstate52?.x5 st);
y5 = (Mkstate52?.y5 st);
x6 = (Mkstate52?.x6 st);
y6 = (Mkstate52?.y6 st);
x7 = (Mkstate52?.x7 st);
y7 = (Mkstate52?.y7 st);
x8 = (Mkstate52?.x8 st);
y8 = y8;
}
in
runState53 st
| _ -> unexpected "unexpected label"
and runState53 (st: state53) : ML unit =
comms.send_string B "Ping";
let x9 = callbacks.state53OnsendPing st in
comms.send_int B x9;
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
x4 = (Mkstate53?.x4 st);
y4 = (Mkstate53?.y4 st);
x5 = (Mkstate53?.x5 st);
y5 = (Mkstate53?.y5 st);
x6 = (Mkstate53?.x6 st);
y6 = (Mkstate53?.y6 st);
x7 = (Mkstate53?.x7 st);
y7 = (Mkstate53?.y7 st);
x8 = (Mkstate53?.x8 st);
y8 = (Mkstate53?.y8 st);
x9 = x9;
}
in
runState54 st
and runState54 (st: state54) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y9 = comms.recv_int B () in
assume (((y9) > (Mkstate54?.x9 st)));
callbacks.state54OnreceivePong st y9;
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
y4 = (Mkstate54?.y4 st);
x5 = (Mkstate54?.x5 st);
y5 = (Mkstate54?.y5 st);
x6 = (Mkstate54?.x6 st);
y6 = (Mkstate54?.y6 st);
x7 = (Mkstate54?.x7 st);
y7 = (Mkstate54?.y7 st);
x8 = (Mkstate54?.x8 st);
y8 = (Mkstate54?.y8 st);
x9 = (Mkstate54?.x9 st);
y9 = y9;
}
in
runState55 st
| _ -> unexpected "unexpected label"
and runState55 (st: state55) : ML unit =
comms.send_string B "Ping";
let x10 = callbacks.state55OnsendPing st in
comms.send_int B x10;
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
x5 = (Mkstate55?.x5 st);
y5 = (Mkstate55?.y5 st);
x6 = (Mkstate55?.x6 st);
y6 = (Mkstate55?.y6 st);
x7 = (Mkstate55?.x7 st);
y7 = (Mkstate55?.y7 st);
x8 = (Mkstate55?.x8 st);
y8 = (Mkstate55?.y8 st);
x9 = (Mkstate55?.x9 st);
y9 = (Mkstate55?.y9 st);
x10 = x10;
}
in
runState56 st
and runState56 (st: state56) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y10 = comms.recv_int B () in
assume (((y10) > (Mkstate56?.x10 st)));
callbacks.state56OnreceivePong st y10;
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
y5 = (Mkstate56?.y5 st);
x6 = (Mkstate56?.x6 st);
y6 = (Mkstate56?.y6 st);
x7 = (Mkstate56?.x7 st);
y7 = (Mkstate56?.y7 st);
x8 = (Mkstate56?.x8 st);
y8 = (Mkstate56?.y8 st);
x9 = (Mkstate56?.x9 st);
y9 = (Mkstate56?.y9 st);
x10 = (Mkstate56?.x10 st);
y10 = y10;
}
in
runState57 st
| _ -> unexpected "unexpected label"
and runState57 (st: state57) : ML unit =
comms.send_string B "Ping";
let x11 = callbacks.state57OnsendPing st in
comms.send_int B x11;
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
x6 = (Mkstate57?.x6 st);
y6 = (Mkstate57?.y6 st);
x7 = (Mkstate57?.x7 st);
y7 = (Mkstate57?.y7 st);
x8 = (Mkstate57?.x8 st);
y8 = (Mkstate57?.y8 st);
x9 = (Mkstate57?.x9 st);
y9 = (Mkstate57?.y9 st);
x10 = (Mkstate57?.x10 st);
y10 = (Mkstate57?.y10 st);
x11 = x11;
}
in
runState58 st
and runState58 (st: state58) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y11 = comms.recv_int B () in
assume (((y11) > (Mkstate58?.x11 st)));
callbacks.state58OnreceivePong st y11;
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
y6 = (Mkstate58?.y6 st);
x7 = (Mkstate58?.x7 st);
y7 = (Mkstate58?.y7 st);
x8 = (Mkstate58?.x8 st);
y8 = (Mkstate58?.y8 st);
x9 = (Mkstate58?.x9 st);
y9 = (Mkstate58?.y9 st);
x10 = (Mkstate58?.x10 st);
y10 = (Mkstate58?.y10 st);
x11 = (Mkstate58?.x11 st);
y11 = y11;
}
in
runState59 st
| _ -> unexpected "unexpected label"
and runState59 (st: state59) : ML unit =
comms.send_string B "Ping";
let x12 = callbacks.state59OnsendPing st in
comms.send_int B x12;
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
x7 = (Mkstate59?.x7 st);
y7 = (Mkstate59?.y7 st);
x8 = (Mkstate59?.x8 st);
y8 = (Mkstate59?.y8 st);
x9 = (Mkstate59?.x9 st);
y9 = (Mkstate59?.y9 st);
x10 = (Mkstate59?.x10 st);
y10 = (Mkstate59?.y10 st);
x11 = (Mkstate59?.x11 st);
y11 = (Mkstate59?.y11 st);
x12 = x12;
}
in
runState60 st
and runState60 (st: state60) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y12 = comms.recv_int B () in
assume (((y12) > (Mkstate60?.x12 st)));
callbacks.state60OnreceivePong st y12;
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
y7 = (Mkstate60?.y7 st);
x8 = (Mkstate60?.x8 st);
y8 = (Mkstate60?.y8 st);
x9 = (Mkstate60?.x9 st);
y9 = (Mkstate60?.y9 st);
x10 = (Mkstate60?.x10 st);
y10 = (Mkstate60?.y10 st);
x11 = (Mkstate60?.x11 st);
y11 = (Mkstate60?.y11 st);
x12 = (Mkstate60?.x12 st);
y12 = y12;
}
in
runState61 st
| _ -> unexpected "unexpected label"
and runState61 (st: state61) : ML unit =
comms.send_string B "Ping";
let x13 = callbacks.state61OnsendPing st in
comms.send_int B x13;
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
x8 = (Mkstate61?.x8 st);
y8 = (Mkstate61?.y8 st);
x9 = (Mkstate61?.x9 st);
y9 = (Mkstate61?.y9 st);
x10 = (Mkstate61?.x10 st);
y10 = (Mkstate61?.y10 st);
x11 = (Mkstate61?.x11 st);
y11 = (Mkstate61?.y11 st);
x12 = (Mkstate61?.x12 st);
y12 = (Mkstate61?.y12 st);
x13 = x13;
}
in
runState62 st
and runState62 (st: state62) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y13 = comms.recv_int B () in
assume (((y13) > (Mkstate62?.x13 st)));
callbacks.state62OnreceivePong st y13;
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
y8 = (Mkstate62?.y8 st);
x9 = (Mkstate62?.x9 st);
y9 = (Mkstate62?.y9 st);
x10 = (Mkstate62?.x10 st);
y10 = (Mkstate62?.y10 st);
x11 = (Mkstate62?.x11 st);
y11 = (Mkstate62?.y11 st);
x12 = (Mkstate62?.x12 st);
y12 = (Mkstate62?.y12 st);
x13 = (Mkstate62?.x13 st);
y13 = y13;
}
in
runState63 st
| _ -> unexpected "unexpected label"
and runState63 (st: state63) : ML unit =
comms.send_string B "Ping";
let x14 = callbacks.state63OnsendPing st in
comms.send_int B x14;
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
x9 = (Mkstate63?.x9 st);
y9 = (Mkstate63?.y9 st);
x10 = (Mkstate63?.x10 st);
y10 = (Mkstate63?.y10 st);
x11 = (Mkstate63?.x11 st);
y11 = (Mkstate63?.y11 st);
x12 = (Mkstate63?.x12 st);
y12 = (Mkstate63?.y12 st);
x13 = (Mkstate63?.x13 st);
y13 = (Mkstate63?.y13 st);
x14 = x14;
}
in
runState64 st
and runState64 (st: state64) : ML unit =
let label = comms.recv_string B () in
match label with
| "Pong" ->
let y14 = comms.recv_int B () in
assume (((y14) > (Mkstate64?.x14 st)));
callbacks.state64OnreceivePong st y14;
let st : state34 = ()
in
runState34 st
| _ -> unexpected "unexpected label"
and runState65 (st: state65) : ML unit =
let label = comms.recv_string B () in
match label with
| "Bye" ->
let _dummy = comms.recv_unit B () in
callbacks.state65OnreceiveBye st ;
let st : state35 = ()
in
runState35 st
| _ -> unexpected "unexpected label"
in
let initState : state34 =
()
in
runState34 initState
