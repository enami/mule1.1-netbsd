;; This file is part of Egg on Mule (Multilingual Environment)

;; Egg is distributed in the forms of patches to GNU
;; Emacs under the terms of the GNU EMACS GENERAL PUBLIC
;; LICENSE which is distributed along with GNU Emacs by the
;; Free Software Foundation.

;; Egg is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied
;; warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
;; PURPOSE.  See the GNU EMACS GENERAL PUBLIC LICENSE for
;; more details.

;; You should have received a copy of the GNU EMACS GENERAL
;; PUBLIC LICENSE along with Nemacs; see the file COPYING.
;; If not, write to the Free Software Foundation, 675 Mass
;; Ave, Cambridge, MA 02139, USA.

;;;
;;;  wnn4-egg.el
;;;

;;;  Written by Toshiaki Shingu (shingu@cpr.canon.co.jp)
;;;  Modified for Wnn V4 library on wnn4v3-egg.el

;;; $B$?$^$4!V$?$+$J!W%P!<%8%g%s(B
;;; $B!V$?$+$J!W$H$ODR$1J*$N$?$+$J$G$O$"$j$^$;$s!#(B
;;; $B!V$?$^$4$h!?$+$7$3$/!?$J!<!<$l!W$NN,$r$H$C$FL?L>$7$^$7$?!#(B
;;; Wnn V4 $B$N(B jl $B%i%$%V%i%j$r;H$$$^$9!#(B
;;; $B%i%$%V%i%j$H$N%$%s%?!<%U%'!<%9$O(B wnn4fns.c $B$GDj5A$5$l$F$$$^$9!#(B

;;;  $B=$@5%a%b(B

;;;  94/2/3   kWnn support by H.Kuribayashi
;;;  93/11/24 henkan-select-kouho: bug fixed
;;;  93/7/22  hinsi-from-menu updated
;;;  93/5/12  remove-regexp-in-string 
;;;		fixed by Shuji NARAZAKI <narazaki@csce.kyushu-u.ac.jp>
;;;  93/4/22  set-wnn-host-name, set-cwnn-host-name
;;;  93/4/5   EGG:open-wnn, close-wnn modified by tsuiki.
;;;  93/4/2   wnn-param-set
;;;  93/4/2   modified along with wnn4fns.c
;;;  93/3/3   edit-dict-item: bug fixed
;;;  93/1/8   henkan-help-command modified.
;;;  92/12/1  buffer local 'wnn-server-type' and 'cwnn-zhuyin'
;;;	 so as to support individual its mode with multiple buffers.
;;;  92/11/26 set-cserver-host-name fixed.
;;;  92/11/26 its:{previous,next}-mode by <yasutome@ics.osaka-u.ac.jp>
;;;  92/11/25 set-wnn-host-name was changed to set-{j,c}server-host-name.
;;;  92/11/25 redefined its:select-mode and its:select-mode-from-menu 
;;;	defined in egg.el to run hook with its mode selection.
;;;  92/11/20 bug fixed related to henkan mode attribute.
;;;  92/11/12 get-wnn-host-name and set-wnn-host-name were changed.
;;;  92/11/10 (set-dict-comment) bug fixed
;;;  92/10/27 (henkan-region-internal) display message if error occurs.
;;;  92/9/28 completely modified for chinese trandlation.
;;;  92/9/28 diced-{use,hindo-set} bug fixed <tetsuya@rabbit.is.s.u-tokyo.ac.jp>
;;;  92/9/22 touroku-henkan-mode by <tsuiki@sfc.keio.ac.jp>
;;;  92/9/18 rewrite wnn-dict-add to support password files.
;;;  92/9/8  henkan-region-internal was modified.
;;;  92/9/8  henkan-mode-map " "  'henkan-next-kouho-dai -> 'henkan-next-kouho
;;;  92/9/7  henkan-mode-map "\C-h" 'help-command -> 'henkan-help-command (Shuji Narazaki)
;;;  92/9/3  wnn-server-get-msg without wnn-error-code.
;;;  92/9/3  get-wnn-lang-name was modified.
;;;  92/8/19 get-wnn-lang-name $B$NJQ99(B (by T.Matsuzawa)
;;;  92/8/5  Bug in henkan-kakutei-first-char fixed. (by Y.Kasai)
;;;  92/7/17 set-egg-henkan-format $B$NJQ99(B
;;;  92/7/17 egg:error $B$N0z?t$r(B format &rest args $B$KJQ99(B
;;;  92/7/17 henkan/gyaku-henkan-word $B$N=$@5(B
;;;  92/7/17 henkan/gyaku-henkan-paragraph/sentence/word $B$G!"(B
;;;	     $BI=<($,Mp$l$k$N$r=$@5!J(Bsave-excursion $B$r$O$:$9!K(B
;;;  92.7.14 Unnecessary '*' in comments of variables deleted. (by T.Ito)
;;;  92/7/10 henkan-kakutei-first-char $B$rDI2C!"(BC-@ $B$K3d$jEv$F!#(B(by K.Handa)
;;;  92/7/8  overwrite-mode $B$N%5%]!<%H(B(by K. Handa)
;;;  92/6/30 startup file $B<~$j$NJQ99(B
;;;  92/6/30 $BJQ49%b!<%I$N%"%H%j%S%e!<%H$K(B bold $B$rDI2C(B
;;;	     (by ITO Toshiyuki <toshi@his.cpl.melco.co.jp>)
;;;  92/6/22 $B6uJ8;zNs$rJQ49$9$k$HMn$A$k%P%0$r=$@5(B
;;;  92/5/20 set-egg-henkan-mode-format $B$N(B bug fix
;;;  92/5/20 egg:set-bunsetu-attribute $B$,BgJ8@a$G@5$7$/F0$/$h$&$KJQ99(B
;;;  92/5/19 version 0

;;; ----------------------------------------------------------------

(make-variable-buffer-local 'wnn-server-type)
(make-variable-buffer-local 'cwnn-zhuyin)

;;; ----------------------------------------------------------------
;;;	$B0J2<$N(B its mode $B4X78$N4X?t$O!"(Begg.el $B$GDj5A$5$l$F$$$k$,!"(B
;;; $B$?$+$J$G$O(B its mode $B$N@ZBX$($KF14|$7$F!"(Bjserver/cserver,
;;; pinyin/zhuyin $B$N@ZBX$($b9T$J$$$?$$$N$G!":FDj5A$7$F$$$k!#(B
;;; $B=>$C$F!"(Begg.el, wnn4-egg.el $B$N=g$K%m!<%I$7$J$1$l$P$J$i$J$$!#(B

(defun its:select-mode (name)
  (interactive (list (completing-read "ITS mode: " its:*mode-alist*)))
  (if (its:get-mode-map name)
      (progn
	(setq its:*current-map* (its:get-mode-map name))
	(egg:mode-line-display)
	(run-hooks 'its:select-mode-hook))
    (beep))
  )

(defun its:select-mode-from-menu ()
  (interactive)
  (setcar (nthcdr 2 its:*select-mode-menu*) its:*mode-alist*)
  (setq its:*current-map* (menu:select-from-menu its:*select-mode-menu*))
  (egg:mode-line-display)
  (run-hooks 'its:select-mode-hook))

(defvar its:select-mode-hook
  '(lambda ()
     (cond ((eq its:*current-map* (its:get-mode-map "roma-kana"))
	    (setq wnn-server-type 'jserver))
	   ((eq its:*current-map* (its:get-mode-map "PinYin"))
	    (setq wnn-server-type 'cserver)
	    (setq cwnn-zhuyin nil))
	   ((eq its:*current-map* (its:get-mode-map "zhuyin"))
	    (setq wnn-server-type 'cserver)
	    (setq cwnn-zhuyin t))
	   ((eq its:*current-map* (its:get-mode-map "hangul"))
	    (setq wnn-server-type 'kserver))
	   )))

(defun its:next-mode ()
  (interactive)
  (let ((pos (its:find its:*current-map* its:*standard-modes*)))
    (setq its:*current-map*
	  (nth (% (1+ pos) (length its:*standard-modes*))
	       its:*standard-modes*))
    (egg:mode-line-display)
    (run-hooks 'its:select-mode-hook)))

(defun its:previous-mode ()
  (interactive)
  (let ((pos (its:find its:*current-map* its:*standard-modes*)))
    (setq its:*current-map*
	  (nth (1- (if (= pos 0) (length its:*standard-modes*) pos))
	       its:*standard-modes*))
    (egg:mode-line-display)
    (run-hooks 'its:select-mode-hook)))

(defun read-current-its-string (prompt &optional initial-input henkan)
  (save-excursion
    (let ((old-its-map its:*current-map*)
	  (minibuff (window-buffer (minibuffer-window))))
      (set-buffer minibuff)
      (setq egg:*input-mode* t
	    egg:*mode-on*    t
	    its:*current-map* old-its-map)
      (mode-line-egg-mode-update
       (nth 1 (its:get-mode-indicator its:*current-map*)))
      (read-from-minibuffer prompt initial-input
			    (if henkan nil
			      egg:*minibuffer-local-hiragana-map*)))))

;;;----------------------------------------------------------------------
;;;
;;; Kana Kanji Henkan 
;;;
;;;----------------------------------------------------------------------

(or (fboundp 'wnn4-egg:kill-emacs)
    (fset 'wnn4-egg:kill-emacs (symbol-function 'kill-emacs)))

(defun kill-emacs (&optional arg)
  (interactive "P")
  (let ((wnn-server-type))
    (setq wnn-server-type 'jserver)
    (close-wnn)
    (setq wnn-server-type 'cserver)
    (close-wnn)
    (setq wnn-server-type 'kserver)
    (close-wnn))
  (wnn4-egg:kill-emacs arg))


(defun egg:error (form &rest mesg)
  (apply 'notify (or form "%s") mesg)
  (apply 'error (or form "%s") mesg))

(defun egg:msg-get (message)
  (or
   (nth 1 (assoc message (nth 1 (assoc wnn-server-type *egg-message-alist*))))
   (format "No message. Check *egg-message-alist* %s %s"
	   wnn-server-type message)))

(defvar *egg-message-alist*
  '((jserver
     ((open-wnn "$B%[%9%H(B %s $B$N(B Wnn $B$r5/F0$7$^$7$?(B")
      (no-rcfile "%s $B>e$K(B egg-startup-file $B$,$"$j$^$;$s!#(B")
      (file-saved "Wnn$B$NIQEY>pJs!&<-=q>pJs$rB`Hr$7$^$7$?!#(B")
      (henkan-mode-indicator "$B4A(B")
      (begin-henkan "$BJQ493+;OJ8;zNs(B: ")
      (end-henkan "$BJQ49=*N;J8;zNs(B: ")
      (kugiri-dai "$BBgJ8@a6h@Z$jJ8;zNs(B: ")
      (kugiri-sho "$B>.J8@a6h@Z$jJ8;zNs(B: ")
      (attr-henkan "$BJQ496h4VI=<(B0@-(B: ")
      (attr-dai "$BBgJ8@a6h4VI=<(B0@-(B: ")
      (attr-sho "$B>.J8@a6h4VI=<(B0@-(B: ")
      (jikouho "$B<!8uJd(B:")
      (off-msg "%s %s(%s:%s)$B$r(B off $B$7$^$7$?!#(B")
      (henkan-help "$B4A;zJQ49%b!<%I(B:
$BJ8@a0\F0(B
  \\[henkan-first-bunsetu]\t$B@hF,J8@a(B\t\\[henkan-last-bunsetu]\t$B8eHxJ8@a(B  
  \\[henkan-backward-bunsetu]\t$BD>A0J8@a(B\t\\[henkan-forward-bunsetu]\t$BD>8eJ8@a(B
$BJQ49JQ99(B
  $BBgJ8@a<!8uJd(B    \\[henkan-next-kouho-dai]\t$B>.J8@a<!8uJd(B    \\[henkan-next-kouho-sho]
  $BA08uJd(B    \\[henkan-previous-kouho]  \t$B<!8uJd(B    \\[henkan-next-kouho]
  $BBgJ8@a?-$7(B  \\[henkan-bunsetu-nobasi-dai]  \t$BBgJ8@a=L$a(B  \\[henkan-bunsetu-chijime-dai]
  $B>.J8@a?-$7(B  \\[henkan-bunsetu-nobasi-sho]  \t$B>.J8@a=L$a(B  \\[henkan-bunsetu-chijime-sho]
  $BBgJ8@aJQ498uJdA*Br(B  \\[henkan-select-kouho-dai]  \t$B>.J8@aJQ498uJdA*Br(B  \\[henkan-select-kouho-sho]
$BJQ493NDj(B
  $BA4J8@a3NDj(B  \\[henkan-kakutei]  \t$BD>A0J8@a$^$G3NDj(B  \\[henkan-kakutei-before-point]
$BJQ49Cf;_(B    \\[henkan-quit]
")
      (hinsimei "$BIJ;lL>(B:")
      (jishotouroku-yomi "$B<-=qEPO?!X(B%s$B!Y(B  $BFI$_(B :")
      (touroku-jishomei "$BEPO?<-=qL>(B:" )
      (registerd "$B<-=q9`L\!X(B%s$B!Y(B(%s: %s)$B$r(B%s$B$KEPO?$7$^$7$?!#(B" )
      (yomi "$B$h$_!'(B")
;      (no-yomi "$B!X(B%s$B!Y$N<-=q9`L\$O$"$j$^$;$s!#(B")
      (no-yomi "$B<-=q9`L\!X(B%s$B!Y$O$"$j$^$;$s!#(B")
      (jisho "$B<-=q!'(B")
      (hindo " $BIQEY!'(B")
      (kanji "$B4A;z!'(B")
      (register-notify "$B<-=q9`L\!X(B%s$B!Y(B(%s: %s)$B$r(B%s$B$KEPO?$7$^$9!#(B")
      (cannot-remove "$B%7%9%F%`<-=q9`L\$O:o=|$G$-$^$;$s!#(B")
      (enter-hindo "$BIQEY$rF~$l$F2<$5$$(B: ")
      (remove-notify "$B<-=q9`L\(B%s(%s)$B$r(B%s$B$+$i:o=|$7$^$9!#(B")
      (removed "$B<-=q9`L\(B%s(%s)$B$r(B%s$B$+$i:o=|$7$^$7$?!#(B")
      (jishomei "$B<-=qL>(B:" )
      (comment "$B%3%a%s%H(B: ")
      (jisho-comment "$B<-=q(B:%s: $B%3%a%s%H(B:%s")
      (param ("$B#N(B ( $BBg(B ) $BJ8@a2r@O$N#N(B"
	      "$BBgJ8@aCf$N>.J8@a$N:GBg?t(B"
	      "$B448l$NIQEY$N%Q%i%a!<%?(B"
	      "$B>.J8@aD9$N%Q%i%a!<%?(B"
	      "$B448lD9$N%Q%i%a!<%?(B"
	      "$B:#;H$C$?$h%S%C%H$N%Q%i%a!<%?(B"
	      "$B<-=q$N%Q%i%a!<%?(B"
	      "$B>.J8@a$NI>2ACM$N%Q%i%a!<%?(B"
	      "$BBgJ8@aD9$N%Q%i%a!<%?(B"
	      "$B>.J8@a?t$N%Q%i%a!<%?(B"
	      "$B5?;wIJ;l(B $B?t;z$NIQEY(B"
	      "$B5?;wIJ;l(B $B%+%J$NIQEY(B"
	      "$B5?;wIJ;l(B $B1Q?t$NIQEY(B"
	      "$B5?;wIJ;l(B $B5-9f$NIQEY(B"
	      "$B5?;wIJ;l(B $BJD3g8L$NIQEY(B"
	      "$B5?;wIJ;l(B $BIUB08l$NIQEY(B"
	      "$B5?;wIJ;l(B $B3+3g8L$NIQEY(B"))
      ))
    (cserver
     ((open-wnn "Host %s $AIO5D(B cWnn $ARQ>-Fp6/AK(B")
      (no-rcfile "$ATZ(B%s $AIOC;SP(B egg-startup-file")
      (file-saved "Wnn$A5DF56HND<~:M4G5dPEO"RQ>-MK3vAK(B")
      (henkan-mode-indicator "$A::(B")
      (begin-henkan "$A1d;;?*J<WV7{AP(B: ")
      (end-henkan "$A1d;;=aJxWV7{AP(B: ")
      (kugiri-dai "$A4JWi7V8nWV7{AP(B: ")
      (kugiri-sho "$A5%4J7V8nWV7{AP(B: ")
      (attr-henkan "$A1d;;Gx<d1mJ>JtPT(B: ")
      (attr-dai "$A4JWiGx<d1mJ>JtPT(B: ")
      (attr-sho "$A5%4JGx<d1mJ>JtPT(B: ")
      (jikouho "$A4N:nQ!(B:")
      (off-msg "%s %s(%s:%s)$ARQ1;(B off $A5tAK(B")
      (henkan-help "$A::WV1d;;D#J=(B:
$A4JWiRF6/(B
  \\[henkan-first-bunsetu]\t$AOHM74JWi(B\t\\[henkan-last-bunsetu]\t$A=aN24JWi(B
  \\[henkan-backward-bunsetu]\t$AG0R;8v4JWi(B\t\\[henkan-forward-bunsetu]\t$AOBR;8v4JWi(B
$A1d;;1d8|(B
  $A4JWi4N:nQ!(B    \\[henkan-next-kouho-dai]\t$A5%4J4N:nQ!(B    \\[henkan-next-kouho-sho]
  $AG0:nQ!(B    \\[henkan-previous-kouho]  \t$A4N:nQ!(B    \\[henkan-next-kouho]
  $A4JWi@)U9(B  \\[henkan-bunsetu-nobasi-dai]  \t$A4JWiJUKu(B  \\[henkan-bunsetu-chijime-dai]
  $A5%4J@)U9(B  \\[henkan-bunsetu-nobasi-sho]  \t$A5%4JJUKu(B   \\[henkan-bunsetu-chijime-sho]
  $A4JWi1d;;:r295DQ!Tq(B  \\[henkan-select-kouho-dai]  \t$A5%4J1d;;:r295DQ!Tq(B  \\[henkan-select-kouho-sho]
  $A1d;;:r295DQ!Tq(B  \\[henkan-select-kouho-dai]
$A1d;;H76((B
  $AH+NDH76((B  \\[henkan-kakutei]  \t$AIOR;4JWiN*V95DH76((B  \\[henkan-kakutei-before-point]
$AM#V91d;;(B    \\[henkan-quit]
")
      (hinsimei "$A4JPTC{(B:")
      (jishotouroku-yomi "$A4G5d5GB<!:(B%s$A!;F47((B :")
      (touroku-jishomei "$A5GB<4G5dC{(B:" )
      (registerd "$A4G5dOnD?!:(B%s$A!;(B(%s: %s)$ARQ1;5GB<5=(B %s $AVPAK(B" )
      (yomi "$AF47($B!'(B")
;      (no-yomi "$A!:(B%s$A!;5D4G5dOnD?2;4fTZ(B")
      (no-yomi "$A4G5dOnD?!:(B%s$A!;2;4fTZ(B")
      (jisho "$A4G5d(B:")
      (hindo " $AF56H$B!'(B")
      (kanji "$A::WV$B!'(B")
      (register-notify "$A4G5dOnD?!:(B%s$A!;(B(%s: %s)$A=+R*1;5GB<5=(B %s $AVP(B")
      (cannot-remove "$AO5M34G5dOn2;D\O{3}(B")
      (enter-hindo "$AGkJdHkF56H(B: ")
      (remove-notify "$A4G5dOnD?(B%s(%s)$A=+R*4S(B %s $AVPO{3}(B")
      (removed "$A4G5dOnD?(B%s(%s)$ARQ>-4S(B%s$AVPO{3}AK(B")
      (jishomei "$A4G5dC{(B:" )
      (comment "$AW"JM(B: ")
      (jisho-comment "$A4G5d(B:%s: $AW"JM(B:%s")
      (param ("$A=bNv4JWi8vJ}(B"
	      "$A4JWiVP4J5DWn4s8vJ}(B"
	      "$AF56HH(V5(B"
	      "$A4J3$6HH(V5(B"
	      "$AKDIyU}H76HH(V5(B"
	      "$A8U2ESC9}H(V5(B"
	      "$AWV5dSEOH<6H(V5(B"
	      "$A4JF@<[>yV5H(V5(B"
	      "$A4JWi3$H(V5(B"
	      "$A4JWiVP4JJ}H(V5(B"
	      "$AJ}WV5DF56H(B"
	      "$AS"NDWVD85DF56H(B"
	      "$A<G:E5DF56H(B"
	      "$A?*@(;!5DF56H(B"
	      "$A1U@(;!5DF56H(B"
	      "$AWn4s:r298vJ}(B"
	      "$A18SC(B"
	      ))
      ))
    (kserver
     ((open-wnn "$(CH#=:F.(B %s $(C@G(B kWnn $(C8&(B $(CQ&TQ(B $(CG_@>4O4Y(B.")
      (no-rcfile "%s $(C?!(B egg-startup-file $(C@L(B $(C>x@>4O4Y(B.")
      (file-saved "kWnn $(C@G(B $(C^:SxoW\C!$^vnpoW\C8&(B $(C?E0e@>4O4Y(B.")
      (henkan-mode-indicator "$(CyS(B")
      (begin-henkan "$(C\(|5(B $(CKRc7(B $(CY~m.fj(B: ")
      (end-henkan "$(C\(|5(B $(Cp{Vu(B $(CY~m.fj(B: ")
      (kugiri-dai "$(CS^Y~o=(B $(CO!\,(B $(CY~m.fj(B: ")
      (kugiri-sho "$(Ca3Y~o=(B $(CO!\,(B $(CY~m.fj(B: ")
      (attr-henkan "$(C\(|5(B $(CO!J`(B $(CxvcF(B $(CaU`u(B: ")
      (attr-dai "$(CS^Y~o=(B $(CO!J`(B $(CxvcF(B $(CaU`u(B: ")
      (attr-sho "$(Ca3Y~o=(B $(CO!J`(B $(CxvcF(B $(CaU`u(B: ")
      (jikouho "$(C4Y@=(B $(C}&\M(B:")
      (off-msg "%s %s(%s:%s)$(C@;(B off $(CG_@>4O4Y(B.")
      (henkan-help "$(CySm.(B $(C\(|5(B $(C8p5e(B:
$(CY~o=(B $(Cl9TQ(B
  \\[henkan-first-bunsetu]\t$(C`;Ti(B $(CY~o=(B\t\\[henkan-last-bunsetu]\t$(C}-Z-(B $(CY~o=(B  
  \\[henkan-backward-bunsetu]\t$(CrAnq(B $(CY~o=(B\t\\[henkan-forward-bunsetu]\t$(CrA}-(B $(CY~o=(B
$(C\(|5(B $(C\(LZ(B
  $(CS^Y~o=(B $(C4Y@=(B $(C}&\M(B    \\[henkan-next-kouho-dai]\t$(Ca3Y~o=(B $(C4Y@=(B $(C}&\M(B    \\[henkan-next-kouho-sho]
  $(Cnq(B $(C}&\M(B    \\[henkan-previous-kouho]  \t$(C4Y@=(B $(C}&\M(B    \\[henkan-next-kouho]
  $(CS^Y~o=(B $(C|*S^(B  \\[henkan-bunsetu-nobasi-dai]  \t$(CS^Y~o=(B $(Cuja3(B  \\[henkan-bunsetu-chijime-dai]
  $(Ca3Y~o=(B $(C|*S^(B  \\[henkan-bunsetu-nobasi-sho]  \t$(Ca3Y~o=(B $(Cuja3(B  \\[henkan-bunsetu-chijime-sho]
  $(CS^Y~o=(B $(C\(|5(B $(C4Y@=(B $(C}&\M(B  \\[henkan-select-kouho-dai]  \t$(Ca3Y~o=(B $(C\(|5(B $(C4Y@=(B $(C}&\M(B  \\[henkan-select-kouho-sho]
$(C\(|5(B $(C|,oR(B
  $(CnoY~o=(B $(C|,oR(B  \\[henkan-kakutei]  \t$(CrAnq(B $(CY~o=1nAv(B $(C|,oR(B  \\[henkan-kakutei-before-point]
$(C\(|5(B $(Cqir-(B    \\[henkan-quit]
")
      (hinsimei "$(Cy!^rY#(B: ")
      (jishotouroku-yomi "$(C^vnpTtVb!:(B%s$(C!;(B $(CGQ1[(B: ")
      (touroku-jishomei "$(CTtVb(B $(C^vnpY#(B: " )
      (registerd "$(C^vnpz#YM(B $(C!:(B%s$(C!;(B(%s: %s)$(C@;(B %s$(C?!(B $(CTtVb(B $(CG_@>4O4Y(B." )
      (yomi "$(CGQ1[(B: ")
;      (no-yomi "$(C!:(B%s$(C!;@G(B $(C^vnpz#YM@L(B $(C>x@>4O4Y(B.")
      (no-yomi "$(C^vnpz#YM(B $(C!:(B%s$(C!;@L(B $(C>x@>4O4Y(B.")
      (jisho "$(C^vnp(B: ")
      (hindo " $(C^:Sx(B: ")
      (kanji "$(CySm.(B: ")
      (register-notify "$(C^vnpz#YM(B $(C!:(B%s$(C!;(B(%s: %s)$(C@;(B %s$(C?!(B $(CTtVb(B $(CGO0Z=@4O4Y(B.")
      (cannot-remove "$(C=C=:E[(B $(C^vnpz#YM@:(B $(Ca<K[(B $(CGR<v(B $(C>x@>4O4Y(B.")
      (enter-hindo "$(C^:Sx8&(B $(Cl}Ut(B $(CGO=J=C?@(B: ")
      (remove-notify "$(C^vnpz#YM(B %s(%s)$(C@;(B %s$(C:NEM(B $(Ca<K[(B $(CGO0Z=@4O4Y(B.")
      (removed "$(C^vnpz#YM(B %s(%s)$(C@;(B %s$(C:NEM(B $(Ca<K[(B $(CG_@>4O4Y(B.")
      (jishomei "$(C^vnpY#(B: " )
      (comment "$(CDZ8`F.(B: ")
      (jisho-comment "$(C^vnp(B:%s: $(CDZ8`F.(B:%s")
      (param ("N ($(CS^(B)$(CY~o=(B $(Cz0`0@G(B N"
	      "$(CS^Y~o=>H@G(B $(Ca3Y~o=<v@G(B $(CuLS^b&(B"
	      "$(CJOe^@G(B $(C^:Sx(B $(CFP7/9LEM(B"
	      "$(Ca3Y~o=1f@L(B $(CFP7/9LEM(B"
	      "$(CJOe^@G(B $(C1f@L(B $(CFP7/9LEM(B"
	      "$(Cq~PQ(B $(C^EiD(B $(CG_@>4O4Y(B $(C:qF.(B $(CFP7/9LEM(B"
	      "$(C^vnp@G(B $(CFP7/9LEM(B"
	      "$(Ca3Y~o=@G(B $(CxDJ$v7(B $(CFP7/9LEM(B"
	      "$(CS^Y~o=1f@L(B $(CFP7/9LEM(B"
	      "$(Ca3Y~o=b&(B $(CFP7/9LEM(B"
	      "$(CJ#_L(B $(Cy!^r(B: $(Cb&m.@G(B $(C^:Sx(B"
	      "$(CJ#_L(B $(Cy!^r(B: $(CGQ1[@G(B $(C^:Sx(B"
	      "$(CJ#_L(B $(Cy!^r(B: $(CgHb&m.@G(B $(C^:Sx(B"
	      "$(CJ#_L(B $(Cy!^r(B: $(CQ@{\@G(B $(C^:Sx(B"
	      "$(CJ#_L(B $(Cy!^r(B: $(CxMN@{A@G(B $(C^:Sx(B"
	      "$(CJ#_L(B $(Cy!^r(B: $(C]>aUe^@G(B $(C^:Sx(B"
	      "$(CJ#_L(B $(Cy!^r(B: $(CKRN@{A@G(B $(C^:Sx(B"))
      ))
    ))


;;;
;;; Entry functions for egg-startup-file
;;;

;(defvar wnn-lang-name nil)
;(defvar default-wnn-lang-name "ja_JP")	; 92.8.19 by T.Matsuzawa

(defvar skip-wnn-setenv-if-env-exist nil
  "skip wnn environment setting when the same name environment exists")

(defmacro push-end (val loc)
  (list 'push-end-internal val (list 'quote loc)))

(defun push-end-internal (val loc)
  (set loc
       (if (eval loc)
	   (nconc (eval loc) (cons val nil))
	 (cons val nil))))

(defun add-wnn-dict (dfile hfile priority dmode hmode &optional dpaswd hpaswd)
;  (open-wnn-if-disconnected)
  (if (null (wnn-server-dict-add
	     (substitute-in-file-name dfile)
	     (substitute-in-file-name hfile)
	     priority dmode hmode dpaswd hpaswd))
      (egg:error (wnn-server-get-msg))))

(defun set-wnn-fuzokugo (ffile)
;  (open-wnn-if-disconnected)
  (if (null (wnn-server-fuzokugo-set (substitute-in-file-name ffile)))
      (egg:error (wnn-server-get-msg))))

(defun set-wnn-param (&rest param)
  (interactive)
;  (open-wnn-if-disconnected)
  (let ((current-param (wnn-server-get-param))
	(new-param)
	(message (egg:msg-get 'param)))
    (while current-param
      (setq new-param
	    (cons
	     (if (or (null param) (null (car param)))
		 (string-to-int
		  (read-from-minibuffer (concat (car message) ": ")
					(int-to-string (car current-param))))
	       (car param))
	     new-param))
      (setq current-param (cdr current-param)
	    message (cdr message)
	    param (if param (cdr param) nil)))
    (apply 'wnn-server-set-param (nreverse new-param))))

;;;
;;; WNN interface
;;;

(defun make-host-list (name list)
  (let ((old-list list)
	(new-list (list name)))
    (while (consp old-list)
      (if (equal name (car old-list)) nil
	(nconc new-list (list (car old-list))))
      (setq old-list (cdr old-list)))
    new-list))

(defun set-wnn-host-name (name)
  (interactive "sHost name: ")
  (let ((wnn-server-type 'jserver)) (close-wnn))
  (if (null (boundp 'jserver-list))
      (setq jserver-list
	    (list
	     (if (boundp 'wnn-host-name)
		 wnn-host-name
	       (getenv "JSERVER")))))
  (setq jserver-list (make-host-list name jserver-list)))

(fset 'set-jserver-host-name (symbol-function 'set-wnn-host-name))

(defun set-cwnn-host-name (name)
  (interactive "sHost name: ")
  (let ((wnn-server-type 'cserver)) (close-wnn))
  (if (null (boundp 'cserver-list))
      (setq cserver-list
	    (list
	     (if (boundp 'cwnn-host-name)
		 cwnn-host-name
	       (getenv "CSERVER")))))
  (setq cserver-list (make-host-list name cserver-list)))

(fset 'set-cserver-host-name (symbol-function 'set-cwnn-host-name))

(defun set-kwnn-host-name (name)
  (interactive "sHost name: ")
  (let ((wnn-server-type 'kserver)) (close-wnn))
  (if (null (boundp 'kserver-list))
      (setq kserver-list
	    (list
	     (if (boundp 'kwnn-host-name)
		 kwnn-host-name
	       (getenv "KSERVER")))))
  (setq kserver-list (make-host-list name kserver-list)))

(fset 'set-kserver-host-name (symbol-function 'set-kwnn-host-name))

(defun open-wnn-if-disconnected ()
  (if (null (wnn-server-isconnect))
      (let ((hostlist
	     (if (eq wnn-server-type 'jserver)
		 (if (boundp 'jserver-list)
		     jserver-list
		   (list
		    (if (boundp 'wnn-host-name)
			wnn-host-name
		      (getenv "JSERVER"))))
	       (if (eq wnn-server-type 'cserver)
		   (if (boundp 'cserver-list)
		       cserver-list
		     (list
		      (if (boundp 'cwnn-host-name)
			  cwnn-host-name
			(getenv "CSERVER"))))
	       (if (eq wnn-server-type 'kserver)
		   (if (boundp 'kserver-list)
		       kserver-list
		     (list
		      (if (boundp 'kwnn-host-name)
			  kwnn-host-name
			(getenv "KSERVER"))))))))
	    (loginname (user-login-name))
	    (hostname)
	    (result))
	(while (and (consp hostlist) (null result))
	  (setq hostname (car hostlist))
	  (setq result (wnn-server-open hostname loginname))
	  (setq hostlist (cdr hostlist)))
	(if (null result)
	    (egg:error (wnn-server-get-msg))
	  (cond ((eq wnn-server-type 'jserver)
		 (setq wnn-host-name hostname))
		((eq wnn-server-type 'cserver)
		 (setq cwnn-host-name hostname))
		((eq wnn-server-type 'kserver)
		 (setq kwnn-host-name hostname)))))))

(defvar egg-default-startup-file "eggrc"
  "*Egg startup file name (system default)")

(defvar egg-startup-file ".eggrc"
  "*Egg startup file name.")

;;;  92/6/30, by K.Handa
(defvar egg-startup-file-search-path '("~" ".")
  "*List of directories to search for egg-startup-file
whose name defaults to .eggrc.")

(defun egg:search-file (filename searchpath)
  (let ((result nil))
    (if (null (file-name-directory filename))
	(let ((path searchpath))
	  (while (and path (null result ))
	    (let ((file (substitute-in-file-name
			 (expand-file-name filename (if (stringp (car path)) (car path) nil)))))
	      (if (file-exists-p file) (setq result file)
		(setq path (cdr path))))))
      (let((file (substitute-in-file-name (expand-file-name filename))))
	(if (file-exists-p file) (setq result file))))
    result))

(defun EGG:open-wnn ()
  (let ((host (open-wnn-if-disconnected)))
    (notify (egg:msg-get 'open-wnn)
	    (or host "local"))
    (let* ((path (append egg-startup-file-search-path load-path))
	   (eggrc (or (egg:search-file egg-startup-file path)
		      (egg:search-file egg-default-startup-file load-path))))
      (if (or (null skip-wnn-setenv-if-env-exist)
	      (null (wnn-server-dict-list)))
	  (if eggrc (load-file eggrc)
	    (let ((wnnenv-sticky nil)) (wnn-server-close))
	    (egg:error (egg:msg-get 'no-rcfile) path)))
      (run-hooks 'egg:open-wnn-hook))))

(defun disconnect-wnn ()
  (interactive)
  (if (wnn-server-isconnect) (wnn-server-close)))

(defun close-wnn ()
  (interactive)
  (if (wnn-server-isconnect)
      (progn
	(wnn-server-set-rev nil)
	(if (wnn-server-dict-save)
	    (progn
	      (message (egg:msg-get 'file-saved))
	      (sit-for 0))
	  (message  (wnn-server-get-msg))
	  (sit-for 0))
	(wnn-server-set-rev t)
	(if (wnn-server-dict-save)
	    (progn
	      (message (egg:msg-get 'file-saved))
	      (sit-for 0))
	  (message (wnn-server-get-msg))
	  (sit-for 0))
	(wnn-server-close)
	(run-hooks 'egg:close-wnn-hook))))

(defun set-wnn-reverse (arg)
;  (open-wnn-if-disconnected)
  (wnn-server-set-rev arg))

;;;
;;; Kanji henkan
;;;

(defvar egg:*kanji-kanabuff* nil)
(defvar egg:*dai* t)
(defvar *bunsetu-number* nil)
(defvar *zenkouho-suu* nil)
(defvar *zenkouho-offset* nil)

(defun bunsetu-length-sho (number)
  (cdr (wnn-server-bunsetu-yomi number)))
  
(defun bunsetu-length (number)
  (let ((max (wnn-server-dai-end number))
	(i (1+ number))
	(l (bunsetu-length-sho number)))
    (while (< i max)
      (setq l (+ l (bunsetu-length-sho i)))
      (setq i (1+ i)))
    l))

(defun bunsetu-position (number)
  (let ((pos egg:*region-start*) (i 0))
    (while (< i number)
      (setq pos (+ pos (length (bunsetu-kanji  i))
		   (if (wnn-server-dai-top (1+ i))
		       (length egg:*bunsetu-kugiri-dai*)
		     (length egg:*bunsetu-kugiri-sho*))))
      (setq i (1+ i)))
    pos))
  
(defun bunsetu-kanji (number) (car (wnn-server-bunsetu-kanji number)))
  
(defun bunsetu-yomi  (number) (car (wnn-server-bunsetu-yomi number)))

(defun kanji-moji-suu (str)
  (let ((max (length str)) (count 0) (i 0))
    (while (< i max)
      (setq count (1+ count))
      (if (< (aref str i) 128) (setq i (1+ i)) (setq i (+ i 2))))
    count))

(defun bunsetu-kouho-suu (number init)
  (if (or init (/= (wnn-server-zenkouho-bun) number))
      (setq *zenkouho-offset* (wnn-server-zenkouho number egg:*dai*)))
  (setq *zenkouho-suu* (wnn-server-zenkouho-suu)))

(defun bunsetu-kouho-list (number init)
  (if (or init (/= (wnn-server-zenkouho-bun) number))
      (setq *zenkouho-offset* (wnn-server-zenkouho number egg:*dai*)))
  (let ((i (1- (setq *zenkouho-suu* (wnn-server-zenkouho-suu))))
	(val nil))
    (while (<= 0 i)
      (setq val (cons (wnn-server-get-zenkouho i) val))
      (setq i (1- i)))
    val))

(defun bunsetu-kouho-number (number init)
  (if (or init (/= (wnn-server-zenkouho-bun) number))
      (setq *zenkouho-offset* (wnn-server-zenkouho number egg:*dai*)))
  *zenkouho-offset*)

;;;;
;;;; User entry : henkan-region, henkan-paragraph, henkan-sentence
;;;;

(defun egg:henkan-attribute-on ()
  (egg:set-region-attribute egg:*henkan-attribute* t))

(defun egg:henkan-attribute-off ()
  (egg:set-region-attribute egg:*henkan-attribute* nil))

(defun henkan-region (start end)
  (interactive "r")
  (if (interactive-p) (set-mark (point))) ;;; to be fixed
  (henkan-region-internal start end))

(defun gyaku-henkan-region (start end)
  (interactive "r")
  (if (interactive-p) (set-mark (point))) ;;; to be fixed
  (henkan-region-internal start end t))

;(defvar henkan-mode-indicator "$B4A(B")

(defun henkan-region-internal (start end &optional rev)
  "region$B$r$+$J4A;zJQ49$9$k!#(B"
  (if (null (wnn-server-isconnect)) (EGG:open-wnn))
  (setq egg:*kanji-kanabuff* (buffer-substring start end))
; 8 Jul 92, by K.Handa
;  (if overwrite-mode
;      (setq egg:*overwrite-mode-deleted-chars* 
;	    (if egg:*henkan-fence-mode* 0
;	      (length egg:*kanji-kanabuff*))))
  (setq *bunsetu-number* 0)
  (setq egg:*dai* t)	; 92.9.8 by T.shingu
  (wnn-server-set-rev rev)
  (let ((result (wnn-server-henkan-begin egg:*kanji-kanabuff*)))
    (if (null result)
	(egg:error (wnn-server-get-msg))
      (if  (> result 0)
	  (progn
;	    (mode-line-egg-mode-update henkan-mode-indicator)
	    (mode-line-egg-mode-update (egg:msg-get 'henkan-mode-indicator))
	    (goto-char start)
	    (if (null (marker-position egg:*region-start*))
		(progn
		;;;(setq egg:*global-map-backup* (current-global-map))
		  (setq egg:*local-map-backup* (current-local-map))
		  (and (boundp 'disable-undo) (setq disable-undo t))
		  (delete-region start end)
		  (goto-char start)
		  (insert egg:*henkan-open*)
		  (set-marker egg:*region-start* (point))
		  (insert egg:*henkan-close*)
		  (set-marker egg:*region-end* egg:*region-start*)
		  (egg:henkan-attribute-on)
		  (goto-char egg:*region-start*)
		  )
	      (progn
		(egg:fence-attribute-off)
		(delete-region (- egg:*region-start* (length egg:*fence-open*)) 
			       egg:*region-start*)
		(delete-region egg:*region-end*
			       (+ egg:*region-end* (length egg:*fence-close*)))
		(goto-char egg:*region-start*)
		(insert egg:*henkan-open*)
		(set-marker egg:*region-start* (point))
		(goto-char egg:*region-end*)
		(let ((point (point)))
		  (insert egg:*henkan-close*)
		  (set-marker egg:*region-end* point))
		(goto-char start)
		(delete-region start end)
		(egg:henkan-attribute-on))
	      )
	    (henkan-insert-kouho 0 result)
	    (henkan-goto-bunsetu 0)
	    ;;;(use-global-map henkan-mode-map)
	    ;;;(use-local-map nil)
	    (use-local-map henkan-mode-map))))
    (run-hooks 'egg:henkan-start-hook)))


(defun henkan-paragraph ()
  "Kana-kanji henkan  paragraph at or after point."
  (interactive )
  (forward-paragraph)
  (let ((end (point)))
    (backward-paragraph)
    (henkan-region-internal (point) end)))

(defun gyaku-henkan-paragraph ()
  "Kana-kanji henkan  paragraph at or after point."
  (interactive )
  (forward-paragraph)
  (let ((end (point)))
    (backward-paragraph)
    (henkan-region-internal (point) end t)))

(defun henkan-sentence ()
  "Kana-kanji henkan sentence at or after point."
  (interactive )
  (forward-sentence)
  (let ((end (point)))
    (backward-sentence)
    (henkan-region-internal (point) end)))

(defun gyaku-henkan-sentence ()
  "Kana-kanji henkan sentence at or after point."
  (interactive )
  (forward-sentence)
  (let ((end (point)))
    (backward-sentence)
    (henkan-region-internal (point) end t)))

(defun henkan-word ()
  "Kana-kanji henkan word at or after point."
  (interactive)
  (re-search-backward "\\<" nil t)
  (let ((start (point)))
    (re-search-forward "\\>" nil t)
    (henkan-region-internal start (point))))

(defun gyaku-henkan-word ()
  "Kana-kanji henkan word at or after point."
  (interactive)
  (re-search-backward "\\<" nil t)
  (let ((start (point)))
    (re-search-forward "\\>" nil t)
    (henkan-region-internal start (point) t)))

;;;
;;; Kana Kanji Henkan Henshuu mode
;;;

(defconst egg:*bunsetu-kugiri-sho* "-" "*$B>.J8@a$N6h@Z$j$r<($9J8;zNs(B")
(defconst egg:*bunsetu-kugiri-dai* " " "*$BBgJ8@a$N6h@Z$j$r<($9J8;zNs(B")
(defconst egg:*bunsetu-attribute-dai* nil "*$BBgJ8@aI=<($KMQ$$$k(Battribute $B$^$?$O(B nil")
(defconst egg:*bunsetu-attribute-sho* nil "*$B>.J8@aI=<($KMQ$$$k(Battribute $B$^$?$O(B nil")

(defconst egg:*henkan-attribute* nil "*$BJQ49NN0h$rI=<($9$k(Battribute $B$^$?$O(B nil")
(defconst egg:*henkan-open*  "|" "*$BJQ49$N;OE@$r<($9J8;zNs(B")
(defconst egg:*henkan-close* "|" "*$BJQ49$N=*E@$r<($9J8;zNs(B")

(defun set-egg-henkan-mode-format (open close kugiri-dai kugiri-sho
					&optional attr1 attr2 attr3)
   "$BJQ49(B mode $B$NI=<(J}K!$r@_Dj$9$k!#(BOPEN $B$OJQ49$N;OE@$r<($9J8;zNs$^$?$O(B nil$B!#(B
CLOSE$B$OJQ49$N=*E@$r<($9J8;zNs$^$?$O(B nil$B!#(B
KUGIRI-DAI$B$OBgJ8@a$N6h@Z$j$rI=<($9$kJ8;zNs$^$?$O(B nil$B!#(B
KUGIRI-SHO$B$O>.J8@a$N6h@Z$j$rI=<($9$kJ8;zNs$^$?$O(B nil$B!#(B
optional ATTR1 $B$OJQ496h4V$rI=<($9$kB0@-(B $B$^$?$O(B nil$B!J(Bx11term $B$N$_$GM-8z!K(B
optional ATTR2 $B$OBgJ8@a6h4V$rI=<($9$kB0@-(B $B$^$?$O(B nil$B!J(Bx11term $B$N$_$GM-8z!K(B
optional ATTR3 $B$O>.J8@a6h4V$rI=<($9$kB0@-(B $B$^$?$O(B nil$B!J(Bx11term $B$N$_$GM-8z!K(B"

  (interactive (list (read-string (egg:msg-get 'begin-henkan))
		     (read-string (egg:msg-get 'end-henkan))
		     (read-string (egg:msg-get 'kugiri-dai))
		     (read-string (egg:msg-get 'kugiri-sho))
		     (cdr (assoc (completing-read (egg:msg-get 'attr-henkan)
						  egg:*attribute-alist*)
				 egg:*attribute-alist*))
		     (cdr (assoc (completing-read (egg:msg-get 'attr-dai)
						  egg:*attribute-alist*)
				 egg:*attribute-alist*))
		     (cdr (assoc (completing-read (egg:msg-get 'attr-sho)
						  egg:*attribute-alist*)
				 egg:*attribute-alist*))
		     ))
  (cond ((null (or (stringp open)  (null open)))
	 (egg:error "Wrong type of arguments(open): %s" open))
	((null (or (stringp close) (null close)))
	 (egg:error "Wrong type of arguments(close): %s" close))
	((null (or (stringp kugiri-dai) (null kugiri-dai)))
	 (egg:error "Wrong type of arguments(kugiri-dai): %s" kugiri-dai))
	((null (or (stringp kugiri-sho) (null kugiri-sho)))
	 (egg:error "Wrong type of arguments(kugiri-sho): %s" kugiri-sho))
	((null (egg:member attr1 '(underline inverse bold nil)))
	 (egg:error "Wrong type of arguments(attr1): %s" attr1))
	((null (egg:member attr2 '(underline inverse bold nil)))
	 (egg:error "Wrong type of arguments(attr2): %s" attr2))
	((null (egg:member attr3 '(underline inverse bold nil)))
	 (egg:error "Wrong type of arguments(attr3): %s" attr3))
	(t
	 (setq egg:*henkan-open* open
	       egg:*henkan-close* close
	       egg:*bunsetu-kugiri-dai* (or kugiri-dai "")
	       egg:*bunsetu-kugiri-sho* (or kugiri-sho "")
	       egg:*henkan-attribute* attr1
	       egg:*bunsetu-attribute-dai* attr2
	       egg:*bunsetu-attribute-sho* attr3)
	 (if (or attr1 attr2 attr3) (require 'attribute))
	 nil)))


(defun henkan-insert-kouho (start number)
  (let ((i start))
    (while (< i number)
      (insert (car (wnn-server-bunsetu-kanji i))
	      (if (= (1+ i) number)
		  ""
		  (if (wnn-server-dai-top (1+ i))
		      egg:*bunsetu-kugiri-dai*
		      egg:*bunsetu-kugiri-sho*)))
      (setq i (1+ i)))))
  
(defun henkan-kakutei ()
  (interactive)
  (egg:bunsetu-attribute-off *bunsetu-number*)
  (egg:henkan-attribute-off)
  (delete-region (- egg:*region-start* (length egg:*henkan-open*))
		 egg:*region-start*)
  (delete-region egg:*region-start* egg:*region-end*)
  (delete-region egg:*region-end* (+ egg:*region-end* (length egg:*henkan-close*)))
  (goto-char egg:*region-start*)
  (setq egg:*sai-henkan-start* (point))
  (let ((i 0) (max (wnn-server-bunsetu-suu)))
    (setq egg:*old-bunsetu-suu* max)
    (while (< i max)
      (insert (car (wnn-server-bunsetu-kanji i )))
      (if (not overwrite-mode)
	  (undo-boundary))
      (setq i (1+ i))
      ))
  (setq egg:*sai-henkan-end* (point))
  (wnn-server-hindo-update)
  (egg:quit-egg-mode)
  (run-hooks 'egg:henkan-end-hook)
  )

;; 92.7.10 by K.Handa
(defun henkan-kakutei-first-char ()
  "$B3NDjJ8;zNs$N:G=i$N0lJ8;z$@$1A^F~$9$k!#(B"
  (interactive)
  (egg:bunsetu-attribute-off *bunsetu-number*)
  (egg:henkan-attribute-off)
  (delete-region (- egg:*region-start* (length egg:*henkan-open*))
		 egg:*region-start*)
  (delete-region egg:*region-start* egg:*region-end*)
  (delete-region egg:*region-end* (+ egg:*region-end*
				     ;; 92.8.5  by Y.Kasai
				     (length egg:*henkan-close*)))
  (goto-char egg:*region-start*)
  (insert (car (wnn-server-bunsetu-kanji 0)))
  (if (not overwrite-mode)
      (undo-boundary))
  (goto-char egg:*region-start*)
  (forward-char 1)
  (delete-region (point) egg:*region-end*)
  (wnn-server-hindo-update)
  (egg:quit-egg-mode)
  )
;; end of patch

(defun henkan-kakutei-before-point ()
  (interactive)
  (egg:bunsetu-attribute-off *bunsetu-number*)
  (egg:henkan-attribute-off)
  (delete-region egg:*region-start* egg:*region-end*)
  (goto-char egg:*region-start*)
  (let ((i 0) (max *bunsetu-number*))
    (while (< i max)
      (insert (car (wnn-server-bunsetu-kanji i )))
      (if (not overwrite-mode)
	  (undo-boundary))
      (setq i (1+ i))
      ))
  (wnn-server-hindo-update *bunsetu-number*)
  (delete-region (- egg:*region-start* (length egg:*henkan-open*))
		 egg:*region-start*)
  (insert egg:*fence-open*)
  (set-marker egg:*region-start* (point))
  (delete-region egg:*region-end* (+ egg:*region-end* (length egg:*henkan-close*)))
  (goto-char egg:*region-end*)
  (let ((point (point)))
    (insert egg:*fence-close*)
    (set-marker egg:*region-end* point))
  (goto-char egg:*region-start*)
  (egg:fence-attribute-on)
  (let ((point (point))
	(i *bunsetu-number*) (max (wnn-server-bunsetu-suu)))
    (while (< i max)
      (insert (car (wnn-server-bunsetu-yomi i)))
      (setq i (1+ i)))
    ;;;(insert "|")
    ;;;(insert egg:*fence-close*)
    ;;;(set-marker egg:*region-end* (point))
    (goto-char point))
  (setq egg:*mode-on* t)
  ;;;(use-global-map fence-mode-map)
  ;;;(use-local-map  nil)
  (use-local-map fence-mode-map)
  (egg:mode-line-display))

(defun sai-henkan ()
  (interactive)
  (mode-line-egg-mode-update (egg:msg-get 'henkan-mode-indicator))
  (goto-char egg:*sai-henkan-start*)
  (if (null (marker-position egg:*region-start*))
      (progn
	(setq egg:*local-map-backup* (current-local-map))
	(and (boundp 'disable-undo) (setq disable-undo t))
	(delete-region egg:*sai-henkan-start* egg:*sai-henkan-end*)
	(goto-char egg:*sai-henkan-start*)
	(insert egg:*henkan-open*)
	(set-marker egg:*region-start* (point))
	(insert egg:*henkan-close*)
	(set-marker egg:*region-end* egg:*region-start*)
	(egg:henkan-attribute-on)
	(goto-char egg:*region-start*)
	)
    (progn
      (egg:fence-attribute-off)
      (delete-region (- egg:*region-start* (length egg:*fence-open*)) 
		     egg:*region-start*)
      (delete-region egg:*region-end*
		     (+ egg:*region-end* (length egg:*fence-close*)))
      (goto-char egg:*region-start*)
      (insert egg:*henkan-open*)
      (set-marker egg:*region-start* (point))
      (goto-char egg:*region-end*)
      (let ((point (point)))
	(insert egg:*henkan-close*)
	(set-marker egg:*region-end* point))
	(goto-char egg:*sai-henkan-start*)
	(delete-region egg:*sai-henkan-start* egg:*sai-henkan-end*)
      (egg:henkan-attribute-on))
    )
  (henkan-insert-kouho 0 egg:*old-bunsetu-suu*)
  (henkan-goto-bunsetu 0)
  (use-local-map henkan-mode-map)
  )

(defun egg:set-region-attribute (attr on)
  (if attr 
      (attribute-on-off-region attr egg:*region-start* egg:*region-end* on)))

(defun egg:set-bunsetu-attribute (no attr switch &optional dai)
  (let ((next (if dai (wnn-server-dai-end no)
		(1+ no)))
	(bunsetu-suu (wnn-server-bunsetu-suu))
	(start no))
    (if dai (while (null (wnn-server-dai-top start))
	      (setq start (1- start))))
    (if (and start attr)
	(attribute-on-off-region
	 attr
	 (if (and (eq attr 'inverse) (null dai))
	     (let ((p (bunsetu-position start)))
	       (save-excursion
		 (goto-char p)
		 (forward-char)
		 (setq p (point)))
	       p)
	   (bunsetu-position start))
	 (if (= next bunsetu-suu)
	     egg:*region-end*
	   (- (bunsetu-position next)
	      (if (wnn-server-dai-top next)
		  (length egg:*bunsetu-kugiri-dai*)
		(length egg:*bunsetu-kugiri-sho*))))
	 switch))))

(defun egg:bunsetu-attribute-on (no)
  (egg:set-bunsetu-attribute no egg:*bunsetu-attribute-dai* t t)
  (egg:set-bunsetu-attribute no egg:*bunsetu-attribute-sho* t nil))

(defun egg:bunsetu-attribute-off (no)
  (egg:set-bunsetu-attribute no egg:*bunsetu-attribute-dai* nil t)
  (egg:set-bunsetu-attribute no egg:*bunsetu-attribute-sho* nil nil))

(defun henkan-goto-bunsetu (number)
  (egg:bunsetu-attribute-off *bunsetu-number*)
  (setq *bunsetu-number*
	(check-number-range number 0 (1- (wnn-server-bunsetu-suu))))
  (goto-char (bunsetu-position *bunsetu-number*))
  (egg:set-bunsetu-attribute *bunsetu-number* egg:*henkan-attribute* nil t)
  (egg:set-bunsetu-attribute *bunsetu-number* egg:*henkan-attribute* nil nil)
  (egg:bunsetu-attribute-on *bunsetu-number*)
  (egg:henkan-attribute-on)
  )

(defun henkan-forward-bunsetu ()
  (interactive)
  (henkan-goto-bunsetu (1+ *bunsetu-number*))
  )

(defun henkan-backward-bunsetu ()
  (interactive)
  (henkan-goto-bunsetu (1- *bunsetu-number*))
  )

(defun henkan-first-bunsetu ()
  (interactive)
  (henkan-goto-bunsetu 0))

(defun henkan-last-bunsetu ()
  (interactive)
  (henkan-goto-bunsetu (1- (wnn-server-bunsetu-suu)))
  )
 
(defun check-number-range (i min max)
  (cond((< i min) max)
       ((< max i) min)
       (t i)))

(defun henkan-hiragana ()
  (interactive)
  (henkan-goto-kouho (- (bunsetu-kouho-suu *bunsetu-number* nil) 1)))

(defun henkan-katakana ()
  (interactive)
  (henkan-goto-kouho (- (bunsetu-kouho-suu *bunsetu-number* nil) 2)))

(defun henkan-next-kouho ()
  (interactive)
  (henkan-goto-kouho (1+ (bunsetu-kouho-number *bunsetu-number* nil))))

(defun henkan-next-kouho-dai ()
  (interactive)
  (if egg:*dai*
      (henkan-goto-kouho (1+ (bunsetu-kouho-number *bunsetu-number* nil)))
    (progn
      (setq egg:*dai* t)
      (henkan-goto-kouho (1+ (bunsetu-kouho-number *bunsetu-number* t))))))

(defun henkan-next-kouho-sho ()
  (interactive)
  (if egg:*dai*
      (progn
	(setq egg:*dai* nil)
	(henkan-goto-kouho (1+ (bunsetu-kouho-number *bunsetu-number* t))))
    (henkan-goto-kouho (1+ (bunsetu-kouho-number *bunsetu-number* nil)))))
  
(defun henkan-previous-kouho ()
  (interactive)
  (henkan-goto-kouho (1- (bunsetu-kouho-number *bunsetu-number* nil))))

(defun henkan-previous-kouho-dai ()
  (interactive)
  (if egg:*dai*
      (henkan-goto-kouho (1- (bunsetu-kouho-number *bunsetu-number* nil)))
    (progn
      (setq egg:*dai* t)
      (henkan-goto-kouho (1- (bunsetu-kouho-number *bunsetu-number* t))))))

(defun henkan-previous-kouho-sho ()
  (interactive)
  (if egg:*dai*
      (progn
	(setq egg:*dai* nil)
	(henkan-goto-kouho (1- (bunsetu-kouho-number *bunsetu-number* t))))
    (henkan-goto-kouho (1- (bunsetu-kouho-number *bunsetu-number* nil)))))
  
(defun henkan-goto-kouho (kouho-number)
  (egg:bunsetu-attribute-off *bunsetu-number*)
  (let ((point (point))
	(yomi  (bunsetu-yomi *bunsetu-number*))
	(max)
	(min))
    (setq kouho-number 
	  (check-number-range kouho-number 
			      0
			      (1- (length (bunsetu-kouho-list
					   *bunsetu-number* nil)))))
    (setq *zenkouho-offset* kouho-number)
    (wnn-server-henkan-kakutei kouho-number egg:*dai*)
    (setq max (wnn-server-bunsetu-suu))
    (setq min (max 0 (1- *bunsetu-number*)))
    (delete-region 
     (bunsetu-position min) egg:*region-end*)
    (goto-char (bunsetu-position min))
    (henkan-insert-kouho min max)
    (goto-char point))
  (egg:set-bunsetu-attribute *bunsetu-number* egg:*henkan-attribute* nil t)
  (egg:set-bunsetu-attribute *bunsetu-number* egg:*henkan-attribute* nil nil)
  (egg:bunsetu-attribute-on *bunsetu-number*)
  (egg:henkan-attribute-on))
  
(defun henkan-bunsetu-chijime-dai ()
  (interactive)
  (setq egg:*dai* t)
  (or (= (bunsetu-length *bunsetu-number*) 1)
      (bunsetu-length-henko (1-  (bunsetu-length *bunsetu-number*)))))

(defun henkan-bunsetu-chijime-sho ()
  (interactive)
  (setq egg:*dai* nil)
  (or (= (bunsetu-length-sho *bunsetu-number*) 1)
      (bunsetu-length-henko (1-  (bunsetu-length-sho *bunsetu-number*)))))

(defun henkan-bunsetu-nobasi-dai ()
  (interactive)
  (setq egg:*dai* t)
  (let ((i *bunsetu-number*)
	(max (wnn-server-bunsetu-suu))
	(len (bunsetu-length *bunsetu-number*))
	(maxlen 0))
    (while (< i max)
      (setq maxlen (+ maxlen (cdr (wnn-server-bunsetu-yomi i))))
      (setq i (1+ i)))
    (if (not (= len maxlen))
	(bunsetu-length-henko (1+ len)))))

(defun henkan-bunsetu-nobasi-sho ()
  (interactive)
  (setq egg:*dai* nil)
  (let ((i *bunsetu-number*)
	(max (wnn-server-bunsetu-suu))
	(len (bunsetu-length-sho *bunsetu-number*))
	(maxlen 0))
    (while (< i max)
      (setq maxlen (+ maxlen (cdr (wnn-server-bunsetu-yomi i))))
      (setq i (1+ i)))
    (if (not (= len maxlen))
	(bunsetu-length-henko (1+ len)))))

;  (if (not (= (1+ *bunsetu-number*) (wnn-server-bunsetu-suu)))
;      (bunsetu-length-henko (1+ (bunsetu-length *bunsetu-number*)))))


(defun henkan-saishou-bunsetu ()
  (interactive)
  (bunsetu-length-henko 1))

(defun henkan-saichou-bunsetu ()
  (interactive)
  (let ((max (wnn-server-bunsetu-suu)) (i *bunsetu-number*)
	(l 0))
    (while (< i max)
      (setq l (+ l (bunsetu-length-sho i)))
      (setq i (1+ i)))
    (bunsetu-length-henko l)))

(defun bunsetu-length-henko (length)
  (let ((i 0)
	(r (wnn-server-bunsetu-henkou *bunsetu-number* length egg:*dai*))
	(start (max 0 (1- *bunsetu-number*))))
    (cond((null r)
	  (egg:error (wnn-server-get-msg)))
	 ((> r 0)
	  (egg:henkan-attribute-off)
	  (egg:bunsetu-attribute-off *bunsetu-number*)
	  (delete-region 
	   (bunsetu-position start) egg:*region-end*)
	  (goto-char (bunsetu-position start))
	  (henkan-insert-kouho start r)
	  (henkan-goto-bunsetu *bunsetu-number*)))))

(defun henkan-quit ()
  (interactive)
  (egg:bunsetu-attribute-off *bunsetu-number*)
  (egg:henkan-attribute-off)
  (delete-region (- egg:*region-start* (length egg:*henkan-open*))
		 egg:*region-start*)
  (delete-region egg:*region-start* egg:*region-end*)
  (delete-region egg:*region-end* (+ egg:*region-end* (length egg:*henkan-close*)))
  (goto-char egg:*region-start*)
  (insert egg:*fence-open*)
  (set-marker egg:*region-start* (point))
  (insert egg:*kanji-kanabuff*)
  (let ((point (point)))
    (insert egg:*fence-close*)
    (set-marker egg:*region-end* point)
    )
  (goto-char egg:*region-end*)
  (egg:fence-attribute-on)
  (wnn-server-henkan-quit)
  (setq egg:*mode-on* t)
  ;;;(use-global-map fence-mode-map)
  ;;;(use-local-map  nil)
  (use-local-map fence-mode-map)
  (egg:mode-line-display)
  )

(defun henkan-select-kouho (init)
  (if (not (eq (selected-window) (minibuffer-window)))
      (let ((kouho-list (bunsetu-kouho-list *bunsetu-number* init))
	    menu)
	(setq menu
	      (list 'menu (egg:msg-get 'jikouho)
		    (let ((l kouho-list) (r nil) (i 0))
		      (while l
			(setq r (cons (cons (car l) i) r))
			(setq i (1+ i))
			(setq l (cdr l)))
		      (reverse r))))
	(henkan-goto-kouho 
	 (menu:select-from-menu menu 
				(bunsetu-kouho-number *bunsetu-number* nil))))
    (beep)))

(defun henkan-select-kouho-dai ()
  (interactive)
  (if egg:*dai*
      (henkan-select-kouho nil)
    (progn
      (setq egg:*dai* t)
      (henkan-select-kouho t))))

(defun henkan-select-kouho-sho ()
  (interactive)
  (if egg:*dai*
      (progn
	(setq egg:*dai* nil)
	(henkan-select-kouho t))
    (henkan-select-kouho nil)))


(defun henkan-word-off ()
  (interactive)
  (let ((info (wnn-server-inspect *bunsetu-number*)))
    (if (null info)
	(notify (wnn-server-get-msg))
      (progn
	(let ((dic-list (wnn-server-dict-list)))
	  (if (null dic-list)
	      (notify (wnn-server-get-msg))
	    (progn
	      (let* ((kanji (nth 0 info))
		     (yomi (nth 1 info))
		     (serial   (nth 3 info))
		     (jisho-no (nth 2 info))
		     (jisho-name (nth 2 (assoc jisho-no dic-list))))
		(if (wnn-server-word-use jisho-no serial)
		    (notify (egg:msg-get 'off-msg)
			    kanji yomi jisho-name serial)
		  (egg:error (wnn-server-get-msg)))))))))))

(defun henkan-kakutei-and-self-insert ()
  (interactive)
  (setq unread-command-char last-command-char)
  (henkan-kakutei))


(defvar henkan-mode-map (make-keymap))

(defvar henkan-mode-esc-map (make-keymap))

(let ((ch 0))
  (while (<= ch 127)
    (aset henkan-mode-map ch 'undefined)
    (aset henkan-mode-esc-map ch 'undefined)
    (setq ch (1+ ch))))

(let ((ch 32))
  (while (< ch 127)
    (aset henkan-mode-map ch 'henkan-kakutei-and-self-insert)
    (setq ch (1+ ch))))
	
(define-key henkan-mode-map "\e"   henkan-mode-esc-map)
;(define-key henkan-mode-map "\ei"  'henkan-inspect-bunsetu)
(define-key henkan-mode-map "\ei"  'henkan-bunsetu-chijime-sho)
(define-key henkan-mode-map "\eo"  'henkan-bunsetu-nobasi-sho)
(define-key henkan-mode-map "\es"  'henkan-select-kouho-dai)
(define-key henkan-mode-map "\eh"  'henkan-hiragana)
(define-key henkan-mode-map "\ek"  'henkan-katakana)
(define-key henkan-mode-map "\ez"  'henkan-select-kouho-sho)
(define-key henkan-mode-map "\e<"  'henkan-saishou-bunsetu)
(define-key henkan-mode-map "\e>"  'henkan-saichou-bunsetu)
;(define-key henkan-mode-map " "    'henkan-next-kouho-dai)
					; 92.9.8 by T.Shingu
(define-key henkan-mode-map " "    'henkan-next-kouho)
					; 92.7.10 by K.Handa
(define-key henkan-mode-map "\C-@" 'henkan-kakutei-first-char)
(define-key henkan-mode-map "\C-a" 'henkan-first-bunsetu)
(define-key henkan-mode-map "\C-b" 'henkan-backward-bunsetu)
(define-key henkan-mode-map "\C-c" 'henkan-quit)
(define-key henkan-mode-map "\C-d" 'undefined)
(define-key henkan-mode-map "\C-e" 'henkan-last-bunsetu)
(define-key henkan-mode-map "\C-f" 'henkan-forward-bunsetu)
(define-key henkan-mode-map "\C-g" 'henkan-quit)
(define-key henkan-mode-map "\C-h" 'henkan-help-command)
(define-key henkan-mode-map "\C-i" 'henkan-bunsetu-chijime-dai)
(define-key henkan-mode-map "\C-j" 'undefined)
(define-key henkan-mode-map "\C-k" 'henkan-kakutei-before-point)
(define-key henkan-mode-map "\C-l" 'henkan-kakutei)
(define-key henkan-mode-map "\C-m" 'henkan-kakutei)
(define-key henkan-mode-map "\C-n" 'henkan-next-kouho)
(define-key henkan-mode-map "\C-o" 'henkan-bunsetu-nobasi-dai)
(define-key henkan-mode-map "\C-p" 'henkan-previous-kouho)
(define-key henkan-mode-map "\C-q" 'undefined)
(define-key henkan-mode-map "\C-r" 'undefined)
(define-key henkan-mode-map "\C-s" 'undefined)
;(define-key henkan-mode-map "\C-t" 'undefined)
(define-key henkan-mode-map "\C-t"  'toroku-henkan-mode)
(define-key henkan-mode-map "\C-u" 'undefined)
(define-key henkan-mode-map "\C-v" 'henkan-inspect-bunsetu)
(define-key henkan-mode-map "\C-w" 'henkan-next-kouho-dai)
(define-key henkan-mode-map "\C-x" 'undefined)
(define-key henkan-mode-map "\C-y" 'undefined)
(define-key henkan-mode-map "\C-z" 'henkan-next-kouho-sho)
(define-key henkan-mode-map "\177" 'henkan-quit)

(defun henkan-help-command ()
  "Display documentation fo henkan-mode."
  (interactive)
  (if (eq (get-buffer "*Help*") (current-buffer))
      (henkan-quit)
    (with-output-to-temp-buffer (buffer-name buf)
;       (princ (substitute-command-keys henkan-mode-document-string))
	(princ (substitute-command-keys (egg:msg-get 'henkan-help)))
	(print-help-return-message))))

;;;----------------------------------------------------------------------
;;;
;;; Dictionary management Facility
;;;
;;;----------------------------------------------------------------------

;;;
;;; $B<-=qEPO?(B 
;;;

;;;;
;;;; User entry: toroku-region
;;;;

(defun remove-regexp-in-string (regexp string)
  (cond((not(string-match regexp string))
	string)
       (t(let ((str nil)
	     (ostart 0)
	     (oend   (match-beginning 0))
	     (nstart (match-end 0)))
	 (setq str (concat str (substring string ostart oend)))
	 (while (string-match regexp string nstart)
	   (setq ostart nstart)
	   (setq oend   (match-beginning 0))
	   (setq nstart (match-end 0))
	   (setq str (concat str (substring string ostart oend))))
	 (concat str (substring string nstart))))))

(defun hinsi-from-menu (dict-no name)
  (let ((result (wnn-server-hinsi-list dict-no name))
;	(hinsi-pair)
	(menu))
    (if (null result)
	(egg:error (wnn-server-get-msg))
      (if (eq result 0)
	  name
	(progn
;	  (setq hinsi-pair (mapcar '(lambda (x) (cons x x)) result))
;	  (if (null (string= name "/"))
;	      (setq hinsi-pair (cons (cons "/" "/") hinsi-pair)))
;	  (setq menu (list 'menu (egg:msg-get 'hinsimei) hinsi-pair))
	  (setq menu (list 'menu (egg:msg-get 'hinsimei)
			   (if (string= name "/")
			       result
			     (cons "/" result))))
	  (hinsi-from-menu dict-no 
			   (menu:select-from-menu menu)))))))

(defun wnn-dict-name (dict-no dict-list)
  (let* ((dict-info (assoc dict-no dict-list))
	 (dict-comment (nth 2 dict-info)))
    (if (string= dict-comment "")
	(file-name-nondirectory (nth 1 dict-info))
      dict-comment)))

(defun toroku-region (start end)
  (interactive "r")
  (if (null (wnn-server-isconnect)) (EGG:open-wnn))
  (wnn-server-set-rev nil)
  (let*((kanji
	 (remove-regexp-in-string "[\0-\37]" (buffer-substring start end)))
	(yomi (read-current-its-string
	       (format (egg:msg-get 'jishotouroku-yomi) kanji)))
	(dic-list (wnn-server-dict-list))
	(writable-dic-list (wnn-server-hinsi-dicts -1))
	(dict-no
	 (menu:select-from-menu
	  (list 'menu (egg:msg-get 'touroku-jishomei)
		(mapcar '(lambda (x)
			   (let ((y (car (assoc x dic-list))))
			     (cons (wnn-dict-name y dic-list) y)))
			writable-dic-list))))
	(hinsi-name (hinsi-from-menu dict-no "/"))
	(hinsi-no (wnn-server-hinsi-number hinsi-name)))
    (if (wnn-server-word-add dict-no kanji yomi "" hinsi-no)
	(notify (egg:msg-get 'registerd)
	    kanji yomi hinsi-name (wnn-dict-name dict-no dic-list))
      (egg:error (wnn-server-get-msg)))))


(defun delete-space (string)
  (let ((len (length string)))
    (if (eq len 0) ""
      (if (or (char-equal (aref string 0) ? ) (char-equal (aref string 0) ?-)) 
	  (delete-space (substring string 1))
	(concat (substring string 0 1) (delete-space (substring string 1)))))))


(defun toroku-henkan-mode ()
  (interactive)
  (let*((kanji 	 
	 (read-current-its-string (egg:msg-get 'kanji)
			       (delete-space 
				(buffer-substring (point) egg:*region-end* ))))
	(yomi (read-current-its-string
	       (format (egg:msg-get 'jishotouroku-yomi) kanji)
	       (let ((str "")
		     (i *bunsetu-number*) 
		     (max (wnn-server-bunsetu-suu)))
		 (while (< i max)
		   (setq str (concat str (car (wnn-server-bunsetu-yomi i)) ))
		   (setq i (1+ i)))
		 str)))
	(dic-list (wnn-server-dict-list))
	(writable-dic-list (wnn-server-hinsi-dicts -1))
	(dict-no
	 (menu:select-from-menu
	  (list 'menu (egg:msg-get 'touroku-jishomei)
		(mapcar '(lambda (x)
			   (let ((y (car (assoc x dic-list))))
			     (cons (wnn-dict-name y dic-list) y)))
			writable-dic-list))))
	(hinsi-name (hinsi-from-menu dict-no "/"))
	(hinsi-no (wnn-server-hinsi-number hinsi-name)))
    (if (wnn-server-word-add dict-no kanji yomi "" hinsi-no)
	(notify (egg:msg-get 'registerd)
	    kanji yomi hinsi-name (wnn-dict-name dict-no dic-list))
      (egg:error (wnn-server-get-msg)))))

;;;
;;; $B<-=qJT=87O(B DicEd
;;;

(defvar *diced-window-configuration* nil)

(defvar *diced-dict-info* nil)

(defvar *diced-yomi* nil)

;;;;;
;;;;; User entry : edit-dict-item
;;;;;

(defun edit-dict-item (yomi)
  (interactive (list (read-current-its-string (egg:msg-get 'yomi))))
  (if (null (wnn-server-isconnect)) (EGG:open-wnn))
  (wnn-server-set-rev nil)
  (let ((dict-info (wnn-server-word-search yomi)))
    (if (null dict-info)
	(message (egg:msg-get 'no-yomi) yomi)
      (progn
	(setq current-wnn-server-type wnn-server-type)
	(setq *diced-yomi* yomi)
	(setq *diced-window-configuration* (current-window-configuration))
	(pop-to-buffer "*Nihongo Dictionary Information*")
	(setq wnn-server-type current-wnn-server-type)
	(setq major-mode 'diced-mode)
	(setq mode-name "Diced")
	(setq mode-line-buffer-identification 
	      (concat "DictEd: " yomi
		      (make-string  (max 0 (- 17 (string-width yomi))) ?  )))
	(sit-for 0) ;; will redislay.
	;;;(use-global-map diced-mode-map)
	(use-local-map diced-mode-map)
	(diced-display dict-info)
	))))

(defun diced-redisplay ()
  (wnn-server-set-rev nil)
  (let ((dict-info (wnn-server-word-search *diced-yomi*)))
    (if (null dict-info)
	(progn
	  (message (egg:msg-get 'no-yomi) *diced-yomi*)
	  (diced-quit))
      (diced-display dict-info))))

(defun diced-display (dict-info)
	;;; (values (list (record kanji bunpo hindo dict-no serial-no)))
	;;;                         0     1     2      3       4
  (setq dict-info
	(sort dict-info
	      (function (lambda (x y)
			  (or (< (nth 1 x) (nth 1 y))
			      (if (= (nth 1 x) (nth 1 y))
				  (or (> (nth 2 x) (nth 2 y))
				      (if (= (nth 2 x) (nth 2 y))
					  (< (nth 3 x) (nth 3 y))))))))))
  (setq *diced-dict-info* dict-info)
  (setq buffer-read-only nil)
  (erase-buffer)
  (let ((l-kanji 
	 (apply 'max
		(mapcar (function (lambda (l) (string-width (nth 0 l))))
			dict-info)))
	(l-bunpo
	 (apply 'max
		(mapcar (function(lambda (l)
				   (string-width (wnn-server-hinsi-name (nth 1 l)))))
			dict-info)))
	(dict-list (wnn-server-dict-list))
	(writable-dict-list (wnn-server-hinsi-dicts -1)))
    (while dict-info
      (let*((kanji (nth 0 (car dict-info)))
	    (bunpo (nth 1 (car dict-info)))
	    (hinshi (wnn-server-hinsi-name bunpo))
	    (hindo (nth 2 (car dict-info)))
	    (dict-no (nth 3 (car dict-info)))
	    (dict-name (wnn-dict-name dict-no dict-list))
	    (sys-dict-p (null (memq dict-no writable-dict-list)))
	    (serial-no (nth 4 (car dict-info))))
	(insert (if sys-dict-p " *" "  "))
	(insert kanji)
	(insert-char ?  
		     (- (+ l-kanji 10) (string-width kanji)))
	(insert hinshi)
	(insert-char ?  (- (+ l-bunpo 2) (string-width hinshi)))
	(insert (egg:msg-get 'jisho) (file-name-nondirectory dict-name)
		"/" (int-to-string serial-no)
		(egg:msg-get 'hindo) (int-to-string hindo) ?\n )
	(setq dict-info (cdr dict-info))))
    (goto-char (point-min)))
  (setq buffer-read-only t))

(defun diced-add ()
  (interactive)
  (diced-execute t)
  (let*((kanji  (read-from-minibuffer (egg:msg-get 'kanji)))
	(dic-list (wnn-server-dict-list))
	(writable-dic-list (wnn-server-hinsi-dicts -1))
	(dict-no
	 (menu:select-from-menu
	  (list 'menu (egg:msg-get 'touroku-jishomei)
		(mapcar '(lambda (x)
			   (let ((y (car (assoc x dic-list))))
			     (cons (wnn-dict-name y dic-list) y)))
			writable-dic-list))))
	(hinsi-name (hinsi-from-menu dict-no "/"))
	(hinsi-no (wnn-server-hinsi-number hinsi-name))

	(dict-name (wnn-dict-name dict-no dic-list))
	)
    (if (notify-yes-or-no-p (egg:msg-get 'register-notify)
			    kanji *diced-yomi* hinsi-name dict-name)
	(progn
	  (if (wnn-server-word-add dict-no kanji *diced-yomi* "" hinsi-no)
	      (notify (egg:msg-get 'registerd)
		      kanji *diced-yomi* hinsi-name dict-name)
	    (egg:error (wnn-server-get-msg)))
	  (diced-redisplay)))))
	      
(defun diced-delete ()
  (interactive)
  (beginning-of-line)
  (if (= (char-after (1+ (point))) ?* )
      (progn (message (egg:msg-get 'cannot-remove)) (beep))
    (if (= (following-char) ?  )
	(let ((buffer-read-only nil))
	  (delete-char 1) (insert "D") (backward-char 1))
      )))

    
(defun diced-undelete ()
  (interactive)
  (beginning-of-line)
  (if (= (following-char) ?D)
      (let ((buffer-read-only nil))
	(delete-char 1) (insert " ") (backward-char 1))
    (beep)))

(defun diced-use ()
  (interactive)
  (let* ((dict-item (nth 
		     (+ (count-lines (point-min) (point))
			(if (= (current-column) 0) 1 0)
			-1)
		    *diced-dict-info*))
	 (hindo (nth 2 dict-item))
	 (dict-no (nth 3 dict-item))
	 (serial-no (nth 4 dict-item))
	 )
    (if (null (wnn-server-word-use dict-no serial-no))
	(egg:error (wnn-server-get-msg)))
    (setq buffer-read-only nil)
    (beginning-of-line)
    (re-search-forward "\\([0-9\-]+\\)\\(\n\\)")
    (delete-region (match-beginning 1) (match-end 1))
    (setq hindo (nth 3 (wnn-server-word-info dict-no serial-no)))
    (goto-char (match-beginning 1))
    (insert (int-to-string hindo))
    (beginning-of-line)
    (setq buffer-read-only t)))

(defun diced-hindo-set (&optional newhindo)
  (interactive)
  (if (null newhindo)
      (setq newhindo (read-minibuffer (egg:msg-get 'enter-hindo))))
  (let* ((dict-item (nth 
		     (+ (count-lines (point-min) (point))
			(if (= (current-column) 0) 1 0)
			-1)
		    *diced-dict-info*))
	 (hindo (nth 2 dict-item))
	 (dict-no (nth 3 dict-item))
	 (serial-no (nth 4 dict-item))
	 )
    (if (null (wnn-server-word-hindo-set dict-no serial-no newhindo))
	(egg:error (wnn-server-get-msg)))
    (setq buffer-read-only nil)
    (beginning-of-line)
    (re-search-forward "\\([0-9\-]+\\)\\(\n\\)")
    (delete-region (match-beginning 1) (match-end 1))
    (setq hindo (nth 3 (wnn-server-word-info dict-no serial-no)))
    (goto-char (match-beginning 1))
    (insert (int-to-string hindo))
    (beginning-of-line)
    (setq buffer-read-only t)))


(defun diced-quit ()
  (interactive)
  (setq buffer-read-only nil)
  (erase-buffer)
  (setq buffer-read-only t)
  (bury-buffer (get-buffer "*Nihongo Dictionary Information*"))
  (set-window-configuration *diced-window-configuration*)
  )

(defun diced-execute (&optional display)
  (interactive)
  (goto-char (point-min))
  (let ((no  0))
    (while (not (eobp))
      (if (= (following-char) ?D)
	  (let* ((dict-item (nth no *diced-dict-info*))
		 (kanji (nth 0 dict-item))
		 (bunpo (nth 1 dict-item))
		 (hinshi (wnn-server-hinsi-name bunpo))
		 (hindo (nth 2 dict-item))
		 (dict-no (nth 3 dict-item))
		 (dict-name (wnn-dict-name dict-no (wnn-server-dict-list)))
		 (sys-dict-p (null (memq dict-no (wnn-server-hinsi-dicts -1))))
		 (serial-no (nth 4 dict-item))
		 )
	    (if (notify-yes-or-no-p (egg:msg-get 'remove-notify)
				kanji hinshi dict-name)
		(progn
		  (if (wnn-server-word-delete dict-no serial-no)
		      (notify (egg:msg-get 'removed)
			      kanji hinshi dict-name)
		    (egg:error (wnn-server-get-msg)))
		  ))))
      (setq no (1+ no))
      (forward-line 1)))
  (forward-line -1)
  (if (not display) (diced-redisplay)))

(defun diced-next-line ()
  (interactive)
  (beginning-of-line)
  (forward-line 1)
  (if (eobp) (progn (beep) (forward-line -1))))

(defun diced-end-of-buffer ()
  (interactive)
  (end-of-buffer)
  (forward-line -1))

(defun diced-scroll-down ()
  (interactive)
  (scroll-down)
  (if (eobp) (forward-line -1)))

(defun diced-mode ()
  "Mode for \"editing\" dictionaries.
In diced, you are \"editing\" a list of the entries in dictionaries.
You can move using the usual cursor motion commands.
Letters no longer insert themselves. Instead, 

Type  a to Add new entry.
Type  d to flag an entry for Deletion.
Type  n to move cursor to Next entry.
Type  p to move cursor to Previous entry.
Type  q to Quit from DicEd.
Type  C-u to Toggle the word to use/unuse.
Type  u to Unflag an entry (remove its D flag).
Type  x to eXecute the deletions requested.
"
 )

(defvar diced-mode-map (let ((map (make-keymap))) (suppress-keymap map) map))

(define-key diced-mode-map "a"    'diced-add)
(define-key diced-mode-map "d"    'diced-delete)
(define-key diced-mode-map "n"    'diced-next-line)
(define-key diced-mode-map "p"    'previous-line)
(define-key diced-mode-map "q"    'diced-quit)
;(define-key diced-mode-map "t"    'diced-use)
(define-key diced-mode-map "u"    'diced-undelete)
(define-key diced-mode-map "x"    'diced-execute)

(define-key diced-mode-map "\C-h" 'help-command)
(define-key diced-mode-map "\C-n" 'diced-next-line)
(define-key diced-mode-map "\C-p" 'previous-line)
(define-key diced-mode-map "\C-u" 'diced-use)
(define-key diced-mode-map "\C-v" 'scroll-up)
(define-key diced-mode-map "\eh"  'diced-hindo-set)
(define-key diced-mode-map "\e<"  'beginning-of-buffer)
(define-key diced-mode-map "\e>"  'diced-end-of-buffer)
(define-key diced-mode-map "\ev"  'diced-scroll-down)


;;;
;;; set comment on dictionary
;;;

(defun set-dict-comment ()
  (interactive)
  (if (null (wnn-server-isconnect)) (EGG:open-wnn))
  (wnn-server-set-rev nil)
  (let*((dic-list (wnn-server-dict-list))
	(writable-dic-list (wnn-server-hinsi-dicts -1))
	(dict-no
	 (menu:select-from-menu
	  (list 'menu (egg:msg-get 'jishomei)
		(mapcar '(lambda (x)
			   (let ((y (assoc x dic-list)))
			     (cons (nth 1 y) (nth 0 y))))
			writable-dic-list))))
	(comment (read-from-minibuffer (egg:msg-get 'comment)
				       (wnn-dict-name dict-no dic-list))))
    (if (wnn-server-dict-comment dict-no comment)
	(notify (egg:msg-get 'jisho-comment)
		(wnn-dict-name dict-no dic-list) comment)
      (egg:error (wnn-server-get-msg)))))


;;;
;;; Pure inspect facility
;;;

(defun henkan-inspect-bunsetu ()
  (interactive)
  (let ((info (wnn-server-inspect *bunsetu-number*)))
    (if (null info)
	(notify (wnn-server-get-msg))
      (progn
	(let ((dic-list (wnn-server-dict-list)))
	  (if (null dic-list)
	      (notify (wnn-server-get-msg))
	    (progn
	      (let ((hinsi (wnn-server-hinsi-name (nth 4 info)))
		    (kanji (nth 0 info))
		    (yomi (nth 1 info))
		    (serial   (nth 3 info))
		    (hindo    (nth 5 info))
		    (jisho (wnn-dict-name (nth 2 info) dic-list))
		    (ima (nth 6 info))
		    (hyoka (nth 7 info))
		    (daihyoka (nth 8 info))
		    (kangovect (nth 9 info)))
		(notify-internal
		 (format "%s %s(%s %s:%s Freq:%s%s) S:%s D:%s V:%s "
			 kanji yomi hinsi jisho serial 
			 (if (= ima 1) "*" " ")
			 hindo hyoka daihyoka kangovect)
		 t)))))))))


