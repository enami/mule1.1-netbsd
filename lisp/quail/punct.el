;; Copyright (C) 1992 Free Software Foundation, Inc.
;; This file is part of Mule (MULtilingual Enhancement of GNU Emacs).
;; This file contains Chinese characters.

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

;; 92.3.6   Written for Mule Ver.0.9.0 by K.Handa <handa@etl.go.jp>
;;	Original table is from cxterm/dict/tit/Punct.tit.
;; 92.6.24  modified for Mule Ver.0.9.5 by K.Handa <handa@etl.go.jp>
;;	To cope with new version of quail.

;; # HANZI input table for cxterm
;; # To be used by cxterm, convert me to .cit format first
;; # .cit version 1
;; ENCODE:	GB
;; MULTICHOICE:	YES
;; PROMPT:	$A::WVJdHk!K1j5c7{:E!K(B 
;; #
;; COMMENT	Copyright 1991 by Yongguang Zhang.
;; COMMENT Permission to use/modify/copy for any purpose is hereby granted.
;; COMMENT Absolutely no fee and no warranties.
;; COMMENT
;; COMMENT	use <CTRL-f> to move to the right
;; COMMENT	use <CTRL-b> to move to the left
;; # define keys
;; VALIDINPUTKEY:	"\043$%&'()*+,-./0123456789:;<=>?@[\134]^_`abcdefghijklm
;; VALIDINPUTKEY:	nopqrstuvwxyz|~
;; SELECTKEY:	1\040
;; SELECTKEY:	2
;; SELECTKEY:	3
;; SELECTKEY:	4
;; SELECTKEY:	5
;; SELECTKEY:	6
;; SELECTKEY:	7
;; SELECTKEY:	8
;; SELECTKEY:	9
;; SELECTKEY:	0
;; BACKSPACE:	\010\177
;; DELETEALL:	\015\025
;; MOVERIGHT:	\006
;; MOVELEFT:	\002
;; REPEATKEY:	\020\022
;; # the following line must not be removed
;; BEGINDICTIONARY
;; #

(require 'quail)

(quail-define-package
 "punct" "$A1j5c7{:E(B" nil
 "$A::WVJdHk!K1j5c7{:E!K(B 

	Copyright 1991 by Yongguang Zhang.
 Permission to use/modify/copy for any purpose is hereby granted.
 Absolutely no fee and no warranties."
 *quail-mode-rich-map* nil nil nil nil t)

(quail-defrule "\""
	       '(?$A#"(B ?$A!0(B ?$A!1(B ?$A!e(B))
(quail-defrule "#"
	       '(?$A##(B))
(quail-defrule "$"
	       '(?$A#$(B ?$A!g(B ?$A!i(B ?$A!j(B))
(quail-defrule "%"
	       '(?$A#%(B ?$A!k(B))
(quail-defrule "'"
	       '(?$A#'(B ?$A!.(B ?$A!/(B ?$A!d(B))
(quail-defrule "("
	       '(?$A#((B ?$A!8(B ?$A!:(B))
(quail-defrule ")"
	       '(?$A#)(B ?$A!9(B ?$A!;(B))
(quail-defrule "*"
	       '(?$A#*(B ?$A!A(B ?$A!G(B ?$A!D(B ?$A!I(B))
(quail-defrule "+"
	       '(?$A#+(B ?$A!@(B ?$A!F(B ?$A!E(B ?$A!H(B))
(quail-defrule ","
	       '(?$A#,(B ?$A!"(B))
(quail-defrule "-"
	       '(?$A#-(B ?$A!%(B ?$A!*(B ?$A!+(B))
(quail-defrule "."
	       '(?$A#.(B ?$A!#(B ?$A!$(B ?$A!'(B ?$A!-(B ?$A!_(B ?$A!`(B ?$A!c(B ?$A!Q(B))
(quail-defrule "/"
	       '(?$A#/(B ?$A!B(B ?$A!L(B ?$A#\(B))
(quail-defrule "0"
	       '(?$A#0(B ?$A":(B ?$A"D(B ?$A"N(B ?$A"X(B ?$A"b(B ?$A"n(B ?$A"z(B))
(quail-defrule "1"
	       '(?$A#1(B ?$A"1(B ?$A";(B ?$A"E(B ?$A"O(B ?$A"Y(B ?$A"e(B ?$A"q(B))
(quail-defrule "2"
	       '(?$A#2(B ?$A"2(B ?$A"<(B ?$A"F(B ?$A"P(B ?$A"Z(B ?$A"f(B ?$A"r(B))
(quail-defrule "3"
	       '(?$A#3(B ?$A"3(B ?$A"=(B ?$A"G(B ?$A"Q(B ?$A"[(B ?$A"g(B ?$A"s(B))
(quail-defrule "4"
	       '(?$A#4(B ?$A"4(B ?$A">(B ?$A"H(B ?$A"R(B ?$A"\(B ?$A"h(B ?$A"t(B))
(quail-defrule "5"
	       '(?$A#5(B ?$A"5(B ?$A"?(B ?$A"I(B ?$A"S(B ?$A"](B ?$A"i(B ?$A"u(B))
(quail-defrule "6"
	       '(?$A#6(B ?$A"6(B ?$A"@(B ?$A"J(B ?$A"T(B ?$A"^(B ?$A"j(B ?$A"v(B))
(quail-defrule "7"
	       '(?$A#7(B ?$A"7(B ?$A"A(B ?$A"K(B ?$A"U(B ?$A"_(B ?$A"k(B ?$A"w(B))
(quail-defrule "8"
	       '(?$A#8(B ?$A"8(B ?$A"B(B ?$A"L(B ?$A"V(B ?$A"`(B ?$A"l(B ?$A"x(B))
(quail-defrule "9"
	       '(?$A#9(B ?$A"9(B ?$A"C(B ?$A"M(B ?$A"W(B ?$A"a(B ?$A"m(B ?$A"y(B))
(quail-defrule ":"
	       '(?$A#:(B ?$A!K(B))
(quail-defrule "<"
	       '(?$A#<(B ?$A!4(B ?$A!6(B ?$A!Z(B ?$A!\(B))
(quail-defrule "="
	       '(?$A#=(B ?$A!Y(B ?$A!V(B ?$A!T(B ?$A!U(B))
(quail-defrule ">"
	       '(?$A#>(B ?$A!5(B ?$A!7(B ?$A![(B ?$A!](B))
(quail-defrule "@"
	       '(?$A#@(B ?$A!Q(B))
(quail-defrule "["
	       '(?$A#[(B ?$A!2(B ?$A!<(B ?$A!>(B ?$A#{(B))
(quail-defrule "\\"
	       '(?$A#\(B ?$A#/(B))
(quail-defrule "]"
	       '(?$A#](B ?$A!3(B ?$A!=(B ?$A!?(B ?$A#}(B))
(quail-defrule "^"
	       '(?$A#^(B ?$A!&(B ?$A!P(B))
(quail-defrule "_"
	       '(?$A#_(B ?$A!M(B))
(quail-defrule "`"
	       '(?$A#`(B ?$A!.(B ?$A!/(B))
(quail-defrule "logo"
	       '(?$A!n(B ?$A!o(B ?$A!p(B ?$A!q(B ?$A!r(B ?$A!s(B ?$A!t(B ?$A!u(B ?$A!v(B ?$A!w(B
		 ?$A!x(B ?$A!y(B ?$A!z(B ?$A!{(B ?$A!|(B ?$A!}(B ?$A!~(B))
(quail-defrule "math"
	       '(?$A!@(B ?$A!A(B ?$A!B(B ?$A!C(B ?$A!D(B ?$A!E(B ?$A!F(B ?$A!G(B ?$A!H(B ?$A!I(B
		 ?$A!J(B ?$A!K(B ?$A!L(B ?$A!M(B ?$A!N(B ?$A!O(B ?$A!P(B ?$A!Q(B ?$A!R(B ?$A!S(B
		 ?$A!T(B ?$A!U(B ?$A!V(B ?$A!W(B ?$A!X(B ?$A!Y(B ?$A!Z(B ?$A![(B ?$A!\(B ?$A!](B
		 ?$A!^(B ?$A!_(B ?$A!`(B))
(quail-defrule "punct"
	       '(?$A!!(B ?$A!"(B ?$A!#(B ?$A!$(B ?$A!%(B ?$A!&(B ?$A!'(B ?$A!((B ?$A!)(B ?$A!*(B
		 ?$A!+(B ?$A!,(B ?$A!-(B ?$A!.(B ?$A!/(B ?$A!0(B ?$A!1(B ?$A!2(B ?$A!3(B ?$A!4(B
		 ?$A!5(B ?$A!6(B ?$A!7(B ?$A!8(B ?$A!9(B ?$A!:(B ?$A!;(B ?$A!<(B ?$A!=(B ?$A!>(B
		 ?$A!?(B))
(quail-defrule "symbol"
	       '(?$A!a(B ?$A!b(B ?$A!c(B ?$A!d(B ?$A!e(B ?$A!f(B ?$A!g(B ?$A!h(B ?$A!i(B ?$A!j(B
		 ?$A!k(B ?$A!l(B ?$A!m(B))
(quail-defrule "|"
	       '(?$A#|(B ?$A!,(B ?$A!N(B))
(quail-defrule "~"
	       '(?$A#~(B ?$A!+(B ?$A!W(B ?$A!X(B ?$A!^(B))
