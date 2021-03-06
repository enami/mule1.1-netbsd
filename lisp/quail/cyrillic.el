;; Quail packages for inputting Cyrillic characters.
;; Copyright (C) 1992 Free Software Foundation, Inc.
;; This file is part of Mule (MULtilingual Enhancement of GNU Emacs).

;; Mule is free software distributed in the form of patches to GNU Emacs.
;; You can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 1, or (at your option)
;; any later version.

;; Mule is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.

;;; 92.7.14   created for Mule Ver.0.9.5 by Takahashi N. <ntakahas@etl.go.jp>
;;; 92.9.8    modified by Takahashi N. <ntakahas@etl.go.jp>
;;; 92.11.25  modified by Takahashi N. <ntakahas@etl.go.jp>
;;; 92.12.28  modified by Takahashi N. <ntakahas@etl.go.jp>
;;;           Macedonian, Serbian & Byelorussian are added
;;; 93.4.22   modified by Takahashi N. <ntakahas@etl.go.jp>
;;;           added "jis-russian".

(require 'quail)

(quail-define-package "jcuken" ",L9FC:5=(B" nil "Cyrillic (ISO 8859-5) encoding.

They say this layout is widely used in Russia." nil t t t t)

;;  1! 2@ 3# 4" 5: 6, 7. 8* 9( 0) -_ =+ ,L!(B
;;   ,L9(B  ,LF(B  ,LC(B  ,L:(B  ,L5(B  ,L=(B  ,L3(B  ,LH(B  ,LI(B  ,L7(B  ,LE(B  ,Lj(B
;;    ,LD(B  ,LK(B  ,L2(B  ,L0(B  ,L?(B  ,L@(B  ,L>(B  ,L;(B  ,L4(B  ,L6(B  ,LM(B
;;     ,LO(B  ,LG(B  ,LA(B  ,L<(B  ,L8(B  ,LB(B  ,LL(B  ,L1(B  ,LN(B  /?

(quail-defrule "1" ?1)
(quail-defrule "2" ?2)
(quail-defrule "3" ?3)
(quail-defrule "4" ?4)
(quail-defrule "5" ?5)
(quail-defrule "6" ?6)
(quail-defrule "7" ?7)
(quail-defrule "8" ?8)
(quail-defrule "9" ?9)
(quail-defrule "0" ?0)
(quail-defrule "-" ?-)
(quail-defrule "=" ?=)
(quail-defrule "`" ?,Lq(B)
(quail-defrule "q" ?,LY(B)
(quail-defrule "w" ?,Lf(B)
(quail-defrule "e" ?,Lc(B)
(quail-defrule "r" ?,LZ(B)
(quail-defrule "t" ?,LU(B)
(quail-defrule "y" ?,L](B)
(quail-defrule "u" ?,LS(B)
(quail-defrule "i" ?,Lh(B)
(quail-defrule "o" ?,Li(B)
(quail-defrule "p" ?,LW(B)
(quail-defrule "[" ?,Le(B)
(quail-defrule "]" ?,Lj(B)
(quail-defrule "a" ?,Ld(B)
(quail-defrule "s" ?,Lk(B)
(quail-defrule "d" ?,LR(B)
(quail-defrule "f" ?,LP(B)
(quail-defrule "g" ?,L_(B)
(quail-defrule "h" ?,L`(B)
(quail-defrule "j" ?,L^(B)
(quail-defrule "k" ?,L[(B)
(quail-defrule "l" ?,LT(B)
(quail-defrule ";" ?,LV(B)
(quail-defrule "'" ?,Lm(B)
(quail-defrule "\\" ?\\)
(quail-defrule "z" ?,Lo(B)
(quail-defrule "x" ?,Lg(B)
(quail-defrule "c" ?,La(B)
(quail-defrule "v" ?,L\(B)
(quail-defrule "b" ?,LX(B)
(quail-defrule "n" ?,Lb(B)
(quail-defrule "m" ?,Ll(B)
(quail-defrule "," ?,LQ(B)
(quail-defrule "." ?,Ln(B)
(quail-defrule "/" ?/)

(quail-defrule "!" ?!)
(quail-defrule "@" ?@)
(quail-defrule "#" ?#)
(quail-defrule "$" ?\")
(quail-defrule "%" ?:)
(quail-defrule "^" ?,)
(quail-defrule "&" ?.)
(quail-defrule "*" ?*)
(quail-defrule "(" ?()
(quail-defrule ")" ?))
(quail-defrule "_" ?_)
(quail-defrule "+" ?+)
(quail-defrule "~" ?,L!(B)
(quail-defrule "Q" ?,L9(B)
(quail-defrule "W" ?,LF(B)
(quail-defrule "E" ?,LC(B)
(quail-defrule "R" ?,L:(B)
(quail-defrule "T" ?,L5(B)
(quail-defrule "Y" ?,L=(B)
(quail-defrule "U" ?,L3(B)
(quail-defrule "I" ?,LH(B)
(quail-defrule "O" ?,LI(B)
(quail-defrule "P" ?,L7(B)
(quail-defrule "{" ?,LE(B)
(quail-defrule "}" ?,LJ(B)
(quail-defrule "A" ?,LD(B)
(quail-defrule "S" ?,LK(B)
(quail-defrule "D" ?,L2(B)
(quail-defrule "F" ?,L0(B)
(quail-defrule "G" ?,L?(B)
(quail-defrule "H" ?,L@(B)
(quail-defrule "J" ?,L>(B)
(quail-defrule "K" ?,L;(B)
(quail-defrule "L" ?,L4(B)
(quail-defrule ":" ?,L6(B)
(quail-defrule "\"" ?,LM(B)
(quail-defrule "|" ?|)
(quail-defrule "Z" ?,LO(B)
(quail-defrule "X" ?,LG(B)
(quail-defrule "C" ?,LA(B)
(quail-defrule "V" ?,L<(B)
(quail-defrule "B" ?,L8(B)
(quail-defrule "N" ?,LB(B)
(quail-defrule "M" ?,LL(B)
(quail-defrule "<" ?,L1(B)
(quail-defrule ">" ?,LN(B)
(quail-defrule "?" ??)

;;

(quail-define-package "jis-ruassian" "$B'+'8'5','&'/(B" nil
		      "JIS X0208.1983 encoding.

The layout is same as jcuken, but uses JIS characters." nil t t t t)

;;  1! 2@ 3# 4" 5: 6, 7. 8* 9( 0) -_ =+ ,L!(B
;;   ,L9(B  ,LF(B  ,LC(B  ,L:(B  ,L5(B  ,L=(B  ,L3(B  ,LH(B  ,LI(B  ,L7(B  ,LE(B  ,Lj(B
;;    ,LD(B  ,LK(B  ,L2(B  ,L0(B  ,L?(B  ,L@(B  ,L>(B  ,L;(B  ,L4(B  ,L6(B  ,LM(B
;;     ,LO(B  ,LG(B  ,LA(B  ,L<(B  ,L8(B  ,LB(B  ,LL(B  ,L1(B  ,LN(B  /?

(quail-defrule "1" ?$B#1(B)
(quail-defrule "2" ?$B#2(B)
(quail-defrule "3" ?$B#3(B)
(quail-defrule "4" ?$B#4(B)
(quail-defrule "5" ?$B#5(B)
(quail-defrule "6" ?$B#6(B)
(quail-defrule "7" ?$B#7(B)
(quail-defrule "8" ?$B#8(B)
(quail-defrule "9" ?$B#9(B)
(quail-defrule "0" ?$B#0(B)
(quail-defrule "-" ?$B!](B)
(quail-defrule "=" ?$B!a(B)
(quail-defrule "`" ?$B'W(B)
(quail-defrule "q" ?$B'[(B)
(quail-defrule "w" ?$B'h(B)
(quail-defrule "e" ?$B'e(B)
(quail-defrule "r" ?$B'\(B)
(quail-defrule "t" ?$B'V(B)
(quail-defrule "y" ?$B'_(B)
(quail-defrule "u" ?$B'T(B)
(quail-defrule "i" ?$B'j(B)
(quail-defrule "o" ?$B'k(B)
(quail-defrule "p" ?$B'Y(B)
(quail-defrule "[" ?$B'g(B)
(quail-defrule "]" ?$B'l(B)
(quail-defrule "a" ?$B'f(B)
(quail-defrule "s" ?$B'm(B)
(quail-defrule "d" ?$B'S(B)
(quail-defrule "f" ?$B'Q(B)
(quail-defrule "g" ?$B'a(B)
(quail-defrule "h" ?$B'b(B)
(quail-defrule "j" ?$B'`(B)
(quail-defrule "k" ?$B'](B)
(quail-defrule "l" ?$B'U(B)
(quail-defrule ";" ?$B'X(B)
(quail-defrule "'" ?$B'o(B)
(quail-defrule "\\" ?$B!@(B)
(quail-defrule "z" ?$B'q(B)
(quail-defrule "x" ?$B'i(B)
(quail-defrule "c" ?$B'c(B)
(quail-defrule "v" ?$B'^(B)
(quail-defrule "b" ?$B'Z(B)
(quail-defrule "n" ?$B'd(B)
(quail-defrule "m" ?$B'n(B)
(quail-defrule "," ?$B'R(B)
(quail-defrule "." ?$B'p(B)
(quail-defrule "/" ?$B!?(B)

(quail-defrule "!" ?$B!*(B)
(quail-defrule "@" ?$B!w(B)
(quail-defrule "#" ?$B!t(B)
(quail-defrule "$" ?$B!I(B)
(quail-defrule "%" ?$B!'(B)
(quail-defrule "^" ?$B!$(B)
(quail-defrule "&" ?$B!%(B)
(quail-defrule "*" ?$B!v(B)
(quail-defrule "(" ?$B!J(B)
(quail-defrule ")" ?$B!K(B)
(quail-defrule "_" ?$B!2(B)
(quail-defrule "+" ?$B!\(B)
(quail-defrule "~" ?$B''(B)
(quail-defrule "Q" ?$B'+(B)
(quail-defrule "W" ?$B'8(B)
(quail-defrule "E" ?$B'5(B)
(quail-defrule "R" ?$B',(B)
(quail-defrule "T" ?$B'&(B)
(quail-defrule "Y" ?$B'/(B)
(quail-defrule "U" ?$B'$(B)
(quail-defrule "I" ?$B':(B)
(quail-defrule "O" ?$B';(B)
(quail-defrule "P" ?$B')(B)
(quail-defrule "{" ?$B'7(B)
(quail-defrule "}" ?$B'<(B)
(quail-defrule "A" ?$B'6(B)
(quail-defrule "S" ?$B'=(B)
(quail-defrule "D" ?$B'#(B)
(quail-defrule "F" ?$B'!(B)
(quail-defrule "G" ?$B'1(B)
(quail-defrule "H" ?$B'2(B)
(quail-defrule "J" ?$B'0(B)
(quail-defrule "K" ?$B'-(B)
(quail-defrule "L" ?$B'%(B)
(quail-defrule ":" ?$B'((B)
(quail-defrule "\"" ?$B'?(B)
(quail-defrule "|" ?$B!C(B)
(quail-defrule "Z" ?$B'A(B)
(quail-defrule "X" ?$B'9(B)
(quail-defrule "C" ?$B'3(B)
(quail-defrule "V" ?$B'.(B)
(quail-defrule "B" ?$B'*(B)
(quail-defrule "N" ?$B'4(B)
(quail-defrule "M" ?$B'>(B)
(quail-defrule "<" ?$B'"(B)
(quail-defrule ">" ?$B'@(B)
(quail-defrule "?" ?$B!)(B)

;;

(quail-define-package "macedonian" ",L)*5@B7(B-,L#,(B" nil
  "Cyrillic (ISO 8859-5) encoding.

This layout is based on JUS.I.K1.004." nil t t t t)

;;  1! 2" 3# 4$ 5% 6& 7' 8( 9) 0= /? +* <>
;;   ,L)(B  ,L*(B  ,L5(B  ,L@(B  ,LB(B  ,L7(B  ,LC(B  ,L8(B  ,L>(B  ,L?(B  ,LH(B  ,L#(B
;;    ,L0(B  ,LA(B  ,L4(B  ,LD(B  ,L3(B  ,LE(B  ,L((B  ,L:(B  ,L;(B  ,LG(B  ,L,(B  ,L6(B
;;     ,L%(B  ,L/(B  ,LF(B  ,L2(B  ,L1(B  ,L=(B  ,L<(B  ,; .: -_

(quail-defrule "1" ?1)
(quail-defrule "2" ?2)
(quail-defrule "3" ?3)
(quail-defrule "4" ?4)
(quail-defrule "5" ?5)
(quail-defrule "6" ?6)
(quail-defrule "7" ?7)
(quail-defrule "8" ?8)
(quail-defrule "9" ?9)
(quail-defrule "0" ?0)
(quail-defrule "-" ?/)
(quail-defrule "=" ?+)
(quail-defrule "`" ?<)
(quail-defrule "q" ?,Ly(B)
(quail-defrule "w" ?,Lz(B)
(quail-defrule "e" ?,LU(B)
(quail-defrule "r" ?,L`(B)
(quail-defrule "t" ?,Lb(B)
(quail-defrule "y" ?,LW(B)
(quail-defrule "u" ?,Lc(B)
(quail-defrule "i" ?,LX(B)
(quail-defrule "o" ?,L^(B)
(quail-defrule "p" ?,L_(B)
(quail-defrule "[" ?,Lh(B)
(quail-defrule "]" ?,Ls(B)
(quail-defrule "a" ?,LP(B)
(quail-defrule "s" ?,La(B)
(quail-defrule "d" ?,LT(B)
(quail-defrule "f" ?,Ld(B)
(quail-defrule "g" ?,LS(B)
(quail-defrule "h" ?,Le(B)
(quail-defrule "j" ?,Lx(B)
(quail-defrule "k" ?,LZ(B)
(quail-defrule "l" ?,L[(B)
(quail-defrule ";" ?,Lg(B)
(quail-defrule "'" ?,L|(B)
(quail-defrule "\\" ?,LV(B)
(quail-defrule "z" ?,Lu(B)
(quail-defrule "x" ?,L(B)
(quail-defrule "c" ?,Lf(B)
(quail-defrule "v" ?,LR(B)
(quail-defrule "b" ?,LQ(B)
(quail-defrule "n" ?,L](B)
(quail-defrule "m" ?,L\(B)
(quail-defrule "," ?,)
(quail-defrule "." ?.)
(quail-defrule "/" ?-)

(quail-defrule "!" ?!)
(quail-defrule "@" ?\")
(quail-defrule "#" ?#)
(quail-defrule "$" ?$)
(quail-defrule "%" ?%)
(quail-defrule "^" ?&)
(quail-defrule "&" ?')
(quail-defrule "*" ?()
(quail-defrule "(" ?))
(quail-defrule ")" ?=)
(quail-defrule "_" ??)
(quail-defrule "+" ?*)
(quail-defrule "~" ?>)
(quail-defrule "Q" ?,L)(B)
(quail-defrule "W" ?,L*(B)
(quail-defrule "E" ?,L5(B)
(quail-defrule "R" ?,L@(B)
(quail-defrule "T" ?,LB(B)
(quail-defrule "Y" ?,L7(B)
(quail-defrule "U" ?,LC(B)
(quail-defrule "I" ?,L8(B)
(quail-defrule "O" ?,L>(B)
(quail-defrule "P" ?,L?(B)
(quail-defrule "{" ?,LH(B)
(quail-defrule "}" ?,L#(B)
(quail-defrule "A" ?,L0(B)
(quail-defrule "S" ?,LA(B)
(quail-defrule "D" ?,L4(B)
(quail-defrule "F" ?,LD(B)
(quail-defrule "G" ?,L3(B)
(quail-defrule "H" ?,LE(B)
(quail-defrule "J" ?,L((B)
(quail-defrule "K" ?,L:(B)
(quail-defrule "L" ?,L;(B)
(quail-defrule ":" ?,LG(B)
(quail-defrule "\"" ?,L,(B)
(quail-defrule "|" ?,L6(B)
(quail-defrule "Z" ?,L%(B)
(quail-defrule "X" ?,L/(B)
(quail-defrule "C" ?,LF(B)
(quail-defrule "V" ?,L2(B)
(quail-defrule "B" ?,L1(B)
(quail-defrule "N" ?,L=(B)
(quail-defrule "M" ?,L<(B)
(quail-defrule "<" ?;)
(quail-defrule ">" ?:)
(quail-defrule "?" ?_)

;;

(quail-define-package "serbian" ",L)*5@B7(B-,L"+(B" nil
  "Cyrillic (ISO 8859-5) encoding.

This layout is based on JUS.I.K1.005." nil t t t t)

;;  1! 2" 3# 4$ 5% 6& 7' 8( 9) 0= /? +* <>
;;   ,L)(B  ,L*(B  ,L5(B  ,L@(B  ,LB(B  ,L7(B  ,LC(B  ,L8(B  ,L>(B  ,L?(B  ,LH(B  ,L"(B
;;    ,L0(B  ,LA(B  ,L4(B  ,LD(B  ,L3(B  ,LE(B  ,L((B  ,L:(B  ,L;(B  ,LG(B  ,L+(B  ,L6(B
;;     ,L%(B  ,L/(B  ,LF(B  ,L2(B  ,L1(B  ,L=(B  ,L<(B  ,; .: -_

(quail-defrule "1" ?1)
(quail-defrule "2" ?2)
(quail-defrule "3" ?3)
(quail-defrule "4" ?4)
(quail-defrule "5" ?5)
(quail-defrule "6" ?6)
(quail-defrule "7" ?7)
(quail-defrule "8" ?8)
(quail-defrule "9" ?9)
(quail-defrule "0" ?0)
(quail-defrule "-" ?/)
(quail-defrule "=" ?+)
(quail-defrule "`" ?<)
(quail-defrule "q" ?,Ly(B)
(quail-defrule "w" ?,Lz(B)
(quail-defrule "e" ?,LU(B)
(quail-defrule "r" ?,L`(B)
(quail-defrule "t" ?,Lb(B)
(quail-defrule "y" ?,LW(B)
(quail-defrule "u" ?,Lc(B)
(quail-defrule "i" ?,LX(B)
(quail-defrule "o" ?,L^(B)
(quail-defrule "p" ?,L_(B)
(quail-defrule "[" ?,Lh(B)
(quail-defrule "]" ?,Lr(B)
(quail-defrule "a" ?,LP(B)
(quail-defrule "s" ?,La(B)
(quail-defrule "d" ?,LT(B)
(quail-defrule "f" ?,Ld(B)
(quail-defrule "g" ?,LS(B)
(quail-defrule "h" ?,Le(B)
(quail-defrule "j" ?,Lx(B)
(quail-defrule "k" ?,LZ(B)
(quail-defrule "l" ?,L[(B)
(quail-defrule ";" ?,Lg(B)
(quail-defrule "'" ?,L{(B)
(quail-defrule "\\" ?,LV(B)
(quail-defrule "z" ?,Lu(B)
(quail-defrule "x" ?,L(B)
(quail-defrule "c" ?,Lf(B)
(quail-defrule "v" ?,LR(B)
(quail-defrule "b" ?,LQ(B)
(quail-defrule "n" ?,L](B)
(quail-defrule "m" ?,L\(B)
(quail-defrule "," ?,)
(quail-defrule "." ?.)
(quail-defrule "/" ?-)

(quail-defrule "!" ?!)
(quail-defrule "@" ?\")
(quail-defrule "#" ?#)
(quail-defrule "$" ?$)
(quail-defrule "%" ?%)
(quail-defrule "^" ?&)
(quail-defrule "&" ?')
(quail-defrule "*" ?()
(quail-defrule "(" ?))
(quail-defrule ")" ?=)
(quail-defrule "_" ??)
(quail-defrule "+" ?*)
(quail-defrule "~" ?>)
(quail-defrule "Q" ?,L)(B)
(quail-defrule "W" ?,L*(B)
(quail-defrule "E" ?,L5(B)
(quail-defrule "R" ?,L@(B)
(quail-defrule "T" ?,LB(B)
(quail-defrule "Y" ?,L7(B)
(quail-defrule "U" ?,LC(B)
(quail-defrule "I" ?,L8(B)
(quail-defrule "O" ?,L>(B)
(quail-defrule "P" ?,L?(B)
(quail-defrule "{" ?,LH(B)
(quail-defrule "}" ?,L"(B)
(quail-defrule "A" ?,L0(B)
(quail-defrule "S" ?,LA(B)
(quail-defrule "D" ?,L4(B)
(quail-defrule "F" ?,LD(B)
(quail-defrule "G" ?,L3(B)
(quail-defrule "H" ?,LE(B)
(quail-defrule "J" ?,L((B)
(quail-defrule "K" ?,L:(B)
(quail-defrule "L" ?,L;(B)
(quail-defrule ":" ?,LG(B)
(quail-defrule "\"" ?,L+(B)
(quail-defrule "|" ?,L6(B)
(quail-defrule "Z" ?,L%(B)
(quail-defrule "X" ?,L/(B)
(quail-defrule "C" ?,LF(B)
(quail-defrule "V" ?,L2(B)
(quail-defrule "B" ?,L1(B)
(quail-defrule "N" ?,L=(B)
(quail-defrule "M" ?,L<(B)
(quail-defrule "<" ?;)
(quail-defrule ">" ?:)
(quail-defrule "?" ?_)

;;

(quail-define-package "beylorussian" ",L)*5@B7(B-,L&.(B" nil
  "Cyrillic (ISO 8859-5) encoding." nil t t t t)

;;  1! 2" 3# 4$ 5% 6& 7' 8( 9) 0= /? +* <>
;;   ,L)(B  ,L*(B  ,L5(B  ,L@(B  ,LB(B  ,L7(B  ,LC(B  ,L8(B  ,L>(B  ,L?(B  ,LH(B  ,L&(B
;;    ,L0(B  ,LA(B  ,L4(B  ,LD(B  ,L3(B  ,LE(B  ,L((B  ,L:(B  ,L;(B  ,LG(B  ,L.(B  ,L6(B
;;     ,L%(B  ,L/(B  ,LF(B  ,L2(B  ,L1(B  ,L=(B  ,L<(B  ,; .: -_

(quail-defrule "1" ?1)
(quail-defrule "2" ?2)
(quail-defrule "3" ?3)
(quail-defrule "4" ?4)
(quail-defrule "5" ?5)
(quail-defrule "6" ?6)
(quail-defrule "7" ?7)
(quail-defrule "8" ?8)
(quail-defrule "9" ?9)
(quail-defrule "0" ?0)
(quail-defrule "-" ?/)
(quail-defrule "=" ?+)
(quail-defrule "`" ?<)
(quail-defrule "q" ?,Ly(B)
(quail-defrule "w" ?,Lz(B)
(quail-defrule "e" ?,LU(B)
(quail-defrule "r" ?,L`(B)
(quail-defrule "t" ?,Lb(B)
(quail-defrule "y" ?,LW(B)
(quail-defrule "u" ?,Lc(B)
(quail-defrule "i" ?,LX(B)
(quail-defrule "o" ?,L^(B)
(quail-defrule "p" ?,L_(B)
(quail-defrule "[" ?,Lh(B)
(quail-defrule "]" ?,Lv(B)
(quail-defrule "a" ?,LP(B)
(quail-defrule "s" ?,La(B)
(quail-defrule "d" ?,LT(B)
(quail-defrule "f" ?,Ld(B)
(quail-defrule "g" ?,LS(B)
(quail-defrule "h" ?,Le(B)
(quail-defrule "j" ?,Lx(B)
(quail-defrule "k" ?,LZ(B)
(quail-defrule "l" ?,L[(B)
(quail-defrule ";" ?,Lg(B)
(quail-defrule "'" ?,L~(B)
(quail-defrule "\\" ?,LV(B)
(quail-defrule "z" ?,Lu(B)
(quail-defrule "x" ?,L(B)
(quail-defrule "c" ?,Lf(B)
(quail-defrule "v" ?,LR(B)
(quail-defrule "b" ?,LQ(B)
(quail-defrule "n" ?,L](B)
(quail-defrule "m" ?,L\(B)
(quail-defrule "," ?,)
(quail-defrule "." ?.)
(quail-defrule "/" ?-)

(quail-defrule "!" ?!)
(quail-defrule "@" ?\")
(quail-defrule "#" ?#)
(quail-defrule "$" ?$)
(quail-defrule "%" ?%)
(quail-defrule "^" ?&)
(quail-defrule "&" ?')
(quail-defrule "*" ?()
(quail-defrule "(" ?))
(quail-defrule ")" ?=)
(quail-defrule "_" ??)
(quail-defrule "+" ?*)
(quail-defrule "~" ?>)
(quail-defrule "Q" ?,L)(B)
(quail-defrule "W" ?,L*(B)
(quail-defrule "E" ?,L5(B)
(quail-defrule "R" ?,L@(B)
(quail-defrule "T" ?,LB(B)
(quail-defrule "Y" ?,L7(B)
(quail-defrule "U" ?,LC(B)
(quail-defrule "I" ?,L8(B)
(quail-defrule "O" ?,L>(B)
(quail-defrule "P" ?,L?(B)
(quail-defrule "{" ?,LH(B)
(quail-defrule "}" ?,L&(B)
(quail-defrule "A" ?,L0(B)
(quail-defrule "S" ?,LA(B)
(quail-defrule "D" ?,L4(B)
(quail-defrule "F" ?,LD(B)
(quail-defrule "G" ?,L3(B)
(quail-defrule "H" ?,LE(B)
(quail-defrule "J" ?,L((B)
(quail-defrule "K" ?,L:(B)
(quail-defrule "L" ?,L;(B)
(quail-defrule ":" ?,LG(B)
(quail-defrule "\"" ?,L.(B)
(quail-defrule "|" ?,L6(B)
(quail-defrule "Z" ?,L%(B)
(quail-defrule "X" ?,L/(B)
(quail-defrule "C" ?,LF(B)
(quail-defrule "V" ?,L2(B)
(quail-defrule "B" ?,L1(B)
(quail-defrule "N" ?,L=(B)
(quail-defrule "M" ?,L<(B)
(quail-defrule "<" ?;)
(quail-defrule ">" ?:)
(quail-defrule "?" ?_)

;;

(quail-define-package "ukrainian" ",L$'5@B7(B-,L&.(B" nil
  "Cyrillic (ISO 8859-5) encoding.

Sorry, but 'ghe with upturn' is not included in ISO 8859-5" nil t t t t)

;;  1! 2" 3# 4$ 5% 6& 7' 8( 9) 0= /? +* <>
;;   ,L$(B  ,L'(B  ,L5(B  ,L@(B  ,LB(B  ,L7(B  ,LC(B  ,L8(B  ,L>(B  ,L?(B  ,LH(B  ,L&(B
;;    ,L0(B  ,LA(B  ,L4(B  ,LD(B  ,L3(B  ,LE(B  ,L((B  ,L:(B  ,L;(B  ,LG(B  ,L.(B  ,L6(B
;;     ,L%(B  ,L/(B  ,LF(B  ,L2(B  ,L1(B  ,L=(B  ,L<(B  ,; .: -_

(quail-defrule "1" ?1)
(quail-defrule "2" ?2)
(quail-defrule "3" ?3)
(quail-defrule "4" ?4)
(quail-defrule "5" ?5)
(quail-defrule "6" ?6)
(quail-defrule "7" ?7)
(quail-defrule "8" ?8)
(quail-defrule "9" ?9)
(quail-defrule "0" ?0)
(quail-defrule "-" ?/)
(quail-defrule "=" ?+)
(quail-defrule "`" ?<)
(quail-defrule "q" ?,Lt(B)
(quail-defrule "w" ?,Lw(B)
(quail-defrule "e" ?,LU(B)
(quail-defrule "r" ?,L`(B)
(quail-defrule "t" ?,Lb(B)
(quail-defrule "y" ?,LW(B)
(quail-defrule "u" ?,Lc(B)
(quail-defrule "i" ?,LX(B)
(quail-defrule "o" ?,L^(B)
(quail-defrule "p" ?,L_(B)
(quail-defrule "[" ?,Lh(B)
(quail-defrule "]" ?,Lv(B)
(quail-defrule "a" ?,LP(B)
(quail-defrule "s" ?,La(B)
(quail-defrule "d" ?,LT(B)
(quail-defrule "f" ?,Ld(B)
(quail-defrule "g" ?,LS(B)
(quail-defrule "h" ?,Le(B)
(quail-defrule "j" ?,Lx(B)
(quail-defrule "k" ?,LZ(B)
(quail-defrule "l" ?,L[(B)
(quail-defrule ";" ?,Lg(B)
(quail-defrule "'" ?,L~(B)
(quail-defrule "\\" ?,LV(B)
(quail-defrule "z" ?,Lu(B)
(quail-defrule "x" ?,L(B)
(quail-defrule "c" ?,Lf(B)
(quail-defrule "v" ?,LR(B)
(quail-defrule "b" ?,LQ(B)
(quail-defrule "n" ?,L](B)
(quail-defrule "m" ?,L\(B)
(quail-defrule "," ?,)
(quail-defrule "." ?.)
(quail-defrule "/" ?-)

(quail-defrule "!" ?!)
(quail-defrule "@" ?\")
(quail-defrule "#" ?#)
(quail-defrule "$" ?$)
(quail-defrule "%" ?%)
(quail-defrule "^" ?&)
(quail-defrule "&" ?')
(quail-defrule "*" ?()
(quail-defrule "(" ?))
(quail-defrule ")" ?=)
(quail-defrule "_" ??)
(quail-defrule "+" ?*)
(quail-defrule "~" ?>)
(quail-defrule "Q" ?,L$(B)
(quail-defrule "W" ?,L'(B)
(quail-defrule "E" ?,L5(B)
(quail-defrule "R" ?,L@(B)
(quail-defrule "T" ?,LB(B)
(quail-defrule "Y" ?,L7(B)
(quail-defrule "U" ?,LC(B)
(quail-defrule "I" ?,L8(B)
(quail-defrule "O" ?,L>(B)
(quail-defrule "P" ?,L?(B)
(quail-defrule "{" ?,LH(B)
(quail-defrule "}" ?,L&(B)
(quail-defrule "A" ?,L0(B)
(quail-defrule "S" ?,LA(B)
(quail-defrule "D" ?,L4(B)
(quail-defrule "F" ?,LD(B)
(quail-defrule "G" ?,L3(B)
(quail-defrule "H" ?,LE(B)
(quail-defrule "J" ?,L((B)
(quail-defrule "K" ?,L:(B)
(quail-defrule "L" ?,L;(B)
(quail-defrule ":" ?,LG(B)
(quail-defrule "\"" ?,L.(B)
(quail-defrule "|" ?,L6(B)
(quail-defrule "Z" ?,L%(B)
(quail-defrule "X" ?,L/(B)
(quail-defrule "C" ?,LF(B)
(quail-defrule "V" ?,L2(B)
(quail-defrule "B" ?,L1(B)
(quail-defrule "N" ?,L=(B)
(quail-defrule "M" ?,L<(B)
(quail-defrule "<" ?;)
(quail-defrule ">" ?:)
(quail-defrule "?" ?_)

;;

(quail-define-package "yawerty" ",LO25@BK(B" nil "Cyrillic (ISO 8859-5) encoding.

This layout is based on Roman transcription.
When preceded by a '/', the second and the third rows (number key row) change
as follows.

  keytop | Q  W  E  R  T  Y  U  I  O  P  A  S  D
 --------+---------------------------------------
  input  | ,L"(B  ,L#(B  ,L$(B  ,L%(B  ,L&(B  ,L'(B  ,L((B  ,L)(B  ,L*(B  ,L+(B  ,L,(B  ,L.(B  ,L/(B
" nil t t t t)

;;  1! 2,Lq(B 3,Lj(B 4,L!(B 5% 6^ 7& 8* 9( 0) -_ ,LG(B  ,LN(B
;;   ,LO(B  ,L2(B  ,L5(B  ,L@(B  ,LB(B  ,LK(B  ,LC(B  ,L8(B  ,L>(B  ,L?(B  ,LH(B  ,LI(B
;;    ,L0(B  ,LA(B  ,L4(B  ,LD(B  ,L3(B  ,LE(B  ,L9(B  ,L:(B  ,L;(B  ;: '" ,LM(B
;;     ,L7(B  ,LL(B  ,LF(B  ,L6(B  ,L1(B  ,L=(B  ,L<(B  ,< .> /?

;;  1! 2,Lq(B 3,Lj(B 4,L!(B 5% 6^ 7& 8* 9( 0) -_ ,LG(B  ,LN(B
;;   ,L"(B  ,L#(B  ,L$(B  ,L%(B  ,L&(B  ,L'(B  ,L((B  ,L)(B  ,L*(B  ,L+(B  ,LH(B  ,LI(B
;;    ,L,(B  ,L.(B  ,L/(B  ,LD(B  ,L3(B  ,LE(B  ,L9(B  ,L:(B  ,L;(B  ;: '" ,LM(B
;;     ,L7(B  ,LL(B  ,LF(B  ,L6(B  ,L1(B  ,L=(B  ,L<(B  ,< .> /?

(quail-defrule "1" ?1)
(quail-defrule "2" ?2)
(quail-defrule "3" ?3)
(quail-defrule "4" ?4)
(quail-defrule "5" ?5)
(quail-defrule "6" ?6)
(quail-defrule "7" ?7)
(quail-defrule "8" ?8)
(quail-defrule "9" ?9)
(quail-defrule "0" ?0)
(quail-defrule "-" ?-)
(quail-defrule "=" ?,Lg(B)
(quail-defrule "`" ?,Ln(B)
(quail-defrule "q" ?,Lo(B)
(quail-defrule "w" ?,LR(B)
(quail-defrule "e" ?,LU(B)
(quail-defrule "r" ?,L`(B)
(quail-defrule "t" ?,Lb(B)
(quail-defrule "y" ?,Lk(B)
(quail-defrule "u" ?,Lc(B)
(quail-defrule "i" ?,LX(B)
(quail-defrule "o" ?,L^(B)
(quail-defrule "p" ?,L_(B)
(quail-defrule "[" ?,Lh(B)
(quail-defrule "]" ?,Li(B)
(quail-defrule "a" ?,LP(B)
(quail-defrule "s" ?,La(B)
(quail-defrule "d" ?,LT(B)
(quail-defrule "f" ?,Ld(B)
(quail-defrule "g" ?,LS(B)
(quail-defrule "h" ?,Le(B)
(quail-defrule "j" ?,LY(B)
(quail-defrule "k" ?,LZ(B)
(quail-defrule "l" ?,L[(B)
(quail-defrule ";" ?;)
(quail-defrule "'" ?')
(quail-defrule "\\" ?,Lm(B)
(quail-defrule "z" ?,LW(B)
(quail-defrule "x" ?,Ll(B)
(quail-defrule "c" ?,Lf(B)
(quail-defrule "v" ?,LV(B)
(quail-defrule "b" ?,LQ(B)
(quail-defrule "n" ?,L](B)
(quail-defrule "m" ?,L\(B)
(quail-defrule "," ?,)
(quail-defrule "." ?.)
(quail-defrule "/" ?/)

(quail-defrule "!" ?!)
(quail-defrule "@" ?,Lq(B)
(quail-defrule "#" ?,Lj(B)
(quail-defrule "$" ?,L!(B)
(quail-defrule "%" ?%)
(quail-defrule "^" ?^)
(quail-defrule "&" ?&)
(quail-defrule "*" ?*)
(quail-defrule "(" ?()
(quail-defrule ")" ?))
(quail-defrule "_" ?_)
(quail-defrule "+" ?,LG(B)
(quail-defrule "~" ?,LN(B)
(quail-defrule "Q" ?,LO(B)
(quail-defrule "W" ?,L2(B)
(quail-defrule "E" ?,L5(B)
(quail-defrule "R" ?,L@(B)
(quail-defrule "T" ?,LB(B)
(quail-defrule "Y" ?,LK(B)
(quail-defrule "U" ?,LC(B)
(quail-defrule "I" ?,L8(B)
(quail-defrule "O" ?,L>(B)
(quail-defrule "P" ?,L?(B)
(quail-defrule "{" ?,LH(B)
(quail-defrule "}" ?,LI(B)
(quail-defrule "A" ?,L0(B)
(quail-defrule "S" ?,LA(B)
(quail-defrule "D" ?,L4(B)
(quail-defrule "F" ?,LD(B)
(quail-defrule "G" ?,L3(B)
(quail-defrule "H" ?,LE(B)
(quail-defrule "J" ?,L9(B)
(quail-defrule "K" ?,L:(B)
(quail-defrule "L" ?,L;(B)
(quail-defrule ":" ?:)
(quail-defrule "\"" ?\")
(quail-defrule "|" ?,LM(B)
(quail-defrule "Z" ?,L7(B)
(quail-defrule "X" ?,LL(B)
(quail-defrule "C" ?,LF(B)
(quail-defrule "V" ?,L6(B)
(quail-defrule "B" ?,L1(B)
(quail-defrule "N" ?,L=(B)
(quail-defrule "M" ?,L<(B)
(quail-defrule "<" ?<)
(quail-defrule ">" ?>)
(quail-defrule "?" ??)

(quail-defrule "/q" ?,Lr(B)
(quail-defrule "/w" ?,Ls(B)
(quail-defrule "/e" ?,Lt(B)
(quail-defrule "/r" ?,Lu(B)
(quail-defrule "/t" ?,Lv(B)
(quail-defrule "/y" ?,Lw(B)
(quail-defrule "/u" ?,Lx(B)
(quail-defrule "/i" ?,Ly(B)
(quail-defrule "/o" ?,Lz(B)
(quail-defrule "/p" ?,L{(B)
(quail-defrule "/a" ?,L|(B)
(quail-defrule "/s" ?,L~(B)
(quail-defrule "/d" ?,L(B)

(quail-defrule "/Q" ?,L"(B)
(quail-defrule "/W" ?,L#(B)
(quail-defrule "/E" ?,L$(B)
(quail-defrule "/R" ?,L%(B)
(quail-defrule "/T" ?,L&(B)
(quail-defrule "/Y" ?,L'(B)
(quail-defrule "/U" ?,L((B)
(quail-defrule "/I" ?,L)(B)
(quail-defrule "/O" ?,L*(B)
(quail-defrule "/P" ?,L+(B)
(quail-defrule "/A" ?,L,(B)
(quail-defrule "/S" ?,L.(B)
(quail-defrule "/D" ?,L/(B)
