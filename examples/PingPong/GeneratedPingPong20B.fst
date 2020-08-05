module GeneratedPingPong20B
(* This file is GENERATED, do not modify manually *)
open FStar.All
open FStar.Error

type role =
| A
type state131 = unit
and state132 = unit
and state133 = {
_dumstate133 : unit;
x0 : int;
}
and state134 = {
_dumstate134 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
}
and state135 = {
_dumstate135 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
}
and state136 = {
_dumstate136 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
}
and state137 = {
_dumstate137 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
}
and state138 = {
_dumstate138 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
}
and state139 = {
_dumstate139 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
}
and state140 = {
_dumstate140 : unit;
x0 : int;
y0 : (y0 : int{((y0) > (x0))});
x1 : (x1 : int{((x1) > (y0))});
y1 : (y1 : int{((y1) > (x1))});
x2 : (x2 : int{((x2) > (y1))});
y2 : (y2 : int{((y2) > (x2))});
x3 : (x3 : int{((x3) > (y2))});
y3 : (y3 : int{((y3) > (x3))});
}
and state141 = {
_dumstate141 : unit;
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
and state142 = {
_dumstate142 : unit;
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
and state143 = {
_dumstate143 : unit;
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
and state144 = {
_dumstate144 : unit;
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
and state145 = {
_dumstate145 : unit;
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
and state146 = {
_dumstate146 : unit;
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
and state147 = {
_dumstate147 : unit;
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
and state148 = {
_dumstate148 : unit;
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
and state149 = {
_dumstate149 : unit;
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
and state150 = {
_dumstate150 : unit;
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
and state151 = {
_dumstate151 : unit;
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
and state152 = {
_dumstate152 : unit;
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
and state153 = {
_dumstate153 : unit;
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
and state154 = {
_dumstate154 : unit;
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
and state155 = {
_dumstate155 : unit;
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
and state156 = {
_dumstate156 : unit;
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
and state157 = {
_dumstate157 : unit;
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
and state158 = {
_dumstate158 : unit;
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
and state159 = {
_dumstate159 : unit;
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
and state160 = {
_dumstate160 : unit;
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
and state161 = {
_dumstate161 : unit;
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
and state162 = {
_dumstate162 : unit;
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
and state163 = {
_dumstate163 : unit;
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
and state164 = {
_dumstate164 : unit;
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
and state165 = {
_dumstate165 : unit;
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
and state166 = {
_dumstate166 : unit;
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
and state167 = {
_dumstate167 : unit;
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
and state168 = {
_dumstate168 : unit;
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
and state169 = {
_dumstate169 : unit;
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
and state170 = {
_dumstate170 : unit;
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
and state171 = {
_dumstate171 : unit;
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
and state172 = unit
noeq type callbacksB = {
state131OnreceiveBye : (st: state131) -> ML (unit);
state131OnreceivePing : (st: state131) -> (x0: int) -> ML (unit);
state133OnsendPong : (st: state133) -> ML (y0:int{((y0) > (Mkstate133?.x0 st))});
state134OnreceivePing : (st: state134) -> (x1: int{((x1) > (Mkstate134?.y0 st))}) -> ML (unit);
state135OnsendPong : (st: state135) -> ML (y1:int{((y1) > (Mkstate135?.x1 st))});
state136OnreceivePing : (st: state136) -> (x2: int{((x2) > (Mkstate136?.y1 st))}) -> ML (unit);
state137OnsendPong : (st: state137) -> ML (y2:int{((y2) > (Mkstate137?.x2 st))});
state138OnreceivePing : (st: state138) -> (x3: int{((x3) > (Mkstate138?.y2 st))}) -> ML (unit);
state139OnsendPong : (st: state139) -> ML (y3:int{((y3) > (Mkstate139?.x3 st))});
state140OnreceivePing : (st: state140) -> (x4: int{((x4) > (Mkstate140?.y3 st))}) -> ML (unit);
state141OnsendPong : (st: state141) -> ML (y4:int{((y4) > (Mkstate141?.x4 st))});
state142OnreceivePing : (st: state142) -> (x5: int{((x5) > (Mkstate142?.y4 st))}) -> ML (unit);
state143OnsendPong : (st: state143) -> ML (y5:int{((y5) > (Mkstate143?.x5 st))});
state144OnreceivePing : (st: state144) -> (x6: int{((x6) > (Mkstate144?.y5 st))}) -> ML (unit);
state145OnsendPong : (st: state145) -> ML (y6:int{((y6) > (Mkstate145?.x6 st))});
state146OnreceivePing : (st: state146) -> (x7: int{((x7) > (Mkstate146?.y6 st))}) -> ML (unit);
state147OnsendPong : (st: state147) -> ML (y7:int{((y7) > (Mkstate147?.x7 st))});
state148OnreceivePing : (st: state148) -> (x8: int{((x8) > (Mkstate148?.y7 st))}) -> ML (unit);
state149OnsendPong : (st: state149) -> ML (y8:int{((y8) > (Mkstate149?.x8 st))});
state150OnreceivePing : (st: state150) -> (x9: int{((x9) > (Mkstate150?.y8 st))}) -> ML (unit);
state151OnsendPong : (st: state151) -> ML (y9:int{((y9) > (Mkstate151?.x9 st))});
state152OnreceivePing : (st: state152) -> (x10: int{((x10) > (Mkstate152?.y9 st))}) -> ML (unit);
state153OnsendPong : (st: state153) -> ML (y10:int{((y10) > (Mkstate153?.x10 st))});
state154OnreceivePing : (st: state154) -> (x11: int{((x11) > (Mkstate154?.y10 st))}) -> ML (unit);
state155OnsendPong : (st: state155) -> ML (y11:int{((y11) > (Mkstate155?.x11 st))});
state156OnreceivePing : (st: state156) -> (x12: int{((x12) > (Mkstate156?.y11 st))}) -> ML (unit);
state157OnsendPong : (st: state157) -> ML (y12:int{((y12) > (Mkstate157?.x12 st))});
state158OnreceivePing : (st: state158) -> (x13: int{((x13) > (Mkstate158?.y12 st))}) -> ML (unit);
state159OnsendPong : (st: state159) -> ML (y13:int{((y13) > (Mkstate159?.x13 st))});
state160OnreceivePing : (st: state160) -> (x14: int{((x14) > (Mkstate160?.y13 st))}) -> ML (unit);
state161OnsendPong : (st: state161) -> ML (y14:int{((y14) > (Mkstate161?.x14 st))});
state162OnreceivePing : (st: state162) -> (x15: int{((x15) > (Mkstate162?.y14 st))}) -> ML (unit);
state163OnsendPong : (st: state163) -> ML (y15:int{((y15) > (Mkstate163?.x15 st))});
state164OnreceivePing : (st: state164) -> (x16: int{((x16) > (Mkstate164?.y15 st))}) -> ML (unit);
state165OnsendPong : (st: state165) -> ML (y16:int{((y16) > (Mkstate165?.x16 st))});
state166OnreceivePing : (st: state166) -> (x17: int{((x17) > (Mkstate166?.y16 st))}) -> ML (unit);
state167OnsendPong : (st: state167) -> ML (y17:int{((y17) > (Mkstate167?.x17 st))});
state168OnreceivePing : (st: state168) -> (x18: int{((x18) > (Mkstate168?.y17 st))}) -> ML (unit);
state169OnsendPong : (st: state169) -> ML (y18:int{((y18) > (Mkstate169?.x18 st))});
state170OnreceivePing : (st: state170) -> (x19: int{((x19) > (Mkstate170?.y18 st))}) -> ML (unit);
state171OnsendPong : (st: state171) -> ML (y19:int{((y19) > (Mkstate171?.x19 st))});
state172OnsendBye : (st: state172) -> ML (unit);
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
let rec runState131 (st: state131) : ML unit =
let label = comms.recv_string A () in
match label with
| "Bye" ->
let _dummy = comms.recv_unit A () in
callbacks.state131OnreceiveBye st ;
let st : state172 = ()
in
runState172 st
| "Ping" ->
let x0 = comms.recv_int A () in
callbacks.state131OnreceivePing st x0;
let st : state133 = {
_dumstate133 = ();
x0 = x0;
}
in
runState133 st
| _ -> unexpected "unexpected label"
and runState132 (st: state132) : ML unit =
()
and runState133 (st: state133) : ML unit =
comms.send_string A "Pong";
let y0 = callbacks.state133OnsendPong st in
comms.send_int A y0;
let st : state134 = {
_dumstate134 = ();
x0 = (Mkstate133?.x0 st);
y0 = y0;
}
in
runState134 st
and runState134 (st: state134) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x1 = comms.recv_int A () in
assume (((x1) > (Mkstate134?.y0 st)));
callbacks.state134OnreceivePing st x1;
let st : state135 = {
_dumstate135 = ();
x0 = (Mkstate134?.x0 st);
y0 = (Mkstate134?.y0 st);
x1 = x1;
}
in
runState135 st
| _ -> unexpected "unexpected label"
and runState135 (st: state135) : ML unit =
comms.send_string A "Pong";
let y1 = callbacks.state135OnsendPong st in
comms.send_int A y1;
let st : state136 = {
_dumstate136 = ();
x0 = (Mkstate135?.x0 st);
y0 = (Mkstate135?.y0 st);
x1 = (Mkstate135?.x1 st);
y1 = y1;
}
in
runState136 st
and runState136 (st: state136) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x2 = comms.recv_int A () in
assume (((x2) > (Mkstate136?.y1 st)));
callbacks.state136OnreceivePing st x2;
let st : state137 = {
_dumstate137 = ();
x0 = (Mkstate136?.x0 st);
y0 = (Mkstate136?.y0 st);
x1 = (Mkstate136?.x1 st);
y1 = (Mkstate136?.y1 st);
x2 = x2;
}
in
runState137 st
| _ -> unexpected "unexpected label"
and runState137 (st: state137) : ML unit =
comms.send_string A "Pong";
let y2 = callbacks.state137OnsendPong st in
comms.send_int A y2;
let st : state138 = {
_dumstate138 = ();
x0 = (Mkstate137?.x0 st);
y0 = (Mkstate137?.y0 st);
x1 = (Mkstate137?.x1 st);
y1 = (Mkstate137?.y1 st);
x2 = (Mkstate137?.x2 st);
y2 = y2;
}
in
runState138 st
and runState138 (st: state138) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x3 = comms.recv_int A () in
assume (((x3) > (Mkstate138?.y2 st)));
callbacks.state138OnreceivePing st x3;
let st : state139 = {
_dumstate139 = ();
x0 = (Mkstate138?.x0 st);
y0 = (Mkstate138?.y0 st);
x1 = (Mkstate138?.x1 st);
y1 = (Mkstate138?.y1 st);
x2 = (Mkstate138?.x2 st);
y2 = (Mkstate138?.y2 st);
x3 = x3;
}
in
runState139 st
| _ -> unexpected "unexpected label"
and runState139 (st: state139) : ML unit =
comms.send_string A "Pong";
let y3 = callbacks.state139OnsendPong st in
comms.send_int A y3;
let st : state140 = {
_dumstate140 = ();
x0 = (Mkstate139?.x0 st);
y0 = (Mkstate139?.y0 st);
x1 = (Mkstate139?.x1 st);
y1 = (Mkstate139?.y1 st);
x2 = (Mkstate139?.x2 st);
y2 = (Mkstate139?.y2 st);
x3 = (Mkstate139?.x3 st);
y3 = y3;
}
in
runState140 st
and runState140 (st: state140) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x4 = comms.recv_int A () in
assume (((x4) > (Mkstate140?.y3 st)));
callbacks.state140OnreceivePing st x4;
let st : state141 = {
_dumstate141 = ();
x0 = (Mkstate140?.x0 st);
y0 = (Mkstate140?.y0 st);
x1 = (Mkstate140?.x1 st);
y1 = (Mkstate140?.y1 st);
x2 = (Mkstate140?.x2 st);
y2 = (Mkstate140?.y2 st);
x3 = (Mkstate140?.x3 st);
y3 = (Mkstate140?.y3 st);
x4 = x4;
}
in
runState141 st
| _ -> unexpected "unexpected label"
and runState141 (st: state141) : ML unit =
comms.send_string A "Pong";
let y4 = callbacks.state141OnsendPong st in
comms.send_int A y4;
let st : state142 = {
_dumstate142 = ();
x0 = (Mkstate141?.x0 st);
y0 = (Mkstate141?.y0 st);
x1 = (Mkstate141?.x1 st);
y1 = (Mkstate141?.y1 st);
x2 = (Mkstate141?.x2 st);
y2 = (Mkstate141?.y2 st);
x3 = (Mkstate141?.x3 st);
y3 = (Mkstate141?.y3 st);
x4 = (Mkstate141?.x4 st);
y4 = y4;
}
in
runState142 st
and runState142 (st: state142) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x5 = comms.recv_int A () in
assume (((x5) > (Mkstate142?.y4 st)));
callbacks.state142OnreceivePing st x5;
let st : state143 = {
_dumstate143 = ();
x0 = (Mkstate142?.x0 st);
y0 = (Mkstate142?.y0 st);
x1 = (Mkstate142?.x1 st);
y1 = (Mkstate142?.y1 st);
x2 = (Mkstate142?.x2 st);
y2 = (Mkstate142?.y2 st);
x3 = (Mkstate142?.x3 st);
y3 = (Mkstate142?.y3 st);
x4 = (Mkstate142?.x4 st);
y4 = (Mkstate142?.y4 st);
x5 = x5;
}
in
runState143 st
| _ -> unexpected "unexpected label"
and runState143 (st: state143) : ML unit =
comms.send_string A "Pong";
let y5 = callbacks.state143OnsendPong st in
comms.send_int A y5;
let st : state144 = {
_dumstate144 = ();
x0 = (Mkstate143?.x0 st);
y0 = (Mkstate143?.y0 st);
x1 = (Mkstate143?.x1 st);
y1 = (Mkstate143?.y1 st);
x2 = (Mkstate143?.x2 st);
y2 = (Mkstate143?.y2 st);
x3 = (Mkstate143?.x3 st);
y3 = (Mkstate143?.y3 st);
x4 = (Mkstate143?.x4 st);
y4 = (Mkstate143?.y4 st);
x5 = (Mkstate143?.x5 st);
y5 = y5;
}
in
runState144 st
and runState144 (st: state144) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x6 = comms.recv_int A () in
assume (((x6) > (Mkstate144?.y5 st)));
callbacks.state144OnreceivePing st x6;
let st : state145 = {
_dumstate145 = ();
x0 = (Mkstate144?.x0 st);
y0 = (Mkstate144?.y0 st);
x1 = (Mkstate144?.x1 st);
y1 = (Mkstate144?.y1 st);
x2 = (Mkstate144?.x2 st);
y2 = (Mkstate144?.y2 st);
x3 = (Mkstate144?.x3 st);
y3 = (Mkstate144?.y3 st);
x4 = (Mkstate144?.x4 st);
y4 = (Mkstate144?.y4 st);
x5 = (Mkstate144?.x5 st);
y5 = (Mkstate144?.y5 st);
x6 = x6;
}
in
runState145 st
| _ -> unexpected "unexpected label"
and runState145 (st: state145) : ML unit =
comms.send_string A "Pong";
let y6 = callbacks.state145OnsendPong st in
comms.send_int A y6;
let st : state146 = {
_dumstate146 = ();
x0 = (Mkstate145?.x0 st);
y0 = (Mkstate145?.y0 st);
x1 = (Mkstate145?.x1 st);
y1 = (Mkstate145?.y1 st);
x2 = (Mkstate145?.x2 st);
y2 = (Mkstate145?.y2 st);
x3 = (Mkstate145?.x3 st);
y3 = (Mkstate145?.y3 st);
x4 = (Mkstate145?.x4 st);
y4 = (Mkstate145?.y4 st);
x5 = (Mkstate145?.x5 st);
y5 = (Mkstate145?.y5 st);
x6 = (Mkstate145?.x6 st);
y6 = y6;
}
in
runState146 st
and runState146 (st: state146) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x7 = comms.recv_int A () in
assume (((x7) > (Mkstate146?.y6 st)));
callbacks.state146OnreceivePing st x7;
let st : state147 = {
_dumstate147 = ();
x0 = (Mkstate146?.x0 st);
y0 = (Mkstate146?.y0 st);
x1 = (Mkstate146?.x1 st);
y1 = (Mkstate146?.y1 st);
x2 = (Mkstate146?.x2 st);
y2 = (Mkstate146?.y2 st);
x3 = (Mkstate146?.x3 st);
y3 = (Mkstate146?.y3 st);
x4 = (Mkstate146?.x4 st);
y4 = (Mkstate146?.y4 st);
x5 = (Mkstate146?.x5 st);
y5 = (Mkstate146?.y5 st);
x6 = (Mkstate146?.x6 st);
y6 = (Mkstate146?.y6 st);
x7 = x7;
}
in
runState147 st
| _ -> unexpected "unexpected label"
and runState147 (st: state147) : ML unit =
comms.send_string A "Pong";
let y7 = callbacks.state147OnsendPong st in
comms.send_int A y7;
let st : state148 = {
_dumstate148 = ();
x0 = (Mkstate147?.x0 st);
y0 = (Mkstate147?.y0 st);
x1 = (Mkstate147?.x1 st);
y1 = (Mkstate147?.y1 st);
x2 = (Mkstate147?.x2 st);
y2 = (Mkstate147?.y2 st);
x3 = (Mkstate147?.x3 st);
y3 = (Mkstate147?.y3 st);
x4 = (Mkstate147?.x4 st);
y4 = (Mkstate147?.y4 st);
x5 = (Mkstate147?.x5 st);
y5 = (Mkstate147?.y5 st);
x6 = (Mkstate147?.x6 st);
y6 = (Mkstate147?.y6 st);
x7 = (Mkstate147?.x7 st);
y7 = y7;
}
in
runState148 st
and runState148 (st: state148) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x8 = comms.recv_int A () in
assume (((x8) > (Mkstate148?.y7 st)));
callbacks.state148OnreceivePing st x8;
let st : state149 = {
_dumstate149 = ();
x0 = (Mkstate148?.x0 st);
y0 = (Mkstate148?.y0 st);
x1 = (Mkstate148?.x1 st);
y1 = (Mkstate148?.y1 st);
x2 = (Mkstate148?.x2 st);
y2 = (Mkstate148?.y2 st);
x3 = (Mkstate148?.x3 st);
y3 = (Mkstate148?.y3 st);
x4 = (Mkstate148?.x4 st);
y4 = (Mkstate148?.y4 st);
x5 = (Mkstate148?.x5 st);
y5 = (Mkstate148?.y5 st);
x6 = (Mkstate148?.x6 st);
y6 = (Mkstate148?.y6 st);
x7 = (Mkstate148?.x7 st);
y7 = (Mkstate148?.y7 st);
x8 = x8;
}
in
runState149 st
| _ -> unexpected "unexpected label"
and runState149 (st: state149) : ML unit =
comms.send_string A "Pong";
let y8 = callbacks.state149OnsendPong st in
comms.send_int A y8;
let st : state150 = {
_dumstate150 = ();
x0 = (Mkstate149?.x0 st);
y0 = (Mkstate149?.y0 st);
x1 = (Mkstate149?.x1 st);
y1 = (Mkstate149?.y1 st);
x2 = (Mkstate149?.x2 st);
y2 = (Mkstate149?.y2 st);
x3 = (Mkstate149?.x3 st);
y3 = (Mkstate149?.y3 st);
x4 = (Mkstate149?.x4 st);
y4 = (Mkstate149?.y4 st);
x5 = (Mkstate149?.x5 st);
y5 = (Mkstate149?.y5 st);
x6 = (Mkstate149?.x6 st);
y6 = (Mkstate149?.y6 st);
x7 = (Mkstate149?.x7 st);
y7 = (Mkstate149?.y7 st);
x8 = (Mkstate149?.x8 st);
y8 = y8;
}
in
runState150 st
and runState150 (st: state150) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x9 = comms.recv_int A () in
assume (((x9) > (Mkstate150?.y8 st)));
callbacks.state150OnreceivePing st x9;
let st : state151 = {
_dumstate151 = ();
x0 = (Mkstate150?.x0 st);
y0 = (Mkstate150?.y0 st);
x1 = (Mkstate150?.x1 st);
y1 = (Mkstate150?.y1 st);
x2 = (Mkstate150?.x2 st);
y2 = (Mkstate150?.y2 st);
x3 = (Mkstate150?.x3 st);
y3 = (Mkstate150?.y3 st);
x4 = (Mkstate150?.x4 st);
y4 = (Mkstate150?.y4 st);
x5 = (Mkstate150?.x5 st);
y5 = (Mkstate150?.y5 st);
x6 = (Mkstate150?.x6 st);
y6 = (Mkstate150?.y6 st);
x7 = (Mkstate150?.x7 st);
y7 = (Mkstate150?.y7 st);
x8 = (Mkstate150?.x8 st);
y8 = (Mkstate150?.y8 st);
x9 = x9;
}
in
runState151 st
| _ -> unexpected "unexpected label"
and runState151 (st: state151) : ML unit =
comms.send_string A "Pong";
let y9 = callbacks.state151OnsendPong st in
comms.send_int A y9;
let st : state152 = {
_dumstate152 = ();
x0 = (Mkstate151?.x0 st);
y0 = (Mkstate151?.y0 st);
x1 = (Mkstate151?.x1 st);
y1 = (Mkstate151?.y1 st);
x2 = (Mkstate151?.x2 st);
y2 = (Mkstate151?.y2 st);
x3 = (Mkstate151?.x3 st);
y3 = (Mkstate151?.y3 st);
x4 = (Mkstate151?.x4 st);
y4 = (Mkstate151?.y4 st);
x5 = (Mkstate151?.x5 st);
y5 = (Mkstate151?.y5 st);
x6 = (Mkstate151?.x6 st);
y6 = (Mkstate151?.y6 st);
x7 = (Mkstate151?.x7 st);
y7 = (Mkstate151?.y7 st);
x8 = (Mkstate151?.x8 st);
y8 = (Mkstate151?.y8 st);
x9 = (Mkstate151?.x9 st);
y9 = y9;
}
in
runState152 st
and runState152 (st: state152) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x10 = comms.recv_int A () in
assume (((x10) > (Mkstate152?.y9 st)));
callbacks.state152OnreceivePing st x10;
let st : state153 = {
_dumstate153 = ();
x0 = (Mkstate152?.x0 st);
y0 = (Mkstate152?.y0 st);
x1 = (Mkstate152?.x1 st);
y1 = (Mkstate152?.y1 st);
x2 = (Mkstate152?.x2 st);
y2 = (Mkstate152?.y2 st);
x3 = (Mkstate152?.x3 st);
y3 = (Mkstate152?.y3 st);
x4 = (Mkstate152?.x4 st);
y4 = (Mkstate152?.y4 st);
x5 = (Mkstate152?.x5 st);
y5 = (Mkstate152?.y5 st);
x6 = (Mkstate152?.x6 st);
y6 = (Mkstate152?.y6 st);
x7 = (Mkstate152?.x7 st);
y7 = (Mkstate152?.y7 st);
x8 = (Mkstate152?.x8 st);
y8 = (Mkstate152?.y8 st);
x9 = (Mkstate152?.x9 st);
y9 = (Mkstate152?.y9 st);
x10 = x10;
}
in
runState153 st
| _ -> unexpected "unexpected label"
and runState153 (st: state153) : ML unit =
comms.send_string A "Pong";
let y10 = callbacks.state153OnsendPong st in
comms.send_int A y10;
let st : state154 = {
_dumstate154 = ();
x0 = (Mkstate153?.x0 st);
y0 = (Mkstate153?.y0 st);
x1 = (Mkstate153?.x1 st);
y1 = (Mkstate153?.y1 st);
x2 = (Mkstate153?.x2 st);
y2 = (Mkstate153?.y2 st);
x3 = (Mkstate153?.x3 st);
y3 = (Mkstate153?.y3 st);
x4 = (Mkstate153?.x4 st);
y4 = (Mkstate153?.y4 st);
x5 = (Mkstate153?.x5 st);
y5 = (Mkstate153?.y5 st);
x6 = (Mkstate153?.x6 st);
y6 = (Mkstate153?.y6 st);
x7 = (Mkstate153?.x7 st);
y7 = (Mkstate153?.y7 st);
x8 = (Mkstate153?.x8 st);
y8 = (Mkstate153?.y8 st);
x9 = (Mkstate153?.x9 st);
y9 = (Mkstate153?.y9 st);
x10 = (Mkstate153?.x10 st);
y10 = y10;
}
in
runState154 st
and runState154 (st: state154) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x11 = comms.recv_int A () in
assume (((x11) > (Mkstate154?.y10 st)));
callbacks.state154OnreceivePing st x11;
let st : state155 = {
_dumstate155 = ();
x0 = (Mkstate154?.x0 st);
y0 = (Mkstate154?.y0 st);
x1 = (Mkstate154?.x1 st);
y1 = (Mkstate154?.y1 st);
x2 = (Mkstate154?.x2 st);
y2 = (Mkstate154?.y2 st);
x3 = (Mkstate154?.x3 st);
y3 = (Mkstate154?.y3 st);
x4 = (Mkstate154?.x4 st);
y4 = (Mkstate154?.y4 st);
x5 = (Mkstate154?.x5 st);
y5 = (Mkstate154?.y5 st);
x6 = (Mkstate154?.x6 st);
y6 = (Mkstate154?.y6 st);
x7 = (Mkstate154?.x7 st);
y7 = (Mkstate154?.y7 st);
x8 = (Mkstate154?.x8 st);
y8 = (Mkstate154?.y8 st);
x9 = (Mkstate154?.x9 st);
y9 = (Mkstate154?.y9 st);
x10 = (Mkstate154?.x10 st);
y10 = (Mkstate154?.y10 st);
x11 = x11;
}
in
runState155 st
| _ -> unexpected "unexpected label"
and runState155 (st: state155) : ML unit =
comms.send_string A "Pong";
let y11 = callbacks.state155OnsendPong st in
comms.send_int A y11;
let st : state156 = {
_dumstate156 = ();
x0 = (Mkstate155?.x0 st);
y0 = (Mkstate155?.y0 st);
x1 = (Mkstate155?.x1 st);
y1 = (Mkstate155?.y1 st);
x2 = (Mkstate155?.x2 st);
y2 = (Mkstate155?.y2 st);
x3 = (Mkstate155?.x3 st);
y3 = (Mkstate155?.y3 st);
x4 = (Mkstate155?.x4 st);
y4 = (Mkstate155?.y4 st);
x5 = (Mkstate155?.x5 st);
y5 = (Mkstate155?.y5 st);
x6 = (Mkstate155?.x6 st);
y6 = (Mkstate155?.y6 st);
x7 = (Mkstate155?.x7 st);
y7 = (Mkstate155?.y7 st);
x8 = (Mkstate155?.x8 st);
y8 = (Mkstate155?.y8 st);
x9 = (Mkstate155?.x9 st);
y9 = (Mkstate155?.y9 st);
x10 = (Mkstate155?.x10 st);
y10 = (Mkstate155?.y10 st);
x11 = (Mkstate155?.x11 st);
y11 = y11;
}
in
runState156 st
and runState156 (st: state156) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x12 = comms.recv_int A () in
assume (((x12) > (Mkstate156?.y11 st)));
callbacks.state156OnreceivePing st x12;
let st : state157 = {
_dumstate157 = ();
x0 = (Mkstate156?.x0 st);
y0 = (Mkstate156?.y0 st);
x1 = (Mkstate156?.x1 st);
y1 = (Mkstate156?.y1 st);
x2 = (Mkstate156?.x2 st);
y2 = (Mkstate156?.y2 st);
x3 = (Mkstate156?.x3 st);
y3 = (Mkstate156?.y3 st);
x4 = (Mkstate156?.x4 st);
y4 = (Mkstate156?.y4 st);
x5 = (Mkstate156?.x5 st);
y5 = (Mkstate156?.y5 st);
x6 = (Mkstate156?.x6 st);
y6 = (Mkstate156?.y6 st);
x7 = (Mkstate156?.x7 st);
y7 = (Mkstate156?.y7 st);
x8 = (Mkstate156?.x8 st);
y8 = (Mkstate156?.y8 st);
x9 = (Mkstate156?.x9 st);
y9 = (Mkstate156?.y9 st);
x10 = (Mkstate156?.x10 st);
y10 = (Mkstate156?.y10 st);
x11 = (Mkstate156?.x11 st);
y11 = (Mkstate156?.y11 st);
x12 = x12;
}
in
runState157 st
| _ -> unexpected "unexpected label"
and runState157 (st: state157) : ML unit =
comms.send_string A "Pong";
let y12 = callbacks.state157OnsendPong st in
comms.send_int A y12;
let st : state158 = {
_dumstate158 = ();
x0 = (Mkstate157?.x0 st);
y0 = (Mkstate157?.y0 st);
x1 = (Mkstate157?.x1 st);
y1 = (Mkstate157?.y1 st);
x2 = (Mkstate157?.x2 st);
y2 = (Mkstate157?.y2 st);
x3 = (Mkstate157?.x3 st);
y3 = (Mkstate157?.y3 st);
x4 = (Mkstate157?.x4 st);
y4 = (Mkstate157?.y4 st);
x5 = (Mkstate157?.x5 st);
y5 = (Mkstate157?.y5 st);
x6 = (Mkstate157?.x6 st);
y6 = (Mkstate157?.y6 st);
x7 = (Mkstate157?.x7 st);
y7 = (Mkstate157?.y7 st);
x8 = (Mkstate157?.x8 st);
y8 = (Mkstate157?.y8 st);
x9 = (Mkstate157?.x9 st);
y9 = (Mkstate157?.y9 st);
x10 = (Mkstate157?.x10 st);
y10 = (Mkstate157?.y10 st);
x11 = (Mkstate157?.x11 st);
y11 = (Mkstate157?.y11 st);
x12 = (Mkstate157?.x12 st);
y12 = y12;
}
in
runState158 st
and runState158 (st: state158) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x13 = comms.recv_int A () in
assume (((x13) > (Mkstate158?.y12 st)));
callbacks.state158OnreceivePing st x13;
let st : state159 = {
_dumstate159 = ();
x0 = (Mkstate158?.x0 st);
y0 = (Mkstate158?.y0 st);
x1 = (Mkstate158?.x1 st);
y1 = (Mkstate158?.y1 st);
x2 = (Mkstate158?.x2 st);
y2 = (Mkstate158?.y2 st);
x3 = (Mkstate158?.x3 st);
y3 = (Mkstate158?.y3 st);
x4 = (Mkstate158?.x4 st);
y4 = (Mkstate158?.y4 st);
x5 = (Mkstate158?.x5 st);
y5 = (Mkstate158?.y5 st);
x6 = (Mkstate158?.x6 st);
y6 = (Mkstate158?.y6 st);
x7 = (Mkstate158?.x7 st);
y7 = (Mkstate158?.y7 st);
x8 = (Mkstate158?.x8 st);
y8 = (Mkstate158?.y8 st);
x9 = (Mkstate158?.x9 st);
y9 = (Mkstate158?.y9 st);
x10 = (Mkstate158?.x10 st);
y10 = (Mkstate158?.y10 st);
x11 = (Mkstate158?.x11 st);
y11 = (Mkstate158?.y11 st);
x12 = (Mkstate158?.x12 st);
y12 = (Mkstate158?.y12 st);
x13 = x13;
}
in
runState159 st
| _ -> unexpected "unexpected label"
and runState159 (st: state159) : ML unit =
comms.send_string A "Pong";
let y13 = callbacks.state159OnsendPong st in
comms.send_int A y13;
let st : state160 = {
_dumstate160 = ();
x0 = (Mkstate159?.x0 st);
y0 = (Mkstate159?.y0 st);
x1 = (Mkstate159?.x1 st);
y1 = (Mkstate159?.y1 st);
x2 = (Mkstate159?.x2 st);
y2 = (Mkstate159?.y2 st);
x3 = (Mkstate159?.x3 st);
y3 = (Mkstate159?.y3 st);
x4 = (Mkstate159?.x4 st);
y4 = (Mkstate159?.y4 st);
x5 = (Mkstate159?.x5 st);
y5 = (Mkstate159?.y5 st);
x6 = (Mkstate159?.x6 st);
y6 = (Mkstate159?.y6 st);
x7 = (Mkstate159?.x7 st);
y7 = (Mkstate159?.y7 st);
x8 = (Mkstate159?.x8 st);
y8 = (Mkstate159?.y8 st);
x9 = (Mkstate159?.x9 st);
y9 = (Mkstate159?.y9 st);
x10 = (Mkstate159?.x10 st);
y10 = (Mkstate159?.y10 st);
x11 = (Mkstate159?.x11 st);
y11 = (Mkstate159?.y11 st);
x12 = (Mkstate159?.x12 st);
y12 = (Mkstate159?.y12 st);
x13 = (Mkstate159?.x13 st);
y13 = y13;
}
in
runState160 st
and runState160 (st: state160) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x14 = comms.recv_int A () in
assume (((x14) > (Mkstate160?.y13 st)));
callbacks.state160OnreceivePing st x14;
let st : state161 = {
_dumstate161 = ();
x0 = (Mkstate160?.x0 st);
y0 = (Mkstate160?.y0 st);
x1 = (Mkstate160?.x1 st);
y1 = (Mkstate160?.y1 st);
x2 = (Mkstate160?.x2 st);
y2 = (Mkstate160?.y2 st);
x3 = (Mkstate160?.x3 st);
y3 = (Mkstate160?.y3 st);
x4 = (Mkstate160?.x4 st);
y4 = (Mkstate160?.y4 st);
x5 = (Mkstate160?.x5 st);
y5 = (Mkstate160?.y5 st);
x6 = (Mkstate160?.x6 st);
y6 = (Mkstate160?.y6 st);
x7 = (Mkstate160?.x7 st);
y7 = (Mkstate160?.y7 st);
x8 = (Mkstate160?.x8 st);
y8 = (Mkstate160?.y8 st);
x9 = (Mkstate160?.x9 st);
y9 = (Mkstate160?.y9 st);
x10 = (Mkstate160?.x10 st);
y10 = (Mkstate160?.y10 st);
x11 = (Mkstate160?.x11 st);
y11 = (Mkstate160?.y11 st);
x12 = (Mkstate160?.x12 st);
y12 = (Mkstate160?.y12 st);
x13 = (Mkstate160?.x13 st);
y13 = (Mkstate160?.y13 st);
x14 = x14;
}
in
runState161 st
| _ -> unexpected "unexpected label"
and runState161 (st: state161) : ML unit =
comms.send_string A "Pong";
let y14 = callbacks.state161OnsendPong st in
comms.send_int A y14;
let st : state162 = {
_dumstate162 = ();
x0 = (Mkstate161?.x0 st);
y0 = (Mkstate161?.y0 st);
x1 = (Mkstate161?.x1 st);
y1 = (Mkstate161?.y1 st);
x2 = (Mkstate161?.x2 st);
y2 = (Mkstate161?.y2 st);
x3 = (Mkstate161?.x3 st);
y3 = (Mkstate161?.y3 st);
x4 = (Mkstate161?.x4 st);
y4 = (Mkstate161?.y4 st);
x5 = (Mkstate161?.x5 st);
y5 = (Mkstate161?.y5 st);
x6 = (Mkstate161?.x6 st);
y6 = (Mkstate161?.y6 st);
x7 = (Mkstate161?.x7 st);
y7 = (Mkstate161?.y7 st);
x8 = (Mkstate161?.x8 st);
y8 = (Mkstate161?.y8 st);
x9 = (Mkstate161?.x9 st);
y9 = (Mkstate161?.y9 st);
x10 = (Mkstate161?.x10 st);
y10 = (Mkstate161?.y10 st);
x11 = (Mkstate161?.x11 st);
y11 = (Mkstate161?.y11 st);
x12 = (Mkstate161?.x12 st);
y12 = (Mkstate161?.y12 st);
x13 = (Mkstate161?.x13 st);
y13 = (Mkstate161?.y13 st);
x14 = (Mkstate161?.x14 st);
y14 = y14;
}
in
runState162 st
and runState162 (st: state162) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x15 = comms.recv_int A () in
assume (((x15) > (Mkstate162?.y14 st)));
callbacks.state162OnreceivePing st x15;
let st : state163 = {
_dumstate163 = ();
x0 = (Mkstate162?.x0 st);
y0 = (Mkstate162?.y0 st);
x1 = (Mkstate162?.x1 st);
y1 = (Mkstate162?.y1 st);
x2 = (Mkstate162?.x2 st);
y2 = (Mkstate162?.y2 st);
x3 = (Mkstate162?.x3 st);
y3 = (Mkstate162?.y3 st);
x4 = (Mkstate162?.x4 st);
y4 = (Mkstate162?.y4 st);
x5 = (Mkstate162?.x5 st);
y5 = (Mkstate162?.y5 st);
x6 = (Mkstate162?.x6 st);
y6 = (Mkstate162?.y6 st);
x7 = (Mkstate162?.x7 st);
y7 = (Mkstate162?.y7 st);
x8 = (Mkstate162?.x8 st);
y8 = (Mkstate162?.y8 st);
x9 = (Mkstate162?.x9 st);
y9 = (Mkstate162?.y9 st);
x10 = (Mkstate162?.x10 st);
y10 = (Mkstate162?.y10 st);
x11 = (Mkstate162?.x11 st);
y11 = (Mkstate162?.y11 st);
x12 = (Mkstate162?.x12 st);
y12 = (Mkstate162?.y12 st);
x13 = (Mkstate162?.x13 st);
y13 = (Mkstate162?.y13 st);
x14 = (Mkstate162?.x14 st);
y14 = (Mkstate162?.y14 st);
x15 = x15;
}
in
runState163 st
| _ -> unexpected "unexpected label"
and runState163 (st: state163) : ML unit =
comms.send_string A "Pong";
let y15 = callbacks.state163OnsendPong st in
comms.send_int A y15;
let st : state164 = {
_dumstate164 = ();
x0 = (Mkstate163?.x0 st);
y0 = (Mkstate163?.y0 st);
x1 = (Mkstate163?.x1 st);
y1 = (Mkstate163?.y1 st);
x2 = (Mkstate163?.x2 st);
y2 = (Mkstate163?.y2 st);
x3 = (Mkstate163?.x3 st);
y3 = (Mkstate163?.y3 st);
x4 = (Mkstate163?.x4 st);
y4 = (Mkstate163?.y4 st);
x5 = (Mkstate163?.x5 st);
y5 = (Mkstate163?.y5 st);
x6 = (Mkstate163?.x6 st);
y6 = (Mkstate163?.y6 st);
x7 = (Mkstate163?.x7 st);
y7 = (Mkstate163?.y7 st);
x8 = (Mkstate163?.x8 st);
y8 = (Mkstate163?.y8 st);
x9 = (Mkstate163?.x9 st);
y9 = (Mkstate163?.y9 st);
x10 = (Mkstate163?.x10 st);
y10 = (Mkstate163?.y10 st);
x11 = (Mkstate163?.x11 st);
y11 = (Mkstate163?.y11 st);
x12 = (Mkstate163?.x12 st);
y12 = (Mkstate163?.y12 st);
x13 = (Mkstate163?.x13 st);
y13 = (Mkstate163?.y13 st);
x14 = (Mkstate163?.x14 st);
y14 = (Mkstate163?.y14 st);
x15 = (Mkstate163?.x15 st);
y15 = y15;
}
in
runState164 st
and runState164 (st: state164) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x16 = comms.recv_int A () in
assume (((x16) > (Mkstate164?.y15 st)));
callbacks.state164OnreceivePing st x16;
let st : state165 = {
_dumstate165 = ();
x0 = (Mkstate164?.x0 st);
y0 = (Mkstate164?.y0 st);
x1 = (Mkstate164?.x1 st);
y1 = (Mkstate164?.y1 st);
x2 = (Mkstate164?.x2 st);
y2 = (Mkstate164?.y2 st);
x3 = (Mkstate164?.x3 st);
y3 = (Mkstate164?.y3 st);
x4 = (Mkstate164?.x4 st);
y4 = (Mkstate164?.y4 st);
x5 = (Mkstate164?.x5 st);
y5 = (Mkstate164?.y5 st);
x6 = (Mkstate164?.x6 st);
y6 = (Mkstate164?.y6 st);
x7 = (Mkstate164?.x7 st);
y7 = (Mkstate164?.y7 st);
x8 = (Mkstate164?.x8 st);
y8 = (Mkstate164?.y8 st);
x9 = (Mkstate164?.x9 st);
y9 = (Mkstate164?.y9 st);
x10 = (Mkstate164?.x10 st);
y10 = (Mkstate164?.y10 st);
x11 = (Mkstate164?.x11 st);
y11 = (Mkstate164?.y11 st);
x12 = (Mkstate164?.x12 st);
y12 = (Mkstate164?.y12 st);
x13 = (Mkstate164?.x13 st);
y13 = (Mkstate164?.y13 st);
x14 = (Mkstate164?.x14 st);
y14 = (Mkstate164?.y14 st);
x15 = (Mkstate164?.x15 st);
y15 = (Mkstate164?.y15 st);
x16 = x16;
}
in
runState165 st
| _ -> unexpected "unexpected label"
and runState165 (st: state165) : ML unit =
comms.send_string A "Pong";
let y16 = callbacks.state165OnsendPong st in
comms.send_int A y16;
let st : state166 = {
_dumstate166 = ();
x0 = (Mkstate165?.x0 st);
y0 = (Mkstate165?.y0 st);
x1 = (Mkstate165?.x1 st);
y1 = (Mkstate165?.y1 st);
x2 = (Mkstate165?.x2 st);
y2 = (Mkstate165?.y2 st);
x3 = (Mkstate165?.x3 st);
y3 = (Mkstate165?.y3 st);
x4 = (Mkstate165?.x4 st);
y4 = (Mkstate165?.y4 st);
x5 = (Mkstate165?.x5 st);
y5 = (Mkstate165?.y5 st);
x6 = (Mkstate165?.x6 st);
y6 = (Mkstate165?.y6 st);
x7 = (Mkstate165?.x7 st);
y7 = (Mkstate165?.y7 st);
x8 = (Mkstate165?.x8 st);
y8 = (Mkstate165?.y8 st);
x9 = (Mkstate165?.x9 st);
y9 = (Mkstate165?.y9 st);
x10 = (Mkstate165?.x10 st);
y10 = (Mkstate165?.y10 st);
x11 = (Mkstate165?.x11 st);
y11 = (Mkstate165?.y11 st);
x12 = (Mkstate165?.x12 st);
y12 = (Mkstate165?.y12 st);
x13 = (Mkstate165?.x13 st);
y13 = (Mkstate165?.y13 st);
x14 = (Mkstate165?.x14 st);
y14 = (Mkstate165?.y14 st);
x15 = (Mkstate165?.x15 st);
y15 = (Mkstate165?.y15 st);
x16 = (Mkstate165?.x16 st);
y16 = y16;
}
in
runState166 st
and runState166 (st: state166) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x17 = comms.recv_int A () in
assume (((x17) > (Mkstate166?.y16 st)));
callbacks.state166OnreceivePing st x17;
let st : state167 = {
_dumstate167 = ();
x0 = (Mkstate166?.x0 st);
y0 = (Mkstate166?.y0 st);
x1 = (Mkstate166?.x1 st);
y1 = (Mkstate166?.y1 st);
x2 = (Mkstate166?.x2 st);
y2 = (Mkstate166?.y2 st);
x3 = (Mkstate166?.x3 st);
y3 = (Mkstate166?.y3 st);
x4 = (Mkstate166?.x4 st);
y4 = (Mkstate166?.y4 st);
x5 = (Mkstate166?.x5 st);
y5 = (Mkstate166?.y5 st);
x6 = (Mkstate166?.x6 st);
y6 = (Mkstate166?.y6 st);
x7 = (Mkstate166?.x7 st);
y7 = (Mkstate166?.y7 st);
x8 = (Mkstate166?.x8 st);
y8 = (Mkstate166?.y8 st);
x9 = (Mkstate166?.x9 st);
y9 = (Mkstate166?.y9 st);
x10 = (Mkstate166?.x10 st);
y10 = (Mkstate166?.y10 st);
x11 = (Mkstate166?.x11 st);
y11 = (Mkstate166?.y11 st);
x12 = (Mkstate166?.x12 st);
y12 = (Mkstate166?.y12 st);
x13 = (Mkstate166?.x13 st);
y13 = (Mkstate166?.y13 st);
x14 = (Mkstate166?.x14 st);
y14 = (Mkstate166?.y14 st);
x15 = (Mkstate166?.x15 st);
y15 = (Mkstate166?.y15 st);
x16 = (Mkstate166?.x16 st);
y16 = (Mkstate166?.y16 st);
x17 = x17;
}
in
runState167 st
| _ -> unexpected "unexpected label"
and runState167 (st: state167) : ML unit =
comms.send_string A "Pong";
let y17 = callbacks.state167OnsendPong st in
comms.send_int A y17;
let st : state168 = {
_dumstate168 = ();
x0 = (Mkstate167?.x0 st);
y0 = (Mkstate167?.y0 st);
x1 = (Mkstate167?.x1 st);
y1 = (Mkstate167?.y1 st);
x2 = (Mkstate167?.x2 st);
y2 = (Mkstate167?.y2 st);
x3 = (Mkstate167?.x3 st);
y3 = (Mkstate167?.y3 st);
x4 = (Mkstate167?.x4 st);
y4 = (Mkstate167?.y4 st);
x5 = (Mkstate167?.x5 st);
y5 = (Mkstate167?.y5 st);
x6 = (Mkstate167?.x6 st);
y6 = (Mkstate167?.y6 st);
x7 = (Mkstate167?.x7 st);
y7 = (Mkstate167?.y7 st);
x8 = (Mkstate167?.x8 st);
y8 = (Mkstate167?.y8 st);
x9 = (Mkstate167?.x9 st);
y9 = (Mkstate167?.y9 st);
x10 = (Mkstate167?.x10 st);
y10 = (Mkstate167?.y10 st);
x11 = (Mkstate167?.x11 st);
y11 = (Mkstate167?.y11 st);
x12 = (Mkstate167?.x12 st);
y12 = (Mkstate167?.y12 st);
x13 = (Mkstate167?.x13 st);
y13 = (Mkstate167?.y13 st);
x14 = (Mkstate167?.x14 st);
y14 = (Mkstate167?.y14 st);
x15 = (Mkstate167?.x15 st);
y15 = (Mkstate167?.y15 st);
x16 = (Mkstate167?.x16 st);
y16 = (Mkstate167?.y16 st);
x17 = (Mkstate167?.x17 st);
y17 = y17;
}
in
runState168 st
and runState168 (st: state168) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x18 = comms.recv_int A () in
assume (((x18) > (Mkstate168?.y17 st)));
callbacks.state168OnreceivePing st x18;
let st : state169 = {
_dumstate169 = ();
x0 = (Mkstate168?.x0 st);
y0 = (Mkstate168?.y0 st);
x1 = (Mkstate168?.x1 st);
y1 = (Mkstate168?.y1 st);
x2 = (Mkstate168?.x2 st);
y2 = (Mkstate168?.y2 st);
x3 = (Mkstate168?.x3 st);
y3 = (Mkstate168?.y3 st);
x4 = (Mkstate168?.x4 st);
y4 = (Mkstate168?.y4 st);
x5 = (Mkstate168?.x5 st);
y5 = (Mkstate168?.y5 st);
x6 = (Mkstate168?.x6 st);
y6 = (Mkstate168?.y6 st);
x7 = (Mkstate168?.x7 st);
y7 = (Mkstate168?.y7 st);
x8 = (Mkstate168?.x8 st);
y8 = (Mkstate168?.y8 st);
x9 = (Mkstate168?.x9 st);
y9 = (Mkstate168?.y9 st);
x10 = (Mkstate168?.x10 st);
y10 = (Mkstate168?.y10 st);
x11 = (Mkstate168?.x11 st);
y11 = (Mkstate168?.y11 st);
x12 = (Mkstate168?.x12 st);
y12 = (Mkstate168?.y12 st);
x13 = (Mkstate168?.x13 st);
y13 = (Mkstate168?.y13 st);
x14 = (Mkstate168?.x14 st);
y14 = (Mkstate168?.y14 st);
x15 = (Mkstate168?.x15 st);
y15 = (Mkstate168?.y15 st);
x16 = (Mkstate168?.x16 st);
y16 = (Mkstate168?.y16 st);
x17 = (Mkstate168?.x17 st);
y17 = (Mkstate168?.y17 st);
x18 = x18;
}
in
runState169 st
| _ -> unexpected "unexpected label"
and runState169 (st: state169) : ML unit =
comms.send_string A "Pong";
let y18 = callbacks.state169OnsendPong st in
comms.send_int A y18;
let st : state170 = {
_dumstate170 = ();
x0 = (Mkstate169?.x0 st);
y0 = (Mkstate169?.y0 st);
x1 = (Mkstate169?.x1 st);
y1 = (Mkstate169?.y1 st);
x2 = (Mkstate169?.x2 st);
y2 = (Mkstate169?.y2 st);
x3 = (Mkstate169?.x3 st);
y3 = (Mkstate169?.y3 st);
x4 = (Mkstate169?.x4 st);
y4 = (Mkstate169?.y4 st);
x5 = (Mkstate169?.x5 st);
y5 = (Mkstate169?.y5 st);
x6 = (Mkstate169?.x6 st);
y6 = (Mkstate169?.y6 st);
x7 = (Mkstate169?.x7 st);
y7 = (Mkstate169?.y7 st);
x8 = (Mkstate169?.x8 st);
y8 = (Mkstate169?.y8 st);
x9 = (Mkstate169?.x9 st);
y9 = (Mkstate169?.y9 st);
x10 = (Mkstate169?.x10 st);
y10 = (Mkstate169?.y10 st);
x11 = (Mkstate169?.x11 st);
y11 = (Mkstate169?.y11 st);
x12 = (Mkstate169?.x12 st);
y12 = (Mkstate169?.y12 st);
x13 = (Mkstate169?.x13 st);
y13 = (Mkstate169?.y13 st);
x14 = (Mkstate169?.x14 st);
y14 = (Mkstate169?.y14 st);
x15 = (Mkstate169?.x15 st);
y15 = (Mkstate169?.y15 st);
x16 = (Mkstate169?.x16 st);
y16 = (Mkstate169?.y16 st);
x17 = (Mkstate169?.x17 st);
y17 = (Mkstate169?.y17 st);
x18 = (Mkstate169?.x18 st);
y18 = y18;
}
in
runState170 st
and runState170 (st: state170) : ML unit =
let label = comms.recv_string A () in
match label with
| "Ping" ->
let x19 = comms.recv_int A () in
assume (((x19) > (Mkstate170?.y18 st)));
callbacks.state170OnreceivePing st x19;
let st : state171 = {
_dumstate171 = ();
x0 = (Mkstate170?.x0 st);
y0 = (Mkstate170?.y0 st);
x1 = (Mkstate170?.x1 st);
y1 = (Mkstate170?.y1 st);
x2 = (Mkstate170?.x2 st);
y2 = (Mkstate170?.y2 st);
x3 = (Mkstate170?.x3 st);
y3 = (Mkstate170?.y3 st);
x4 = (Mkstate170?.x4 st);
y4 = (Mkstate170?.y4 st);
x5 = (Mkstate170?.x5 st);
y5 = (Mkstate170?.y5 st);
x6 = (Mkstate170?.x6 st);
y6 = (Mkstate170?.y6 st);
x7 = (Mkstate170?.x7 st);
y7 = (Mkstate170?.y7 st);
x8 = (Mkstate170?.x8 st);
y8 = (Mkstate170?.y8 st);
x9 = (Mkstate170?.x9 st);
y9 = (Mkstate170?.y9 st);
x10 = (Mkstate170?.x10 st);
y10 = (Mkstate170?.y10 st);
x11 = (Mkstate170?.x11 st);
y11 = (Mkstate170?.y11 st);
x12 = (Mkstate170?.x12 st);
y12 = (Mkstate170?.y12 st);
x13 = (Mkstate170?.x13 st);
y13 = (Mkstate170?.y13 st);
x14 = (Mkstate170?.x14 st);
y14 = (Mkstate170?.y14 st);
x15 = (Mkstate170?.x15 st);
y15 = (Mkstate170?.y15 st);
x16 = (Mkstate170?.x16 st);
y16 = (Mkstate170?.y16 st);
x17 = (Mkstate170?.x17 st);
y17 = (Mkstate170?.y17 st);
x18 = (Mkstate170?.x18 st);
y18 = (Mkstate170?.y18 st);
x19 = x19;
}
in
runState171 st
| _ -> unexpected "unexpected label"
and runState171 (st: state171) : ML unit =
comms.send_string A "Pong";
let y19 = callbacks.state171OnsendPong st in
comms.send_int A y19;
let st : state131 = ()
in
runState131 st
and runState172 (st: state172) : ML unit =
comms.send_string A "Bye";
let _dummy = callbacks.state172OnsendBye st in
comms.send_unit A _dummy;
let st : state132 = ()
in
runState132 st
in
let initState : state131 =
()
in
runState131 initState
