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
;;	Original table is from cxterm/dict/tit/QJ.tit.
;; 92.6.24  modified for Mule Ver.0.9.5 by K.Handa <handa@etl.go.jp>
;;	To cope with new version of quail.

;; # HANZI input table for cxterm
;; # To be used by cxterm, convert me to .cit format first
;; # .cit version 1
;; ENCODE:	GB
;; MULTICHOICE:	NO
;; PROMPT:	$A::WVJdHk!KH+=G!K(B 
;; #
;; COMMENT Copyright 1991 by Yongguang Zhang.      (ygz@cs.purdue.edu)
;; COMMENT Permission to use/modify/copy for any purpose is hereby granted.
;; COMMENT Absolutely no warranties.
;; # define keys
;; VALIDINPUTKEY:	\040!"\043$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMN
;; VALIDINPUTKEY:	OPQRSTUVWXYZ[\134]^_`abcdefghijklmnopqrstuvwxyz{|}~
;; # the following line must not be removed
;; BEGINDICTIONARY
;; #

(require 'quail)

(quail-define-package
 "qj" "$AH+=G(B" nil
 "$A::WVJdHk!KH+=G!K(B 

 Copyright 1991 by Yongguang Zhang.      (ygz@cs.purdue.edu)
 Permission to use/modify/copy for any purpose is hereby granted.
 Absolutely no warranties."
 *quail-mode-default-map* t t nil nil t)

(quail-defrule "\C-@" ?$A!!(B)
(quail-defrule "!" ?$A#!(B)
(quail-defrule "\"" ?$A#"(B)
(quail-defrule "#" ?$A##(B)
(quail-defrule "$" ?$A#$(B)
(quail-defrule "%" ?$A#%(B)
(quail-defrule "&" ?$A#&(B)
(quail-defrule "'" ?$A#'(B)
(quail-defrule "(" ?$A#((B)
(quail-defrule ")" ?$A#)(B)
(quail-defrule "*" ?$A#*(B)
(quail-defrule "+" ?$A#+(B)
(quail-defrule "," ?$A#,(B)
(quail-defrule "-" ?$A#-(B)
(quail-defrule "." ?$A#.(B)
(quail-defrule "/" ?$A#/(B)
(quail-defrule "0" ?$A#0(B)
(quail-defrule "1" ?$A#1(B)
(quail-defrule "2" ?$A#2(B)
(quail-defrule "3" ?$A#3(B)
(quail-defrule "4" ?$A#4(B)
(quail-defrule "5" ?$A#5(B)
(quail-defrule "6" ?$A#6(B)
(quail-defrule "7" ?$A#7(B)
(quail-defrule "8" ?$A#8(B)
(quail-defrule "9" ?$A#9(B)
(quail-defrule ":" ?$A#:(B)
(quail-defrule ";" ?$A#;(B)
(quail-defrule "<" ?$A#<(B)
(quail-defrule "=" ?$A#=(B)
(quail-defrule ">" ?$A#>(B)
(quail-defrule "?" ?$A#?(B)
(quail-defrule "@" ?$A#@(B)
(quail-defrule "A" ?$A#A(B)
(quail-defrule "B" ?$A#B(B)
(quail-defrule "C" ?$A#C(B)
(quail-defrule "D" ?$A#D(B)
(quail-defrule "E" ?$A#E(B)
(quail-defrule "F" ?$A#F(B)
(quail-defrule "G" ?$A#G(B)
(quail-defrule "H" ?$A#H(B)
(quail-defrule "I" ?$A#I(B)
(quail-defrule "J" ?$A#J(B)
(quail-defrule "K" ?$A#K(B)
(quail-defrule "L" ?$A#L(B)
(quail-defrule "M" ?$A#M(B)
(quail-defrule "N" ?$A#N(B)
(quail-defrule "O" ?$A#O(B)
(quail-defrule "P" ?$A#P(B)
(quail-defrule "Q" ?$A#Q(B)
(quail-defrule "R" ?$A#R(B)
(quail-defrule "S" ?$A#S(B)
(quail-defrule "T" ?$A#T(B)
(quail-defrule "U" ?$A#U(B)
(quail-defrule "V" ?$A#V(B)
(quail-defrule "W" ?$A#W(B)
(quail-defrule "X" ?$A#X(B)
(quail-defrule "Y" ?$A#Y(B)
(quail-defrule "Z" ?$A#Z(B)
(quail-defrule "[" ?$A#[(B)
(quail-defrule "\\" ?$A#\(B)
(quail-defrule "]" ?$A#](B)
(quail-defrule "^" ?$A#^(B)
(quail-defrule "_" ?$A#_(B)
(quail-defrule "`" ?$A#`(B)
(quail-defrule "a" ?$A#a(B)
(quail-defrule "b" ?$A#b(B)
(quail-defrule "c" ?$A#c(B)
(quail-defrule "d" ?$A#d(B)
(quail-defrule "e" ?$A#e(B)
(quail-defrule "f" ?$A#f(B)
(quail-defrule "g" ?$A#g(B)
(quail-defrule "h" ?$A#h(B)
(quail-defrule "i" ?$A#i(B)
(quail-defrule "j" ?$A#j(B)
(quail-defrule "k" ?$A#k(B)
(quail-defrule "l" ?$A#l(B)
(quail-defrule "m" ?$A#m(B)
(quail-defrule "n" ?$A#n(B)
(quail-defrule "o" ?$A#o(B)
(quail-defrule "p" ?$A#p(B)
(quail-defrule "q" ?$A#q(B)
(quail-defrule "r" ?$A#r(B)
(quail-defrule "s" ?$A#s(B)
(quail-defrule "t" ?$A#t(B)
(quail-defrule "u" ?$A#u(B)
(quail-defrule "v" ?$A#v(B)
(quail-defrule "w" ?$A#w(B)
(quail-defrule "x" ?$A#x(B)
(quail-defrule "y" ?$A#y(B)
(quail-defrule "z" ?$A#z(B)
(quail-defrule "{" ?$A#{(B)
(quail-defrule "|" ?$A#|(B)
(quail-defrule "}" ?$A#}(B)
(quail-defrule "~" ?$A#~(B)
