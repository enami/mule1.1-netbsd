;; Quail packages for inputting Greek characters.
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

;;; 92.8.7   created for Mule Ver.0.9.5 by T.Matsuzawa <mzw_t@yhp.hp.com>
;;; 93.1.7   modified for Mule ver.0.9.7 by Takahashi N. <ntakahas@etl.go.jp>
;;; 93.4.10  modified for Mule Ver.0.9.7.1 by K.Handa <handa@etl.go.jp>
;;;	lc-ascr2l is used for Hebrew punctuation characters.
;;; 93.6.11  modified for Mule Ver.0.9.8 by K.Handa <handa@etl.go.jp>
;;;	Modfied for visually mode.

(require 'quail)

(defvar *quail-mode-hebrew-map* (copy-keymap *quail-mode-default-map*))
(define-key *quail-mode-hebrew-map* " " 'quail-self-insert-command)

(quail-define-package "hebrew" "HEBREW" nil "Hebrew (ISO 8859-8) encoding.

Based on Hebrew typewriter keys.
Hebrew letters are assigned to lowercases.
" *quail-mode-hebrew-map* t t t t nil nil t)

;;  1�2]!�] 2�2]@�] 3�2]#�] 4�2]$�] 5�2]%�] 6�2]^�] 7�2]&�] 8�2]*�] 9�2](�] 0�2])�] �2]_-�] �2]+=�] �2]~;�]
;;   �2]/�]Q �2]'�]W �2]-H��]E �2]��]R �2]��]T �2]�]Y �2]�]U �2]�]I �2]�]O �2]��]P �2]{[�] �2]{]�]
;;    �2]��]A �2]�]S �2]�]D �2]�]F �2]�]G �2]�]H �2]�]J �2]�]K �2]�]L �2]:�] �2]",�] �2]|\�]
;;     �2]�]Z �2]�]X �2]�]C �2]�]V �2]�]B �2]�]N �2]��]M �2]<��] �2]>��] �2]?.�]
;;		�2]         �]

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
(quail-defrule "-" (make-character lc-ascr2l ?-))
(quail-defrule "=" (make-character lc-ascr2l ?=))
(quail-defrule "`" (make-character lc-ascr2l ?;))
(quail-defrule "q" (make-character lc-ascr2l ?/))
(quail-defrule "w" (make-character lc-ascr2l ?'))
(quail-defrule "e" ?�2]��])
(quail-defrule "r" ?�2]��])
(quail-defrule "t" ?�2]��])
(quail-defrule "y" ?�2]�])
(quail-defrule "u" ?�2]�])
(quail-defrule "i" ?�2]�])
(quail-defrule "o" ?�2]�])
(quail-defrule "p" ?�2]��])
(quail-defrule "[" (make-character lc-ascr2l ?\[))
(quail-defrule "]" (make-character lc-ascr2l ?\]))
(quail-defrule "a" ?�2]��])
(quail-defrule "s" ?�2]�])
(quail-defrule "d" ?�2]�])
(quail-defrule "f" ?�2]�])
(quail-defrule "g" ?�2]�])
(quail-defrule "h" ?�2]�])
(quail-defrule "j" ?�2]�])
(quail-defrule "k" ?�2]�])
(quail-defrule "l" ?�2]�])
(quail-defrule ";" ?�2]�])
(quail-defrule "'" (make-character lc-ascr2l ?,))
(quail-defrule "\\" (make-character lc-ascr2l ?\\))
(quail-defrule "z" ?�2]�])
(quail-defrule "x" ?�2]�])
(quail-defrule "c" ?�2]�])
(quail-defrule "v" ?�2]�])
(quail-defrule "b" ?�2]�])
(quail-defrule "n" ?�2]�])
(quail-defrule "m" ?�2]��])
(quail-defrule "," ?�2]��])
(quail-defrule "." ?�2]��])
(quail-defrule "/" (make-character lc-ascr2l ?.))

(quail-defrule "!" (make-character lc-ascr2l ?!))
(quail-defrule "@" (make-character lc-ascr2l ?@))
(quail-defrule "#" (make-character lc-ascr2l ?#))
(quail-defrule "$" (make-character lc-ascr2l ?$))
(quail-defrule "%" (make-character lc-ascr2l ?%))
(quail-defrule "^" (make-character lc-ascr2l ?^))
(quail-defrule "&" (make-character lc-ascr2l ?&))
(quail-defrule "*" (make-character lc-ascr2l ?*))
(quail-defrule "(" (make-character lc-ascr2l ?())
(quail-defrule ")" (make-character lc-ascr2l ?)))
(quail-defrule "_" (make-character lc-ascr2l ?_))
(quail-defrule "+" (make-character lc-ascr2l ?+))
(quail-defrule "~" (make-character lc-ascr2l ?~))
(quail-defrule "Q" ?Q)
(quail-defrule "W" ?W)
(quail-defrule "E" ?E)
(quail-defrule "R" ?R)
(quail-defrule "T" ?T)
(quail-defrule "Y" ?Y)
(quail-defrule "U" ?U)
(quail-defrule "I" ?I)
(quail-defrule "O" ?O)
(quail-defrule "P" ?P)
(quail-defrule "{" (make-character lc-ascr2l ?{))
(quail-defrule "}" (make-character lc-ascr2l ?}))
(quail-defrule "A" ?A)
(quail-defrule "S" ?S)
(quail-defrule "D" ?D)
(quail-defrule "F" ?F)
(quail-defrule "G" ?G)
(quail-defrule "H" ?H)
(quail-defrule "J" ?J)
(quail-defrule "K" ?K)
(quail-defrule "L" ?L)
(quail-defrule ":" (make-character lc-ascr2l ?:))
(quail-defrule "\"" (make-character lc-ascr2l ?\"))
(quail-defrule "|" (make-character lc-ascr2l ?|))
(quail-defrule "Z" ?Z)
(quail-defrule "X" ?X)
(quail-defrule "C" ?C)
(quail-defrule "V" ?V)
(quail-defrule "B" ?B)
(quail-defrule "N" ?N)
(quail-defrule "M" ?M)
(quail-defrule "<" (make-character lc-ascr2l ?<))
(quail-defrule ">" (make-character lc-ascr2l ?>))
(quail-defrule "?" (make-character lc-ascr2l ??))
(quail-defrule " " (make-character lc-ascr2l ? ))
-A