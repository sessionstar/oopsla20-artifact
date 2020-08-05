module GeneratedPingPong15B
(* This file is GENERATED, do not modify manually *)
open FStar.All
open FStar.Error

type role =
| A
type state101 = unit
and state102 = unit
and state103 = {
_dumstate103 : unit;
x0 : int;
}
and state104 = {
_dumstate104 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
}
and state105 = {
_dumstate105 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
}
and state106 = {
_dumstate106 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
}
and state107 = {
_dumstate107 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
}
and state108 = {
_dumstate108 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
}
and state109 = {
_dumstate109 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
}
and state110 = {
_dumstate110 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
}
and state111 = {
_dumstate111 : unit;
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
and state112 = {
_dumstate112 : unit;
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
and state113 = {
_dumstate113 : unit;
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
and state114 = {
_dumstate114 : unit;
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
and state115 = {
_dumstate115 : unit;
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
and state116 = {
_dumstate116 : unit;
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
and state117 = {
_dumstate117 : unit;
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
and state118 = {
_dumstate118 : unit;
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
and state119 = {
_dumstate119 : unit;
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
and state120 = {
_dumstate120 : unit;
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
and state121 = {
_dumstate121 : unit;
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
and state122 = {
_dumstate122 : unit;
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
and state123 = {
_dumstate123 : unit;
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
and state124 = {
_dumstate124 : unit;
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
and state125 = {
_dumstate125 : unit;
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
and state126 = {
_dumstate126 : unit;
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
and state127 = {
_dumstate127 : unit;
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
and state128 = {
_dumstate128 : unit;
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
and state129 = {
_dumstate129 : unit;
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
and state130 = {
_dumstate130 : unit;
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
and state131 = {
_dumstate131 : unit;
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
and state132 = unit
noeq type callbacksB = {
state101OnreceiveBye : (st: state101) -> ML (unit);
state101OnreceivePing : (st: state101) -> (x0: int) -> ML (unit);
state103OnsendPong : (st: state103) -> ML (y0:int{((y0) > (Mkstate103?.x0 st))});
state104OnreceivePing : (st: state104) -> (x1: int{((x1) > (Mkstate104?.y0 st))}) -> ML (unit);
state105OnsendPong : (st: state105) -> ML (y1:int{((y1) > (Mkstate105?.x1 st))});
state106OnreceivePing : (st: state106) -> (x2: int{((x2) > (Mkstate106?.y1 st))}) -> ML (unit);
state107OnsendPong : (st: state107) -> ML (y2:int{((y2) > (Mkstate107?.x2 st))});
state108OnreceivePing : (st: state108) -> (x3: int{((x3) > (Mkstate108?.y2 st))}) -> ML (unit);
state109OnsendPong : (st: state109) -> ML (y3:int{((y3) > (Mkstate109?.x3 st))});
state110OnreceivePing : (st: state110) -> (x4: int{((x4) > (Mkstate110?.y3 st))}) -> ML (unit);
state111OnsendPong : (st: state111) -> ML (y4:int{((y4) > (Mkstate111?.x4 st))});
state112OnreceivePing : (st: state112) -> (x5: int{((x5) > (Mkstate112?.y4 st))}) -> ML (unit);
state113OnsendPong : (st: state113) -> ML (y5:int{((y5) > (Mkstate113?.x5 st))});
state114OnreceivePing : (st: state114) -> (x6: int{((x6) > (Mkstate114?.y5 st))}) -> ML (unit);
state115OnsendPong : (st: state115) -> ML (y6:int{((y6) > (Mkstate115?.x6 st))});
state116OnreceivePing : (st: state116) -> (x7: int{((x7) > (Mkstate116?.y6 st))}) -> ML (unit);
state117OnsendPong : (st: state117) -> ML (y7:int{((y7) > (Mkstate117?.x7 st))});
state118OnreceivePing : (st: state118) -> (x8: int{((x8) > (Mkstate118?.y7 st))}) -> ML (unit);
state119OnsendPong : (st: state119) -> ML (y8:int{((y8) > (Mkstate119?.x8 st))});
state120OnreceivePing : (st: state120) -> (x9: int{((x9) > (Mkstate120?.y8 st))}) -> ML (unit);
state121OnsendPong : (st: state121) -> ML (y9:int{((y9) > (Mkstate121?.x9 st))});
state122OnreceivePing : (st: state122) -> (x10: int{((x10) > (Mkstate122?.y9 st))}) -> ML (unit);
state123OnsendPong : (st: state123) -> ML (y10:int{((y10) > (Mkstate123?.x10 st))});
state124OnreceivePing : (st: state124) -> (x11: int{((x11) > (Mkstate124?.y10 st))}) -> ML (unit);
state125OnsendPong : (st: state125) -> ML (y11:int{((y11) > (Mkstate125?.x11 st))});
state126OnreceivePing : (st: state126) -> (x12: int{((x12) > (Mkstate126?.y11 st))}) -> ML (unit);
state127OnsendPong : (st: state127) -> ML (y12:int{((y12) > (Mkstate127?.x12 st))});
state128OnreceivePing : (st: state128) -> (x13: int{((x13) > (Mkstate128?.y12 st))}) -> ML (unit);
state129OnsendPong : (st: state129) -> ML (y13:int{((y13) > (Mkstate129?.x13 st))});
state130OnreceivePing : (st: state130) -> (x14: int{((x14) > (Mkstate130?.y13 st))}) -> ML (unit);
state131OnsendPong : (st: state131) -> ML (y14:int{((y14) > (Mkstate131?.x14 st))});
state132OnsendBye : (st: state132) -> ML (unit);
}
noeq type communications = {
    send_int : role -> int -> ML unit;
    send_string : role -> string -> ML unit;
    send_unit : role -> unit -> ML unit;
    recv_int : role -> unit -> ML int;
    recv_string : role -> unit -> ML string;
    recv_unit : role -> unit -> ML unit;
}
let run (callbacks : callbacksB) (comms : communications) : ML unit =
let rec runState101 (st: state101) : ML unit =
let label = comms.recv_string A () in
match label with
| "Bye" ->
let _dummy = comms.recv_unit A () in
callbacks.state101OnreceiveBye st ;
let st : state132 = ()
in
runState132 st
| "Ping" ->
let x0 = comms.recv_int A () in
callbacks.state101OnreceivePing st x0;
let st : state103 = {
_dumstate103 = ();
x0 = x0;
}
in
runState103 st
| _ -> unexpected "unexpected label"
and runState102 (st: state102) : ML unit =
()
and runState103 (st: state103) : ML unit =
comms.send_string A "Pong";
let y0 = callbacks.state103OnsendPong st in
comms.send_int A y0;
let st : state104 = {
_dumstate104 = ();
x0 = (Mkstate103?.x0 st);
y0 = y0;
}
in
runState104 st
and runState104 (st: state104) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x1 = comms.recv_int A () in
assume (((x1) > (Mkstate104?.y0 st)));
callbacks.state104OnreceivePing st x1;
let st : state105 = {
_dumstate105 = ();
x0 = (Mkstate104?.x0 st);
y0 = (Mkstate104?.y0 st);
x1 = x1;
}
in
runState105 st
| _ -> unexpected "unexpected label"
and runState105 (st: state105) : ML unit =
comms.send_string A "Pong";
let y1 = callbacks.state105OnsendPong st in
comms.send_int A y1;
let st : state106 = {
_dumstate106 = ();
x0 = (Mkstate105?.x0 st);
y0 = (Mkstate105?.y0 st);
x1 = (Mkstate105?.x1 st);
y1 = y1;
}
in
runState106 st
and runState106 (st: state106) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x2 = comms.recv_int A () in
assume (((x2) > (Mkstate106?.y1 st)));
callbacks.state106OnreceivePing st x2;
let st : state107 = {
_dumstate107 = ();
x0 = (Mkstate106?.x0 st);
y0 = (Mkstate106?.y0 st);
x1 = (Mkstate106?.x1 st);
y1 = (Mkstate106?.y1 st);
x2 = x2;
}
in
runState107 st
| _ -> unexpected "unexpected label"
and runState107 (st: state107) : ML unit =
comms.send_string A "Pong";
let y2 = callbacks.state107OnsendPong st in
comms.send_int A y2;
let st : state108 = {
_dumstate108 = ();
x0 = (Mkstate107?.x0 st);
y0 = (Mkstate107?.y0 st);
x1 = (Mkstate107?.x1 st);
y1 = (Mkstate107?.y1 st);
x2 = (Mkstate107?.x2 st);
y2 = y2;
}
in
runState108 st
and runState108 (st: state108) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x3 = comms.recv_int A () in
assume (((x3) > (Mkstate108?.y2 st)));
callbacks.state108OnreceivePing st x3;
let st : state109 = {
_dumstate109 = ();
x0 = (Mkstate108?.x0 st);
y0 = (Mkstate108?.y0 st);
x1 = (Mkstate108?.x1 st);
y1 = (Mkstate108?.y1 st);
x2 = (Mkstate108?.x2 st);
y2 = (Mkstate108?.y2 st);
x3 = x3;
}
in
runState109 st
| _ -> unexpected "unexpected label"
and runState109 (st: state109) : ML unit =
comms.send_string A "Pong";
let y3 = callbacks.state109OnsendPong st in
comms.send_int A y3;
let st : state110 = {
_dumstate110 = ();
x0 = (Mkstate109?.x0 st);
y0 = (Mkstate109?.y0 st);
x1 = (Mkstate109?.x1 st);
y1 = (Mkstate109?.y1 st);
x2 = (Mkstate109?.x2 st);
y2 = (Mkstate109?.y2 st);
x3 = (Mkstate109?.x3 st);
y3 = y3;
}
in
runState110 st
and runState110 (st: state110) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x4 = comms.recv_int A () in
assume (((x4) > (Mkstate110?.y3 st)));
callbacks.state110OnreceivePing st x4;
let st : state111 = {
_dumstate111 = ();
x0 = (Mkstate110?.x0 st);
y0 = (Mkstate110?.y0 st);
x1 = (Mkstate110?.x1 st);
y1 = (Mkstate110?.y1 st);
x2 = (Mkstate110?.x2 st);
y2 = (Mkstate110?.y2 st);
x3 = (Mkstate110?.x3 st);
y3 = (Mkstate110?.y3 st);
x4 = x4;
}
in
runState111 st
| _ -> unexpected "unexpected label"
and runState111 (st: state111) : ML unit =
comms.send_string A "Pong";
let y4 = callbacks.state111OnsendPong st in
comms.send_int A y4;
let st : state112 = {
_dumstate112 = ();
x0 = (Mkstate111?.x0 st);
y0 = (Mkstate111?.y0 st);
x1 = (Mkstate111?.x1 st);
y1 = (Mkstate111?.y1 st);
x2 = (Mkstate111?.x2 st);
y2 = (Mkstate111?.y2 st);
x3 = (Mkstate111?.x3 st);
y3 = (Mkstate111?.y3 st);
x4 = (Mkstate111?.x4 st);
y4 = y4;
}
in
runState112 st
and runState112 (st: state112) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x5 = comms.recv_int A () in
assume (((x5) > (Mkstate112?.y4 st)));
callbacks.state112OnreceivePing st x5;
let st : state113 = {
_dumstate113 = ();
x0 = (Mkstate112?.x0 st);
y0 = (Mkstate112?.y0 st);
x1 = (Mkstate112?.x1 st);
y1 = (Mkstate112?.y1 st);
x2 = (Mkstate112?.x2 st);
y2 = (Mkstate112?.y2 st);
x3 = (Mkstate112?.x3 st);
y3 = (Mkstate112?.y3 st);
x4 = (Mkstate112?.x4 st);
y4 = (Mkstate112?.y4 st);
x5 = x5;
}
in
runState113 st
| _ -> unexpected "unexpected label"
and runState113 (st: state113) : ML unit =
comms.send_string A "Pong";
let y5 = callbacks.state113OnsendPong st in
comms.send_int A y5;
let st : state114 = {
_dumstate114 = ();
x0 = (Mkstate113?.x0 st);
y0 = (Mkstate113?.y0 st);
x1 = (Mkstate113?.x1 st);
y1 = (Mkstate113?.y1 st);
x2 = (Mkstate113?.x2 st);
y2 = (Mkstate113?.y2 st);
x3 = (Mkstate113?.x3 st);
y3 = (Mkstate113?.y3 st);
x4 = (Mkstate113?.x4 st);
y4 = (Mkstate113?.y4 st);
x5 = (Mkstate113?.x5 st);
y5 = y5;
}
in
runState114 st
and runState114 (st: state114) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x6 = comms.recv_int A () in
assume (((x6) > (Mkstate114?.y5 st)));
callbacks.state114OnreceivePing st x6;
let st : state115 = {
_dumstate115 = ();
x0 = (Mkstate114?.x0 st);
y0 = (Mkstate114?.y0 st);
x1 = (Mkstate114?.x1 st);
y1 = (Mkstate114?.y1 st);
x2 = (Mkstate114?.x2 st);
y2 = (Mkstate114?.y2 st);
x3 = (Mkstate114?.x3 st);
y3 = (Mkstate114?.y3 st);
x4 = (Mkstate114?.x4 st);
y4 = (Mkstate114?.y4 st);
x5 = (Mkstate114?.x5 st);
y5 = (Mkstate114?.y5 st);
x6 = x6;
}
in
runState115 st
| _ -> unexpected "unexpected label"
and runState115 (st: state115) : ML unit =
comms.send_string A "Pong";
let y6 = callbacks.state115OnsendPong st in
comms.send_int A y6;
let st : state116 = {
_dumstate116 = ();
x0 = (Mkstate115?.x0 st);
y0 = (Mkstate115?.y0 st);
x1 = (Mkstate115?.x1 st);
y1 = (Mkstate115?.y1 st);
x2 = (Mkstate115?.x2 st);
y2 = (Mkstate115?.y2 st);
x3 = (Mkstate115?.x3 st);
y3 = (Mkstate115?.y3 st);
x4 = (Mkstate115?.x4 st);
y4 = (Mkstate115?.y4 st);
x5 = (Mkstate115?.x5 st);
y5 = (Mkstate115?.y5 st);
x6 = (Mkstate115?.x6 st);
y6 = y6;
}
in
runState116 st
and runState116 (st: state116) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x7 = comms.recv_int A () in
assume (((x7) > (Mkstate116?.y6 st)));
callbacks.state116OnreceivePing st x7;
let st : state117 = {
_dumstate117 = ();
x0 = (Mkstate116?.x0 st);
y0 = (Mkstate116?.y0 st);
x1 = (Mkstate116?.x1 st);
y1 = (Mkstate116?.y1 st);
x2 = (Mkstate116?.x2 st);
y2 = (Mkstate116?.y2 st);
x3 = (Mkstate116?.x3 st);
y3 = (Mkstate116?.y3 st);
x4 = (Mkstate116?.x4 st);
y4 = (Mkstate116?.y4 st);
x5 = (Mkstate116?.x5 st);
y5 = (Mkstate116?.y5 st);
x6 = (Mkstate116?.x6 st);
y6 = (Mkstate116?.y6 st);
x7 = x7;
}
in
runState117 st
| _ -> unexpected "unexpected label"
and runState117 (st: state117) : ML unit =
comms.send_string A "Pong";
let y7 = callbacks.state117OnsendPong st in
comms.send_int A y7;
let st : state118 = {
_dumstate118 = ();
x0 = (Mkstate117?.x0 st);
y0 = (Mkstate117?.y0 st);
x1 = (Mkstate117?.x1 st);
y1 = (Mkstate117?.y1 st);
x2 = (Mkstate117?.x2 st);
y2 = (Mkstate117?.y2 st);
x3 = (Mkstate117?.x3 st);
y3 = (Mkstate117?.y3 st);
x4 = (Mkstate117?.x4 st);
y4 = (Mkstate117?.y4 st);
x5 = (Mkstate117?.x5 st);
y5 = (Mkstate117?.y5 st);
x6 = (Mkstate117?.x6 st);
y6 = (Mkstate117?.y6 st);
x7 = (Mkstate117?.x7 st);
y7 = y7;
}
in
runState118 st
and runState118 (st: state118) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x8 = comms.recv_int A () in
assume (((x8) > (Mkstate118?.y7 st)));
callbacks.state118OnreceivePing st x8;
let st : state119 = {
_dumstate119 = ();
x0 = (Mkstate118?.x0 st);
y0 = (Mkstate118?.y0 st);
x1 = (Mkstate118?.x1 st);
y1 = (Mkstate118?.y1 st);
x2 = (Mkstate118?.x2 st);
y2 = (Mkstate118?.y2 st);
x3 = (Mkstate118?.x3 st);
y3 = (Mkstate118?.y3 st);
x4 = (Mkstate118?.x4 st);
y4 = (Mkstate118?.y4 st);
x5 = (Mkstate118?.x5 st);
y5 = (Mkstate118?.y5 st);
x6 = (Mkstate118?.x6 st);
y6 = (Mkstate118?.y6 st);
x7 = (Mkstate118?.x7 st);
y7 = (Mkstate118?.y7 st);
x8 = x8;
}
in
runState119 st
| _ -> unexpected "unexpected label"
and runState119 (st: state119) : ML unit =
comms.send_string A "Pong";
let y8 = callbacks.state119OnsendPong st in
comms.send_int A y8;
let st : state120 = {
_dumstate120 = ();
x0 = (Mkstate119?.x0 st);
y0 = (Mkstate119?.y0 st);
x1 = (Mkstate119?.x1 st);
y1 = (Mkstate119?.y1 st);
x2 = (Mkstate119?.x2 st);
y2 = (Mkstate119?.y2 st);
x3 = (Mkstate119?.x3 st);
y3 = (Mkstate119?.y3 st);
x4 = (Mkstate119?.x4 st);
y4 = (Mkstate119?.y4 st);
x5 = (Mkstate119?.x5 st);
y5 = (Mkstate119?.y5 st);
x6 = (Mkstate119?.x6 st);
y6 = (Mkstate119?.y6 st);
x7 = (Mkstate119?.x7 st);
y7 = (Mkstate119?.y7 st);
x8 = (Mkstate119?.x8 st);
y8 = y8;
}
in
runState120 st
and runState120 (st: state120) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x9 = comms.recv_int A () in
assume (((x9) > (Mkstate120?.y8 st)));
callbacks.state120OnreceivePing st x9;
let st : state121 = {
_dumstate121 = ();
x0 = (Mkstate120?.x0 st);
y0 = (Mkstate120?.y0 st);
x1 = (Mkstate120?.x1 st);
y1 = (Mkstate120?.y1 st);
x2 = (Mkstate120?.x2 st);
y2 = (Mkstate120?.y2 st);
x3 = (Mkstate120?.x3 st);
y3 = (Mkstate120?.y3 st);
x4 = (Mkstate120?.x4 st);
y4 = (Mkstate120?.y4 st);
x5 = (Mkstate120?.x5 st);
y5 = (Mkstate120?.y5 st);
x6 = (Mkstate120?.x6 st);
y6 = (Mkstate120?.y6 st);
x7 = (Mkstate120?.x7 st);
y7 = (Mkstate120?.y7 st);
x8 = (Mkstate120?.x8 st);
y8 = (Mkstate120?.y8 st);
x9 = x9;
}
in
runState121 st
| _ -> unexpected "unexpected label"
and runState121 (st: state121) : ML unit =
comms.send_string A "Pong";
let y9 = callbacks.state121OnsendPong st in
comms.send_int A y9;
let st : state122 = {
_dumstate122 = ();
x0 = (Mkstate121?.x0 st);
y0 = (Mkstate121?.y0 st);
x1 = (Mkstate121?.x1 st);
y1 = (Mkstate121?.y1 st);
x2 = (Mkstate121?.x2 st);
y2 = (Mkstate121?.y2 st);
x3 = (Mkstate121?.x3 st);
y3 = (Mkstate121?.y3 st);
x4 = (Mkstate121?.x4 st);
y4 = (Mkstate121?.y4 st);
x5 = (Mkstate121?.x5 st);
y5 = (Mkstate121?.y5 st);
x6 = (Mkstate121?.x6 st);
y6 = (Mkstate121?.y6 st);
x7 = (Mkstate121?.x7 st);
y7 = (Mkstate121?.y7 st);
x8 = (Mkstate121?.x8 st);
y8 = (Mkstate121?.y8 st);
x9 = (Mkstate121?.x9 st);
y9 = y9;
}
in
runState122 st
and runState122 (st: state122) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x10 = comms.recv_int A () in
assume (((x10) > (Mkstate122?.y9 st)));
callbacks.state122OnreceivePing st x10;
let st : state123 = {
_dumstate123 = ();
x0 = (Mkstate122?.x0 st);
y0 = (Mkstate122?.y0 st);
x1 = (Mkstate122?.x1 st);
y1 = (Mkstate122?.y1 st);
x2 = (Mkstate122?.x2 st);
y2 = (Mkstate122?.y2 st);
x3 = (Mkstate122?.x3 st);
y3 = (Mkstate122?.y3 st);
x4 = (Mkstate122?.x4 st);
y4 = (Mkstate122?.y4 st);
x5 = (Mkstate122?.x5 st);
y5 = (Mkstate122?.y5 st);
x6 = (Mkstate122?.x6 st);
y6 = (Mkstate122?.y6 st);
x7 = (Mkstate122?.x7 st);
y7 = (Mkstate122?.y7 st);
x8 = (Mkstate122?.x8 st);
y8 = (Mkstate122?.y8 st);
x9 = (Mkstate122?.x9 st);
y9 = (Mkstate122?.y9 st);
x10 = x10;
}
in
runState123 st
| _ -> unexpected "unexpected label"
and runState123 (st: state123) : ML unit =
comms.send_string A "Pong";
let y10 = callbacks.state123OnsendPong st in
comms.send_int A y10;
let st : state124 = {
_dumstate124 = ();
x0 = (Mkstate123?.x0 st);
y0 = (Mkstate123?.y0 st);
x1 = (Mkstate123?.x1 st);
y1 = (Mkstate123?.y1 st);
x2 = (Mkstate123?.x2 st);
y2 = (Mkstate123?.y2 st);
x3 = (Mkstate123?.x3 st);
y3 = (Mkstate123?.y3 st);
x4 = (Mkstate123?.x4 st);
y4 = (Mkstate123?.y4 st);
x5 = (Mkstate123?.x5 st);
y5 = (Mkstate123?.y5 st);
x6 = (Mkstate123?.x6 st);
y6 = (Mkstate123?.y6 st);
x7 = (Mkstate123?.x7 st);
y7 = (Mkstate123?.y7 st);
x8 = (Mkstate123?.x8 st);
y8 = (Mkstate123?.y8 st);
x9 = (Mkstate123?.x9 st);
y9 = (Mkstate123?.y9 st);
x10 = (Mkstate123?.x10 st);
y10 = y10;
}
in
runState124 st
and runState124 (st: state124) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x11 = comms.recv_int A () in
assume (((x11) > (Mkstate124?.y10 st)));
callbacks.state124OnreceivePing st x11;
let st : state125 = {
_dumstate125 = ();
x0 = (Mkstate124?.x0 st);
y0 = (Mkstate124?.y0 st);
x1 = (Mkstate124?.x1 st);
y1 = (Mkstate124?.y1 st);
x2 = (Mkstate124?.x2 st);
y2 = (Mkstate124?.y2 st);
x3 = (Mkstate124?.x3 st);
y3 = (Mkstate124?.y3 st);
x4 = (Mkstate124?.x4 st);
y4 = (Mkstate124?.y4 st);
x5 = (Mkstate124?.x5 st);
y5 = (Mkstate124?.y5 st);
x6 = (Mkstate124?.x6 st);
y6 = (Mkstate124?.y6 st);
x7 = (Mkstate124?.x7 st);
y7 = (Mkstate124?.y7 st);
x8 = (Mkstate124?.x8 st);
y8 = (Mkstate124?.y8 st);
x9 = (Mkstate124?.x9 st);
y9 = (Mkstate124?.y9 st);
x10 = (Mkstate124?.x10 st);
y10 = (Mkstate124?.y10 st);
x11 = x11;
}
in
runState125 st
| _ -> unexpected "unexpected label"
and runState125 (st: state125) : ML unit =
comms.send_string A "Pong";
let y11 = callbacks.state125OnsendPong st in
comms.send_int A y11;
let st : state126 = {
_dumstate126 = ();
x0 = (Mkstate125?.x0 st);
y0 = (Mkstate125?.y0 st);
x1 = (Mkstate125?.x1 st);
y1 = (Mkstate125?.y1 st);
x2 = (Mkstate125?.x2 st);
y2 = (Mkstate125?.y2 st);
x3 = (Mkstate125?.x3 st);
y3 = (Mkstate125?.y3 st);
x4 = (Mkstate125?.x4 st);
y4 = (Mkstate125?.y4 st);
x5 = (Mkstate125?.x5 st);
y5 = (Mkstate125?.y5 st);
x6 = (Mkstate125?.x6 st);
y6 = (Mkstate125?.y6 st);
x7 = (Mkstate125?.x7 st);
y7 = (Mkstate125?.y7 st);
x8 = (Mkstate125?.x8 st);
y8 = (Mkstate125?.y8 st);
x9 = (Mkstate125?.x9 st);
y9 = (Mkstate125?.y9 st);
x10 = (Mkstate125?.x10 st);
y10 = (Mkstate125?.y10 st);
x11 = (Mkstate125?.x11 st);
y11 = y11;
}
in
runState126 st
and runState126 (st: state126) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x12 = comms.recv_int A () in
assume (((x12) > (Mkstate126?.y11 st)));
callbacks.state126OnreceivePing st x12;
let st : state127 = {
_dumstate127 = ();
x0 = (Mkstate126?.x0 st);
y0 = (Mkstate126?.y0 st);
x1 = (Mkstate126?.x1 st);
y1 = (Mkstate126?.y1 st);
x2 = (Mkstate126?.x2 st);
y2 = (Mkstate126?.y2 st);
x3 = (Mkstate126?.x3 st);
y3 = (Mkstate126?.y3 st);
x4 = (Mkstate126?.x4 st);
y4 = (Mkstate126?.y4 st);
x5 = (Mkstate126?.x5 st);
y5 = (Mkstate126?.y5 st);
x6 = (Mkstate126?.x6 st);
y6 = (Mkstate126?.y6 st);
x7 = (Mkstate126?.x7 st);
y7 = (Mkstate126?.y7 st);
x8 = (Mkstate126?.x8 st);
y8 = (Mkstate126?.y8 st);
x9 = (Mkstate126?.x9 st);
y9 = (Mkstate126?.y9 st);
x10 = (Mkstate126?.x10 st);
y10 = (Mkstate126?.y10 st);
x11 = (Mkstate126?.x11 st);
y11 = (Mkstate126?.y11 st);
x12 = x12;
}
in
runState127 st
| _ -> unexpected "unexpected label"
and runState127 (st: state127) : ML unit =
comms.send_string A "Pong";
let y12 = callbacks.state127OnsendPong st in
comms.send_int A y12;
let st : state128 = {
_dumstate128 = ();
x0 = (Mkstate127?.x0 st);
y0 = (Mkstate127?.y0 st);
x1 = (Mkstate127?.x1 st);
y1 = (Mkstate127?.y1 st);
x2 = (Mkstate127?.x2 st);
y2 = (Mkstate127?.y2 st);
x3 = (Mkstate127?.x3 st);
y3 = (Mkstate127?.y3 st);
x4 = (Mkstate127?.x4 st);
y4 = (Mkstate127?.y4 st);
x5 = (Mkstate127?.x5 st);
y5 = (Mkstate127?.y5 st);
x6 = (Mkstate127?.x6 st);
y6 = (Mkstate127?.y6 st);
x7 = (Mkstate127?.x7 st);
y7 = (Mkstate127?.y7 st);
x8 = (Mkstate127?.x8 st);
y8 = (Mkstate127?.y8 st);
x9 = (Mkstate127?.x9 st);
y9 = (Mkstate127?.y9 st);
x10 = (Mkstate127?.x10 st);
y10 = (Mkstate127?.y10 st);
x11 = (Mkstate127?.x11 st);
y11 = (Mkstate127?.y11 st);
x12 = (Mkstate127?.x12 st);
y12 = y12;
}
in
runState128 st
and runState128 (st: state128) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x13 = comms.recv_int A () in
assume (((x13) > (Mkstate128?.y12 st)));
callbacks.state128OnreceivePing st x13;
let st : state129 = {
_dumstate129 = ();
x0 = (Mkstate128?.x0 st);
y0 = (Mkstate128?.y0 st);
x1 = (Mkstate128?.x1 st);
y1 = (Mkstate128?.y1 st);
x2 = (Mkstate128?.x2 st);
y2 = (Mkstate128?.y2 st);
x3 = (Mkstate128?.x3 st);
y3 = (Mkstate128?.y3 st);
x4 = (Mkstate128?.x4 st);
y4 = (Mkstate128?.y4 st);
x5 = (Mkstate128?.x5 st);
y5 = (Mkstate128?.y5 st);
x6 = (Mkstate128?.x6 st);
y6 = (Mkstate128?.y6 st);
x7 = (Mkstate128?.x7 st);
y7 = (Mkstate128?.y7 st);
x8 = (Mkstate128?.x8 st);
y8 = (Mkstate128?.y8 st);
x9 = (Mkstate128?.x9 st);
y9 = (Mkstate128?.y9 st);
x10 = (Mkstate128?.x10 st);
y10 = (Mkstate128?.y10 st);
x11 = (Mkstate128?.x11 st);
y11 = (Mkstate128?.y11 st);
x12 = (Mkstate128?.x12 st);
y12 = (Mkstate128?.y12 st);
x13 = x13;
}
in
runState129 st
| _ -> unexpected "unexpected label"
and runState129 (st: state129) : ML unit =
comms.send_string A "Pong";
let y13 = callbacks.state129OnsendPong st in
comms.send_int A y13;
let st : state130 = {
_dumstate130 = ();
x0 = (Mkstate129?.x0 st);
y0 = (Mkstate129?.y0 st);
x1 = (Mkstate129?.x1 st);
y1 = (Mkstate129?.y1 st);
x2 = (Mkstate129?.x2 st);
y2 = (Mkstate129?.y2 st);
x3 = (Mkstate129?.x3 st);
y3 = (Mkstate129?.y3 st);
x4 = (Mkstate129?.x4 st);
y4 = (Mkstate129?.y4 st);
x5 = (Mkstate129?.x5 st);
y5 = (Mkstate129?.y5 st);
x6 = (Mkstate129?.x6 st);
y6 = (Mkstate129?.y6 st);
x7 = (Mkstate129?.x7 st);
y7 = (Mkstate129?.y7 st);
x8 = (Mkstate129?.x8 st);
y8 = (Mkstate129?.y8 st);
x9 = (Mkstate129?.x9 st);
y9 = (Mkstate129?.y9 st);
x10 = (Mkstate129?.x10 st);
y10 = (Mkstate129?.y10 st);
x11 = (Mkstate129?.x11 st);
y11 = (Mkstate129?.y11 st);
x12 = (Mkstate129?.x12 st);
y12 = (Mkstate129?.y12 st);
x13 = (Mkstate129?.x13 st);
y13 = y13;
}
in
runState130 st
and runState130 (st: state130) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x14 = comms.recv_int A () in
assume (((x14) > (Mkstate130?.y13 st)));
callbacks.state130OnreceivePing st x14;
let st : state131 = {
_dumstate131 = ();
x0 = (Mkstate130?.x0 st);
y0 = (Mkstate130?.y0 st);
x1 = (Mkstate130?.x1 st);
y1 = (Mkstate130?.y1 st);
x2 = (Mkstate130?.x2 st);
y2 = (Mkstate130?.y2 st);
x3 = (Mkstate130?.x3 st);
y3 = (Mkstate130?.y3 st);
x4 = (Mkstate130?.x4 st);
y4 = (Mkstate130?.y4 st);
x5 = (Mkstate130?.x5 st);
y5 = (Mkstate130?.y5 st);
x6 = (Mkstate130?.x6 st);
y6 = (Mkstate130?.y6 st);
x7 = (Mkstate130?.x7 st);
y7 = (Mkstate130?.y7 st);
x8 = (Mkstate130?.x8 st);
y8 = (Mkstate130?.y8 st);
x9 = (Mkstate130?.x9 st);
y9 = (Mkstate130?.y9 st);
x10 = (Mkstate130?.x10 st);
y10 = (Mkstate130?.y10 st);
x11 = (Mkstate130?.x11 st);
y11 = (Mkstate130?.y11 st);
x12 = (Mkstate130?.x12 st);
y12 = (Mkstate130?.y12 st);
x13 = (Mkstate130?.x13 st);
y13 = (Mkstate130?.y13 st);
x14 = x14;
}
in
runState131 st
| _ -> unexpected "unexpected label"
and runState131 (st: state131) : ML unit =
comms.send_string A "Pong";
let y14 = callbacks.state131OnsendPong st in
comms.send_int A y14;
let st : state101 = ()
in
runState101 st
and runState132 (st: state132) : ML unit =
comms.send_string A "Bye";
let _dummy = callbacks.state132OnsendBye st in
comms.send_unit A _dummy;
let st : state102 = ()
in
runState102 st
in
let initState : state101 =
()
in
runState101 initState
