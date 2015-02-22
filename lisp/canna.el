;; This file is a part of Canna on Nemacs/Mule.

;; Canna on Nemacs/Mule is distributed in the forms of
;; patches to Nemacs under the terms of the GNU EMACS
;; GENERAL PUBLIC LICENSE which is distributed along with
;; GNU Emacs by the Free Software Foundation.

;; Canna on Nemacs/Mule is distributed in the hope that it will
;; be useful, but WITHOUT ANY WARRANTY; without even the
;; implied warranty of MERCHANTABILITY or FITNESS FOR A
;; PARTICULAR PURPOSE.  See the GNU EMACS GENERAL PUBLIC
;; LICENSE for more details.

;; You should have received a copy of the GNU EMACS GENERAL
;; PUBLIC LICENSE along with Nemacs/Mule; see the file
;; COPYING.  If not, write to the Free Software Foundation,
;; 675 Mass Ave, Cambridge, MA 02139, USA.

;; Egg offered some influences to the implementation of
;; Canna on Nemacs/Mule, and this file contains a few part
;; of Egg which is written by S.Tomura, Electrotechnical
;; Lab.  (tomura@etl.go.jp)

;; Written by Akira Kon, NEC Corporation.
;; E-Mail:  kon@d1.bs2.mt.nec.co.jp.

;; -*-mode: emacs-lisp-*-

(defconst canna-rcs-version "Canna/emacs 2.3p2, based on Canna 2.2/3.2. RCS $Id: canna.el,v 1.71 1994/03/11 10:13:30 kon Exp $")

(defun canna-version ()
  (interactive)
  (message (concat (substring canna-rcs-version 0 72) " ...")) )

(provide 'canna)

;;; $B$+$s$J$NJQ?t(B

(defvar canna-save-undo-text-predicate nil)
(defvar canna-undo-hook nil)

(defvar canna-do-keybind-for-functionkeys t)
(defvar canna-use-functional-numbers nil)
(defvar canna-use-space-key-as-henkan-region t)

(defvar canna-server nil)
(defvar canna-file   nil)

(defvar canna-underline nil)
(defvar canna-with-fences (not canna-underline))

(if canna-underline (require 'attribute))

;;;
;;; $B%b!<%I%i%$%s$N=$@0(B
;;;

(defvar canna:*kanji-mode-string* "[ $B$"(B ]")
(defvar canna:*alpha-mode-string* "$B$+$s$J(B")
(defvar canna:*saved-mode-string* "[ $B$"(B ]")

(defvar mode-line-canna-mode canna:*alpha-mode-string*)
(defvar mode-line-canna-mode-in-minibuffer canna:*alpha-mode-string*)

(defvar display-minibuffer-mode-in-minibuffer nil) ; same name as TAKANA
; $B$?$+$J$G$O(B t $B$,%G%U%)%k%H$@$1$I!"(Bnil $B$r%G%U%)%k%H$K$7$F$*$3$&$+$J!#(B

(make-variable-buffer-local 'mode-line-canna-mode)

; select-window-hook $B$O(B mule $B$+$iF~$C$?$s$@$H;W$&$1$I!"(B
; $B$3$l$,L5$$$H(B preprompt $B$,$"$C$F$b$I$&$7$h$&$b$J$$$N$G$J$$$H$-$O(B
; display-minibuffer-mode-in-minibuffer $B$r(B nil $B$K$9$k!#(B

(if (not (boundp 'select-window-hook))
    (setq display-minibuffer-mode-in-minibuffer nil))

(defun canna:select-window-hook (old new)
  (if (eq new (minibuffer-window))
      (progn
	(setq minibuffer-window-selected t)
	(if display-minibuffer-mode-in-minibuffer
	    (setq minibuffer-preprompt nil
		  canna:*japanese-mode-in-minibuffer* nil) ))
    (setq minibuffer-window-selected nil) ))

; egg:select-window-hook $B$G$b==J,$J$N$G!"(Begg:select-window-hook $B$,(B
; $B@_Dj$5$l$F$$$J$$>l9g$N$_Dj5A$9$k!#(B

; $BNI$/9M$($F$_$k$H(B display-minibuffer-mode-in-minibuffer $B$,(B t $B$N;~$O(B
; $B$d$O$j>e5-$N(B canna:select-window-hook $B$,I,MW$@$J$"!#$I$&$7$h$&!#(B

(if (and (boundp 'select-window-hook)
	 (not (eq select-window-hook 'egg:select-window-hook)))
    (setq select-window-hook 'canna:select-window-hook))

(defun mode-line-canna-mode-update (str)
  (if (eq (current-buffer) (window-buffer (minibuffer-window)))
      (if (and display-minibuffer-mode-in-minibuffer
	       (boundp 'minibuffer-preprompt))
	  (setq minibuffer-preprompt str)
	;else
	(setq mode-line-canna-mode-in-minibuffer str))
    (setq mode-line-canna-mode str) )
  (set-buffer-modified-p (buffer-modified-p)) )

;; memq $B$r6/D4$9$k$J$i!"0J2<$@$,!"(B
;(defun canna:memq-recursive (a l)
;  (or (eq a l)
;      (and (consp l)
;	   (or (canna:memq-recursive a (car l))
;	       (canna:memq-recursive a (cdr l)) ))))
;; $B<!$NDj5A$r;H$*$&(B...
(defun canna:memq-recursive (a l)
  (if (atom l) (eq a l)
    (or (canna:memq-recursive a (car l))
	(canna:memq-recursive a (cdr l)) )))

(defun canna:create-mode-line ()
  (if (not (canna:memq-recursive 'mode-line-canna-mode mode-line-format))
      (setq-default
       mode-line-format
       (append (list (list 'minibuffer-window-selected
			   (list 'display-minibuffer-mode-in-minibuffer
				 "-" "m") "-")
		     (list 'minibuffer-window-selected
			   (list 'display-minibuffer-mode-in-minibuffer
				 'mode-line-canna-mode
				 'mode-line-canna-mode-in-minibuffer)
			   'mode-line-canna-mode))
	       mode-line-format)))
  (mode-line-canna-mode-update mode-line-canna-mode) )

(defun canna:mode-line-display ()
  (mode-line-canna-mode-update mode-line-canna-mode))

;;;
;;; Canna local variables
;;;

(defvar canna:*japanese-mode* nil "T if canna mode is ``japanese''.")
(make-variable-buffer-local 'canna:*japanese-mode*)
(set-default 'canna:*japanese-mode* nil)

(defvar canna:*japanese-mode-in-minibuffer* nil
  "T if canna mode is ``japanese'' in minibuffer.")

(defvar canna:*exit-japanese-mode* nil)
(defvar canna:*fence-mode* nil)
(make-variable-buffer-local 'canna:*fence-mode*)
(setq-default canna:*fence-mode* nil)

;;;
;;; global variables
;;;

(defvar canna-sys:*global-map* (copy-keymap global-map))
(defvar canna:*region-start* (make-marker))
(defvar canna:*region-end*   (make-marker))
(defvar canna:*spos-undo-text* (make-marker))
(defvar canna:*epos-undo-text* (make-marker))
(defvar canna:*undo-text-yomi* nil)
(defvar canna:*local-map-backup*  nil)
(defvar canna:*last-kouho* 0)
(defvar canna:*initialized* nil)
(defvar canna:*previous-window* nil)
(defvar canna:*minibuffer-local-map-backup* nil)
(defvar canna:*cursor-was-in-minibuffer* nil)
(defvar canna:*menu-buffer* (get-buffer-create " *menu*"))
(defvar canna:*saved-minibuffer*)
(defvar canna:*use-region-as-henkan-region* nil)

;;;
;;; $B%-!<%^%C%W%F!<%V%k(B
;;;

;; $B%U%'%s%9%b!<%I$G$N%m!<%+%k%^%C%W(B
(defvar canna-mode-map (make-keymap))

(let ((ch 0))
  (while (<= ch 127)
    (aset canna-mode-map ch 'canna-functional-insert-command)
    (setq ch (1+ ch))))

;; $B%_%K%P%C%U%!$K2?$+$rI=<($7$F$$$k;~$N%m!<%+%k%^%C%W(B
(defvar canna-minibuffer-mode-map (make-keymap))

(let ((ch 0))
  (while (<= ch 127)
    (aset canna-minibuffer-mode-map ch 'canna-minibuffer-insert-command)
    (setq ch (1+ ch))))


;;;
;;; $B%0%m!<%P%k4X?t$N=q$-BX$((B
;;;


;; Keyboard quit

;(if (not (fboundp 'canna-sys:keyboard-quit))
;    (fset 'canna-sys:keyboard-quit (symbol-function 'keyboard-quit)) )

;(defun canna:keyboard-quit ()
;  "See documents for canna-sys:keyboard-quit"
;  (interactive)
;  (if canna:*japanese-mode*
;      (progn
;;	(setq canna:*japanese-mode* nil)
;	(setq canna:*fence-mode* nil)
;	(if (boundp 'disable-undo)
;	    (setq disable-undo canna:*fence-mode*))
;	(canna:mode-line-display) ))
;  (canna-sys:keyboard-quit) )

;; Abort recursive edit

;(if (not (fboundp 'canna-sys:abort-recursive-edit))
;    (fset 'canna-sys:abort-recursive-edit 
;	  (symbol-function 'abort-recursive-edit)) )

;(defun canna:abort-recursive-edit ()
;  "see documents for canna-sys:abort-recursive-edit"
;  (interactive)
;  (if canna:*japanese-mode*
;      (progn
;	(setq canna:*japanese-mode* nil)
;	(setq canna:*fence-mode* nil)
;	(if (boundp 'disable-undo)
;	    (setq disable-undo canna:*fence-mode*))
;	(canna:mode-line-display) ))
;  (canna-sys:abort-recursive-edit) )


;; Exit-minibuffer

;(if (not (fboundp 'canna-sys:exit-minibuffer))
;    (fset 'canna-sys:exit-minibuffer (symbol-function 'exit-minibuffer)) )

;(defun canna:exit-minibuffer ()
;  "See documents for canna-sys:exit-minibuffer"
;  (interactive)
;;  (setq canna:*japanese-mode* nil)
;  (canna-sys:exit-minibuffer) )

;; kill-emacs

(if (not (fboundp 'canna-sys:kill-emacs))
    (fset 'canna-sys:kill-emacs (symbol-function 'kill-emacs)))

(defun canna:kill-emacs (&optional query)
  (interactive "P")
  (message "$B!X$+$s$J!Y$N<-=q$r%;!<%V$7$^$9!#(B")
  (canna:finalize)
  (canna-sys:kill-emacs query))

;;;
;;; function for mini-buffer
;;;

(defun adjust-minibuffer-mode ()
  (if (eq (current-buffer) (window-buffer (minibuffer-window)))
      (progn
	(setq canna:*japanese-mode* canna:*japanese-mode-in-minibuffer*)
	t)
    nil))
    

;;;
;;; keyboard input for japanese language
;;;

(defun canna-functional-insert-command (arg)
  "Use input character as a key of complex translation input such as\n\
kana-to-kanji translation."
  (interactive "p")
  (canna:functional-insert-command2 last-command-char arg) )

(defun canna:functional-insert-command2 (ch arg)
  "This function actualy isert a converted Japanese string."
  ;; $B$3$N4X?t$OM?$($i$l$?J8;z$rF|K\8lF~NO$N$?$a$N%-!<F~NO$H$7$F<h$j07(B
  ;; $B$$!"F|K\8lF~NO$NCf4V7k2L$r4^$a$?=hM}$r(BEmacs$B$N%P%C%U%!$KH?1G$5$;$k(B
  ;; $B4X?t$G$"$k!#(B
  (canna:display-candidates (canna-key-proc ch)) )

(defun canna:delete-last-preedit ()
  (if (not (zerop canna:*last-kouho*))
      (progn
	(if canna-underline
        ; $B$^$:!"B0@-$r>C$9!#(B
	    (progn
	      (attribute-off-region 'inverse
				    canna:*region-start*
				    canna:*region-end*)
	      (attribute-off-region 'underline
				    canna:*region-start*
				    canna:*region-end*)) )
	(delete-region canna:*region-start* canna:*region-end*)
	(setq canna:*last-kouho* 0) )))

(defun canna:insert-fixed (strs)
  (cond ((> strs 0)
	 (cond ((and canna-kakutei-yomi
		     (or (null canna-save-undo-text-predicate)
			 (funcall canna-save-undo-text-predicate
				  (cons canna-kakutei-yomi
					canna-kakutei-romaji) )))
		(setq canna:*undo-text-yomi*
		      (cons canna-kakutei-yomi canna-kakutei-romaji))
		(set-marker canna:*spos-undo-text* (point))
;;
;; update kbnes
		(if overwrite-mode
		    (let ((num strs)
			  (kanji-compare 128))
		      (catch 'delete-loop 
			(while (> num 0)
			  (if (eolp)
			      (throw 'delete-loop nil))
			  (if (>= (following-char) kanji-compare)
			      (setq num (1- num)))
			  (delete-char 1)
			  (setq num (1- num))))))
;; end kbnes
		(insert canna-kakutei-string)
		(canna:do-auto-fill)
		(set-marker canna:*epos-undo-text* (point)) )
	       (t
;;
;; update kbnes
		(if overwrite-mode
		    (let ((num strs)
			  (kanji-compare 128))
		      (catch 'delete-loop 
			(while (> num 0)
			  (if (eolp) 
			      (throw 'delete-loop nil))
			  (if (>= (following-char) kanji-compare)
			      (setq num (1- num)))
			  (delete-char 1)
			  (setq num (1- num))))))
;; end kbnes
		(insert canna-kakutei-string)
		(canna:do-auto-fill) ))
	 ) ))

(defun canna:insert-preedit ()
  (cond ((> canna-henkan-length 0)
	 (set-marker canna:*region-start* (point))
	 (if canna-with-fences
	     (progn
	       (insert "||")
	       (set-marker canna:*region-end* (point))
	       (backward-char 1)
	       ))
	 (insert canna-henkan-string)
	 (if (not canna-with-fences)
	     (set-marker canna:*region-end* (point)) )
	 (if canna-underline
	     (attribute-on-region 
	      'underline
	      canna:*region-start* canna:*region-end*) )
	 (setq canna:*last-kouho* canna-henkan-length)
	 ))

	 ;; $B8uJdNN0h$G$O6/D4$7$?$$J8;zNs$,B8:_$9$k$b$N$H9M$($i(B
	 ;; $B$l$k!#6/D4$7$?$$J8;z$O(BEmacs$B$G$O%+!<%=%k%]%8%7%g%s$K$FI=<((B
	 ;; $B$9$k$3$H$H$9$k!#6/D4$7$?$$J8;z$,$J$$$N$G$"$l$P!"%+!<%=%k(B
	 ;; $B$O0lHV8e$NItJ,(B($BF~NO$,9T$o$l$k%]%$%s%H(B)$B$KCV$$$F$*$/!#(B

	 ;; $B%+!<%=%k$r0\F0$9$k!#(B
	 (if (not canna-underline)
	     (backward-char 
	      (- canna:*last-kouho*
		 ;; $B%+!<%=%k0LCV$O!"H?E>I=<(ItJ,$,B8:_$7$J$$$N$G$"$l$P!"(B
		 ;; $B8uJdJ8;zNs$N:G8e$NItJ,$H$7!"H?E>I=<(ItJ,$,B8:_$9$k$N(B
		 ;; $B$G$"$l$P!"$=$NItJ,$N;O$a$H$9$k!#(B
		 (cond ((zerop canna-henkan-revlen)
			canna:*last-kouho*)
		       (t canna-henkan-revpos) )) )
	   (if (and (> canna-henkan-revlen 0)
		    (> canna-henkan-length 0))
		    ; $B8uJd$ND9$5$,(B0$B$G$J$/!"(B
		    ; $BH?E>I=<($ND9$5$,(B0$B$G$J$1$l$P!"(B
		    ; $B$=$NItJ,$rJQE>I=<($9$k!#(B
	       (let ((start (+ canna:*region-start*
			       (if canna-with-fences 1 0)
			       canna-henkan-revpos) ))
		 (attribute-on-region
		  'inverse start (+ start canna-henkan-revlen) )))
	   ) )

(defun canna:display-candidates (strs)
  (cond ((stringp strs) ; $B%(%i!<$,5/$3$C$?>l9g(B
	 (beep)
	 (message strs) )
	(canna-henkan-string
	 ;; $B$b$78uJdI=<($,A0$N7k2L$+$iJQ$o$C$F$$$J$/$J$$$H$-$O(B......

	 ;; $B<h$j9g$($::G=i$OA0$K=q$$$F$*$$$?Cf4V7k2L$r>C$9!#(B
	 (canna:delete-last-preedit)

	 ;; $B3NDj$7$?J8;zNs$,$"$l$P$=$l$rA^F~$9$k!#(B
	 (canna:insert-fixed strs)

	 ;; $B<!$O8uJd$K$D$$$F$N:n6H$G$"$k!#(B

	 ;; $B8uJd$rA^F~$9$k!#8uJd$O=DK@FsK\$K$F64$^$l$k!#(B
	 (canna:insert-preedit)
	 ))

  ;; $B%b!<%I$rI=$9J8;zNs$,B8:_$9$l$P$=$l$r%b!<%I$H$7$F<h$j07$&!#(B
  (if (stringp canna-mode-string)
      (mode-line-canna-mode-update canna-mode-string))

  ;; $B8uJdI=<($,$J$1$l$P%U%'%s%9%b!<%I$+$iH4$1$k!#(B
  (cond (canna-empty-info (canna:quit-canna-mode)))

  ;; $B%_%K%P%C%U%!$K=q$/$3$H$,B8:_$9$k$N$G$"$l$P!"$=$l$r%_%K%P%C%U%!(B
  ;; $B$KI=<($9$k!#(B
  (cond (canna-ichiran-string
	 (canna:minibuffer-input canna-ichiran-string
				 canna-ichiran-length
				 canna-ichiran-revpos
				 canna-ichiran-revlen
				 strs) )
	(canna:*cursor-was-in-minibuffer*
	 (select-window (minibuffer-window))
	 (use-local-map canna-minibuffer-mode-map) ))
  )

(defun canna:minibuffer-input (str len revpos revlen nfixed)
  "Displaying misc informations for kana-to-kanji input."

  ;; $B:n6H$r%_%K%P%C%U%!$K0\$9$N$K:]$7$F!"8=:_$N%&%#%s%I%&$N>pJs$rJ]B8(B
  ;; $B$7$F$*$/!#(B
  (setq canna:*previous-window* (selected-window))
  (select-window (minibuffer-window))

;; $B<+J,$KMh$kA0$,%_%K%P%C%U%!$+$I$&$+$rJQ?t$K$G$b$$$l$F$*$$$?J}$,$$$$$J$"!#(B

  (if (not canna:*cursor-was-in-minibuffer*)
      (progn
	;; $B%_%K%P%C%U%!$r%/%j%"$9$k!#(B
	(if (eq canna:*previous-window* (selected-window))
	    (progn
	      (if canna-underline
		  (attribute-off-region 'inverse (point-min) (point-max)))
	      (canna:delete-last-preedit) ))

        ;; $B%_%K%P%C%U%!%&%#%s%I%&$K8uJd0lMwMQ$N%P%C%U%!$r3d$jEv$F$k!#(B
	(setq canna:*saved-minibuffer* (window-buffer (minibuffer-window)))
	(set-window-buffer (minibuffer-window) canna:*menu-buffer*)

	;; $B%_%K%P%C%U%!$N%-!<%^%C%W$rJ]B8$7$F$*$/!#(B
	(setq canna:*minibuffer-local-map-backup* (current-local-map))
	))

  (use-local-map canna-minibuffer-mode-map)

  (if canna-underline
      (attribute-off-region 'inverse (point-min) (point-max)))
  (setq canna:*cursor-was-in-minibuffer* t)
  (delete-region (point-min) (point-max))
  (if (not (eq canna:*previous-window* (selected-window)))
      (setq minibuffer-window-selected nil))

  (insert str)

  ;; $B%_%K%P%C%U%!$GH?E>I=<($9$k$Y$-J8;z$N$H$3$m$K%+!<%=%k$r0\F0$9$k!#(B
  (cond ((> revlen 0)
	 (backward-char (- len revpos)) ))

  ;; $B%_%K%P%C%U%!$KI=<($9$k$Y$-J8;zNs$,%L%kJ8;zNs$J$N$G$"$l$P!"A0$N%&%#(B
  ;; $B%s%I%&$KLa$k!#(B
  (if (or (zerop len) canna-empty-info)
      (progn
	(setq canna:*cursor-was-in-minibuffer* nil)
	(use-local-map canna:*minibuffer-local-map-backup*)

	;; $B%_%K%P%C%U%!%&%#%s%I%&$N%P%C%U%!$r85$KLa$9!#(B
	(set-window-buffer (minibuffer-window) canna:*saved-minibuffer*)
;	(setq canna:*saved-minibuffer* nil)
	; $B%_%K%P%C%U%!$GF~NO$7$F$$$?$N$J$i0J2<$b$9$k!#(B
	(if (eq canna:*previous-window* (selected-window))
	    (progn
	      (canna:insert-fixed nfixed)
	      (canna:insert-preedit) ))

	(if canna-empty-info
	    (progn
	      (delete-region (point-min) (point-max))
	      (message str) ))
	(select-window canna:*previous-window*) ))
  )

(defun canna-minibuffer-insert-command (arg)
  "Use input character as a key of complex translation input such as\n\
kana-to-kanji translation, even if you are in the minibuffer."
  (interactive "p")
  (use-local-map canna:*minibuffer-local-map-backup*)
  (select-window canna:*previous-window*)
  (canna:functional-insert-command2 last-command-char arg) )

;;;
;;; $B$+$s$J%b!<%I$N<gLr$O!"<!$N(B canna-self-insert-command $B$G$"$k!#$3$N(B
;;; $B%3%^%s%I$OA4$F$N%0%i%U%#%C%/%-!<$K%P%$%s%I$5$l$k!#(B
;;;
;;; $B$3$N4X?t$G$O!"8=:_$N%b!<%I$,F|K\8lF~NO%b!<%I$+$I$&$+$r%A%'%C%/$7$F!"(B
;;; $BF|K\8lF~NO%b!<%I$G$J$$$N$G$"$l$P!"%7%9%F%`$N(B self-insert-command 
;;; $B$r8F$V!#F|K\8lF~NO%b!<%I$G$"$l$P!"%U%'%s%9%b!<%I$KF~$j!"(B
;;; canna-functional-insert-command $B$r8F$V!#(B
;;;

(if (not (boundp 'MULE)) ; for Nemacs
    (defun cancel-undo-boundary ()))

(defun canna-self-insert-command (arg)
  "Self insert pressed key and use it to assemble Romaji character."
  (interactive "p")
  (adjust-minibuffer-mode)
  (if (and canna:*japanese-mode*
	   ;; $B%U%'%s%9%b!<%I$@$C$?$i$b$&0lEY%U%'%s%9%b!<%I$KF~$C$?$j$7(B
	   ;; $B$J$$!#(B
	   (not canna:*fence-mode*) )
      (canna:enter-canna-mode-and-functional-insert)
    (progn
      ;; $B0J2<$NItJ,$O(B egg.el $B$N(B 3.09 $B$N(B egg-self-insert-command $B$NItJ,$+$i(B
      ;; $B%3%T!<$7!"<j$rF~$l$F$$$^$9!#(B93.11.5 kon
      ;; treat continuous 20 self insert as a single undo chunk.
      ;; `20' is a magic number copied from keyboard.c
;      (if (or				;92.12.20 by T.Enami
;	   (not (eq last-command 'canna-self-insert-command))
;	   (>= canna:*self-insert-non-undo-count* 20))
;	  (setq canna:*self-insert-non-undo-count* 1)
;	(cancel-undo-boundary)
;	(setq canna:*self-insert-non-undo-count*
;	      (1+ canna:*self-insert-non-undo-count*)))
      (if (and (eq last-command 'canna-self-insert-command)
	       (> last-command-char ? ))
	  (cancel-undo-boundary))
      (self-insert-command arg)
;      (if canna-insert-after-hook
;	  (run-hooks 'canna-insert-after-hook))
      (if self-insert-after-hook
	  (if (<= 1 arg)
	      (funcall self-insert-after-hook
		       (- (point) arg) (point)))
	(if (= last-command-char ? ) (canna:do-auto-fill))))))

(defun canna-toggle-japanese-mode ()
  "Toggle canna japanese mode."
  (interactive)
  (let ((in-minibuffer (adjust-minibuffer-mode)))
    (cond (canna:*japanese-mode*
	   (setq canna:*japanese-mode* nil) 
	   (canna-abandon-undo-info)
	   (setq canna:*use-region-as-henkan-region* nil)
	   (setq canna:*saved-mode-string* mode-line-canna-mode)
	   (mode-line-canna-mode-update canna:*alpha-mode-string*) )
	  (t
	   (setq canna:*japanese-mode* t)
	   (if (fboundp 'canna-query-mode)
	       (let ((new-mode (canna-query-mode)))
		 (if (string-equal new-mode "")
		     (setq canna:*kanji-mode-string* canna:*saved-mode-string*)
		   (setq canna:*kanji-mode-string* new-mode)
		   )) )
	   (mode-line-canna-mode-update canna:*kanji-mode-string*) ) )
    (if in-minibuffer
	(setq canna:*japanese-mode-in-minibuffer* canna:*japanese-mode*)) ))

(defun canna:initialize ()
  (let ((init-val nil))
    (cond (canna:*initialized*) ; initialize $B$5$l$F$$$?$i2?$b$7$J$$(B
	  (t
	   (setq canna:*initialized* t)
	   (setq init-val (canna-initialize 
			   (if canna-underline 0 1)
			   canna-server canna-file))
	   (cond ((car (cdr (cdr init-val)))
		  (canna:output-warnings (car (cdr (cdr init-val)))) ))
	   (cond ((car (cdr init-val))
		  (error (car (cdr init-val))) ))
	   ) )

    (if (fboundp 'canna-query-mode)
	(progn
	  (canna-change-mode canna-mode-alpha-mode)
	  (setq canna:*alpha-mode-string* (canna-query-mode)) ))

    (canna-do-function canna-func-japanese-mode)

    (if (fboundp 'canna-query-mode)
	(setq canna:*kanji-mode-string* (canna-query-mode)))

    init-val))

(defun canna:finalize ()
  (cond ((null canna:*initialized*)) ; initialize $B$5$l$F$$$J$+$C$?$i2?$b$7$J$$(B
	(t
	 (setq canna:*initialized* nil)
	 (let ((init-val (canna-finalize)))
	   (cond ((car (cdr (cdr init-val)))
		  (canna:output-warnings (car (cdr (cdr init-val)))) ))
	   (cond ((car (cdr init-val))
		  (error (car (cdr init-val))) ))
	   ) )) )

(defun canna:enter-canna-mode ()
  (if (not canna:*initialized*)
      (progn 
	(message "$B!X$+$s$J!Y$N=i4|2=$r9T$C$F$$$^$9(B....")
	(canna:initialize)
	(message "$B!X$+$s$J!Y$N=i4|2=$r9T$C$F$$$^$9(B....done")
	))
  (setq canna:*local-map-backup*  (current-local-map))
  (setq canna:*fence-mode* t)
  (if (boundp 'disable-undo)
      (setq disable-undo canna:*fence-mode*))
  (use-local-map canna-mode-map) )

(defun canna:enter-canna-mode-and-functional-insert ()
  (canna:enter-canna-mode)
  (setq canna:*use-region-as-henkan-region* nil)
  (setq unread-command-char last-command-char))

(defun canna:quit-canna-mode ()
  (cond (canna:*fence-mode*
	 (use-local-map canna:*local-map-backup*)
	 (setq canna:*fence-mode* nil)
	 (if canna:*exit-japanese-mode*
	     (progn
	       (setq canna:*exit-japanese-mode* nil)
	       (setq canna-mode-string canna:*alpha-mode-string*)
	       (if canna:*japanese-mode*
		   (canna-toggle-japanese-mode)
		 (mode-line-canna-mode-update canna:*alpha-mode-string*) )))
	 (if (boundp 'disable-undo)
	     (setq disable-undo canna:*fence-mode*))
	 ))
  (set-marker canna:*region-start* nil)
  (set-marker canna:*region-end* nil)
  )

(defun canna-touroku ()
  "Register a word into a kana-to-kanji dictionary."
  (interactive)
  (if canna:*japanese-mode*
      (progn
	(canna:enter-canna-mode)
	(canna:display-candidates (canna-touroku-string "")) )
    (beep)
  ))

(defun canna-without-newline (start end)
  (and (not (eq start end))
       (or 
	(and (<= end (point))
	     (save-excursion
	       (beginning-of-line)
	       (<= (point) start) ))
	(and (<= (point) start)
	     (save-excursion 
	       (end-of-line) 
	       (<= end (point)) ))
	)))

(defun canna-touroku-region (start end)
  "Register a word which is indicated by region into a kana-to-kanji\n\
dictionary."
  (interactive "r")
  (if (canna-without-newline start end)
      (if canna:*japanese-mode*
	  (progn
	    (setq canna:*use-region-as-henkan-region* nil)
	    (canna:enter-canna-mode)
	    (canna:display-candidates
	     (canna-touroku-string (buffer-substring start end))) ))
    (message "$B%j!<%8%g%s$,IT@5$G$9!#%L%k%j!<%8%g%s$+!"2~9T$,4^$^$l$F$$$^$9!#(B")
    ))

(defun canna-extend-mode ()
  "To enter an extend-mode of Canna."
  (interactive)
  (canna:display-candidates
   (canna-do-function canna-func-extend-mode) ))

(defun canna-kigou-mode ()
  "Enter symbol choosing mode."
  (interactive)
  (if canna:*japanese-mode*
      (progn
        (canna:enter-canna-mode)
	(canna:display-candidates (canna-change-mode canna-mode-kigo-mode)) )
    (beep)
  ))

(defun canna-hex-mode ()
  "Enter hex code entering mode."
  (interactive)
  (if canna:*japanese-mode*
      (progn
        (canna:enter-canna-mode)
	(canna:display-candidates (canna-change-mode canna-mode-hex-mode)) )
    (beep)
  ))

(defun canna-bushu-mode ()
  "Enter special mode to convert by BUSHU name."
  (interactive)
  (if canna:*japanese-mode*
      (progn
        (canna:enter-canna-mode)
	(canna:display-candidates (canna-change-mode canna-mode-bushu-mode)) )
    (beep)
  ))

(defun canna-reset ()
  (interactive)
  (message "$B!X$+$s$J!Y$N<-=q$r%;!<%V$7$^$9!#(B");
  (canna:finalize)
  (message "$B!X$+$s$J!Y$N:F=i4|2=$r9T$C$F$$$^$9(B....")
  (canna:initialize)
  (message "$B!X$+$s$J!Y$N:F=i4|2=$r9T$C$F$$$^$9(B....done")
  )
  

(defun canna ()
  (interactive)
  (message "$B!X$+$s$J!Y$r=i4|2=$7$F$$$^$9(B....")
  (let (init-val)
    (cond ((and (fboundp 'canna-initialize)
		(fboundp 'canna-change-mode) )

	   ;; canna $B$,;H$($k;~$O<!$N=hM}$r$9$k!#(B
	 
	   ;; $B!X$+$s$J!Y%7%9%F%`$N=i4|2=(B

	   (setq init-val (canna:initialize))

	 ;; $B%-!<$N%P%$%s%G%#%s%0(B

	   (let ((ch 32))
	     (while (< ch 127)
	       (aset global-map ch 'canna-self-insert-command)
	       (setq ch (1+ ch)) ))

	   (cond ((let ((keys (car init-val)) (ok nil))
		    (while keys
		      (cond ((< (car keys) 128)
			     (global-set-key
			      (make-string 1 (car keys))
			      'canna-toggle-japanese-mode)
			     (setq ok t) ))
		      (setq keys (cdr keys))
		      ) ok))
		 (t ; $B%G%U%)%k%H$N@_Dj(B
		  (global-set-key "\C-o" 'canna-toggle-japanese-mode) ))

	   (if (not (keymapp (global-key-binding "\e[")))
	       (global-unset-key "\e[") )
	   (global-set-key "\e[210z" 'canna-toggle-japanese-mode) ; XFER
	   (if canna-do-keybind-for-functionkeys
	       (progn
		 (global-set-key "\e[28~" 'canna-extend-mode) ; HELP on EWS4800
		 (global-set-key "\e[2~"  'canna-kigou-mode)  ; INS  on EWS4800
		 (global-set-key "\e[11~" 'canna-kigou-mode)
		 (global-set-key "\e[12~" 'canna-hex-mode)
		 (global-set-key "\e[13~" 'canna-bushu-mode)
		 ))

	   (if canna-use-space-key-as-henkan-region
	       (progn
		 (global-set-key "\C-@" 'canna-set-mark-command)
		 (global-set-key " " 'canna-henkan-region-or-self-insert) ))

	 ;; $B%b!<%I9T$N:n@.(B

	   (canna:create-mode-line)
	   (mode-line-canna-mode-update canna:*alpha-mode-string*)

	 ;; $B%7%9%F%`4X?t$N=q$-BX$((B

;	   (fset 'abort-recursive-edit 
;		 (symbol-function 'canna:abort-recursive-edit))
;	   (fset 'keyboard-quit 
;		 (symbol-function 'canna:keyboard-quit))
;	   (fset 'exit-minibuffer
;		 (symbol-function 'canna:exit-minibuffer))
	   (fset 'kill-emacs
		 (symbol-function 'canna:kill-emacs)) )

	  ((fboundp 'canna-initialize)
	   (beep)
	   (with-output-to-temp-buffer "*canna-warning*"
	     (princ "$B$3$N(B Emacs $B$G$O(B new-canna $B$,;H$($^$;$s(B")
	     (terpri)
	     (print-help-return-message)) )

	  (t ; $B!X$+$s$J!Y%7%9%F%`$,;H$($J$+$C$?;~$N=hM}(B
	   (beep)
	   (with-output-to-temp-buffer "*canna-warning*"
	     (princ "$B$3$N(B Emacs $B$G$O(B canna $B$,;H$($^$;$s(B")
	     (terpri)
	     (print-help-return-message))
	   ))
    (message "$B!X$+$s$J!Y$r=i4|2=$7$F$$$^$9(B....done")
    ) )

;;;
;;; auto fill controll (from egg)
;;;

(defun canna:do-auto-fill ()
  (if (and auto-fill-hook (not buffer-read-only)
	   (> (current-column) fill-column))
      (let ((ocolumn (current-column)))
	(run-hooks 'auto-fill-hook)
	(while (and (< fill-column (current-column))
		    (< (current-column) ocolumn))
  	  (setq ocolumn (current-column))
	  (run-hooks 'auto-fill-hook)))))

(defun canna:output-warnings (mesg)
  (with-output-to-temp-buffer "*canna-warning*"
    (while mesg
      (princ (car mesg))
      (terpri)
      (setq mesg (cdr mesg)) )
    (print-help-return-message)))

(defun canna-undo (&optional arg)
  (interactive "*p")
  (if (and canna:*undo-text-yomi*
	   (eq (current-buffer) (marker-buffer canna:*spos-undo-text*))
;	   (canna-without-newline canna:*spos-undo-text*
;				  canna:*epos-undo-text*)
	   )
      (progn
	(message "$BFI$_$KLa$7$^$9!*(B")
	(switch-to-buffer (marker-buffer canna:*spos-undo-text*))
	(goto-char canna:*spos-undo-text*)
	(delete-region canna:*spos-undo-text*
		       canna:*epos-undo-text*)

	(if (null canna:*japanese-mode*)
	    (progn
	      (setq canna:*exit-japanese-mode* t) ))
;	      (canna-toggle-japanese-mode) ))
	(if (not canna:*fence-mode*)
	    ;; $B%U%'%s%9%b!<%I$@$C$?$i$b$&0lEY%U%'%s%9%b!<%I$KF~$C$?$j$7(B
	    ;; $B$J$$!#(B
	    (canna:enter-canna-mode) )
	(canna:display-candidates 
	 (let ((texts (canna-store-yomi (car canna:*undo-text-yomi*)
					(cdr canna:*undo-text-yomi*) )) )
	   (cond (canna-undo-hook
		  (funcall canna-undo-hook))
		 (t texts) )))
	(canna-abandon-undo-info)
	)
    (canna-abandon-undo-info)
    (undo arg) ))

(defun canna-abandon-undo-info ()
  (interactive)
  (setq canna:*undo-text-yomi* nil)
  (set-marker canna:*spos-undo-text* nil)
  (set-marker canna:*epos-undo-text* nil) )

(defun canna-henkan-region (start end)
  "Convert a text which is indicated by region into a kanji text."
  (interactive "r")
  (if (null canna:*japanese-mode*)
      (progn
	(setq canna:*exit-japanese-mode* t) ))
;	(canna-toggle-japanese-mode) ))
  (let ((res nil))
    (setq res (canna-store-yomi (buffer-substring start end)))
    (delete-region start end)
    (canna:enter-canna-mode)
    (if (fboundp 'canna-do-function)
	(setq res (canna-do-function canna-func-henkan)))
    (canna:display-candidates res) ))

;;;
;;; $B%^!<%/%3%^%s%I!$(Bcanna-henkan-region-or-self-insert $B$G;H$&$+$b(B
;;;

(defun canna-set-mark-command (arg)
  "Beside setting mark, set mark as a HENKAN region if it is in\n\
the japanese mode."
  (interactive "P")
  (set-mark-command arg)
  (if canna:*japanese-mode*
      (progn
	(setq canna:*use-region-as-henkan-region* t)
	(message "Mark set($BJQ49NN0h3+;O(B)") )))

(defun canna-henkan-region-or-self-insert (arg)
  "Do kana-to-kanji convert region if HENKAN region is defined,\n\
self insert otherwise."
  (interactive "p")
  (if (and canna:*use-region-as-henkan-region*
	   (< (mark) (point))
	   (not (save-excursion (beginning-of-line) (< (mark) (point)))) )
      (progn
	(setq canna:*use-region-as-henkan-region* nil)
	(canna-henkan-region (region-beginning) (region-end)))
    (canna-self-insert-command arg) ))

;;
;; for C-mode
;;

(defun canna-electric-c-terminator (arg)
  (interactive "p")
  (if canna:*japanese-mode*
      (canna-self-insert-command arg)
    (electric-c-terminator arg) ))

(defun canna-electric-c-semi (arg)
  (interactive "p")
  (if canna:*japanese-mode*
      (canna-self-insert-command arg)
    (electric-c-semi arg) ))

(defun canna-electric-c-brace (arg)
  (interactive "p")
  (if canna:*japanese-mode*
      (canna-self-insert-command arg)
    (electric-c-brace arg) ))

(defun canna-c-mode-hook ()
  (define-key c-mode-map "{" 'canna-electric-c-brace)
  (define-key c-mode-map "}" 'canna-electric-c-brace)
  (define-key c-mode-map ";" 'canna-electric-c-semi)
  (define-key c-mode-map ":" 'canna-electric-c-terminator) )

(defun canna-set-fence-mode-format (fence sep underline)
  (setq canna-with-fences fence)
  (canna-set-bunsetsu-kugiri sep)
  (setq canna-underline underline)
  (if canna-underline (require 'attribute)
  t))

;; $B%j!<%8%g%s$K$"$k%m!<%^;z$r!X$+$s$J!Y$K?)$o$9!#(B
;; $B7k2L$H$7$F!"!X$+$s$J!Y$NFI$_%b!<%I$K$J$k!#(B
;; $B%j!<%8%g%s$KB8:_$7$F$$$k6uGrJ8;z$H@)8fJ8;z$O<N$F$i$l$k!#(B

(defun canna-rk-region (start end)
  "Convert region into kana."
  (interactive "r")
  (let ((str nil) (len 0) (i 0) (res 0))
    (setq str (buffer-substring start end))
    (setq len (length str))
    (while (< i len)
      (let ((ch (elt str i)))
	(if (> ch ? )
	    (setq res (canna-do-function canna-func-functional-insert ch)) ))
      (setq i (1+ i)) )
    res))

(defun canna-rk-trans-region (start end)
  "Insert alpha-numeric string as it is sent from keyboard."
  (interactive "r")
  (let ((res))
    (setq res (canna-rk-region start end))
    (delete-region start end)
    (if (null canna:*japanese-mode*)
	(progn
	  (setq canna:*exit-japanese-mode* t) ))
    (setq res (canna-do-function canna-func-henkan))
    (canna:enter-canna-mode)
    (canna:display-candidates res) ))

;; $B%+!<%=%k$N:8$K$"$k(B arg $B%o!<%I$N%m!<%^;z$r!X$+$s$J!Y$K?)$o$9!#(B

(defun canna-rk-trans (arg)
  (interactive "p")
  (let ((po (point)))
    (skip-chars-backward "-a-zA-Z.,?!~")
    (if (not (eq (point) po))
	(canna-rk-trans-region (point) po) )))

(defun canna-henkan-kakutei-and-self-insert (arg)
  (interactive "p")
  (if canna:*japanese-mode*
      (canna-functional-insert-command arg)
    (progn
      (setq unread-command-char last-command-char)
      (canna-kakutei-to-basic-stat)) ))

(defun canna-kakutei-to-basic-stat ()
  (let ((res 0))
    (while (not canna-empty-info)
      (setq res (canna-key-proc ?\C-m)))
    (canna:display-candidates res)
    (if (not canna:*japanese-mode*)
	(mode-line-canna-mode-update canna:*alpha-mode-string*))
    ))

(defun canna-setup-for-being-boiled ()
  (let ((ch (1+ ? )))
    (while (<= ch 127)
      (aset canna-mode-map ch 'canna-henkan-kakutei-and-self-insert)
      (aset canna-minibuffer-mode-map ch 'canna-minibuffer-insert-command)
      (setq ch (1+ ch)))))

(defvar rK-trans-key "\C-j" "for `boil' only")
(make-variable-buffer-local 'rK-trans-key)

(defun canna-boil ()
  "`canna-boil' cooks `canna' as if `boil' does for `egg'."
  (interactive)
  (canna-setup-for-being-boiled)
  (local-set-key rK-trans-key 'canna-rk-trans)
  (message "boiled"))
