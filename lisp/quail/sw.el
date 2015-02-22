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
;;	Original table is from cxterm/dict/tit/SW.tit.
;; 92.6.24  modified for Mule Ver.0.9.5 by K.Handa <handa@etl.go.jp>
;;	To cope with new version of quail.

;; # HANZI input table for cxterm
;; # To be used by cxterm, convert me to .cit format first
;; # .cit version 1
;; ENCODE:	GB
;; MULTICHOICE:	YES
;; PROMPT:	$A::WVJdHk!KJWN2!K(B 
;; #
;; COMMENT	($AT4SZ(B CCDOS)
;; COMMENT	$AJiP48C::WVJ15D!8JW1J!9<0!8N21J!9!#@}Hg#,!>B@!?JWN21J=TN*!8?Z!9#,9JTZ(B
;; COMMENT $A!8JWN2!9D#J=VPSC(B ff0 $AH}<|JdHk!##((B f $A<|TZ!8JWN2!9D#J=VP1mJ>!8?Z!9#)(B
;; # define keys
;; VALIDINPUTKEY:	abcdefghijklmnopqrstuvwxyz
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
;; MOVERIGHT:	.>
;; MOVELEFT:	,<
;; REPEATKEY:	\020\022
;; KEYPROMPT(a):	$APDSV(B
;; KEYPROMPT(b):	$AZ"I=(B
;; KEYPROMPT(c):	$AJ,MA(B
;; KEYPROMPT(d):	$AX<56(B
;; KEYPROMPT(e):	$A;pZb(B
;; KEYPROMPT(f):	$A?Z?Z(B
;; KEYPROMPT(g):	$A^PRB(B
;; KEYPROMPT(h):	$Ac_qb(B
;; KEYPROMPT(i):	$AZ%4s(B
;; KEYPROMPT(j):	$A\36!(B
;; KEYPROMPT(k):	$AXi[L(B
;; KEYPROMPT(l):	$AD>la(B
;; KEYPROMPT(m):	$AljJ.(B
;; KEYPROMPT(n):	$Ab;4u(B
;; KEYPROMPT(o):	$ATBXg(B
;; KEYPROMPT(p):	$AfyCE(B
;; KEYPROMPT(q):	$AJ/=q(B
;; KEYPROMPT(r):	$AMuX-(B
;; KEYPROMPT(s):	$A0KE.(B
;; KEYPROMPT(t):	$AX/RR(B
;; KEYPROMPT(u):	$AHU`m(B
;; KEYPROMPT(v):	$AeAP!(B
;; KEYPROMPT(w):	$Aak3'(B
;; KEYPROMPT(x):	$AVq3f(B
;; KEYPROMPT(y):	$AR;_.(B
;; KEYPROMPT(z):	$AHK27(B
;; # the following line must not be removed
;; BEGINDICTIONARY
;; #

(require 'quail)

(quail-define-package
 "sw" "$AJWN2(B"
 '((?a . "$APD(B") (?b . "$AZ"(B") (?c . "$AJ,(B") (?d . "$AX<(B") (?e . "$A;p(B") (?f . "$A?Z(B")
   (?g . "$A^P(B") (?h . "$Ac_(B") (?i . "$AZ%(B") (?j . "$A\3(B") (?k . "$AXi(B") (?l . "$AD>(B") 
   (?m . "$Alj(B") (?n . "$Ab;(B") (?o . "$ATB(B") (?p . "$Afy(B") (?q . "$AJ/(B") (?r . "$AMu(B")
   (?s . "$A0K(B") (?t . "$AX/(B") (?u . "$AHU(B") (?v . "$AeA(B") (?w . "$Aak(B") (?x . "$AVq(B")
   (?y . "$AR;(B") (?z . "$AHK(B"))
 "$A::WVJdHk!KJWN2!K(B 

	($AT4SZ(B CCDOS)
	$AJiP48C::WVJ15D!8JW1J!9<0!8N21J!9!#@}Hg#,!>B@!?JWN21J=TN*!8?Z!9#,9JTZ(B
 $A!8JWN2!9D#J=VPSC(B ff0 $AH}<|JdHk!##((B f $A<|TZ!8JWN2!9D#J=VP1mJ>!8?Z!9#)(B"
 *quail-mode-rich-map* nil nil nil nil t)

(defmacro qdl (key str)
  (list 'quail-defrule key (list 'string-to-char-list str)))

(qdl "aa" "\
$A2f:6B}IeK+PDSVb`bec*(B\
$Ac1c9m!(B")
(qdl "ac" "\
$A6.9VDQJ%N)PJPTc%c&c?(B")
(qdl "ad" "\
$A2@<&A/H0Lhbabvbzb~c)(B\
$Ac5c6(B")
(qdl "ae" "\
$A5K;Vc8(B")
(qdl "af" "\
$A5kG!LqNrbobwbyc!(B")
(qdl "ag" "\
$A:^<hbj(B")
(qdl "ah" "\
$Ac@(B")
(qdl "ai" "\
$A0C?lbsb{(B")
(qdl "aj" "\
$A6T<BJQSdbbb|c#(B")
(qdl "ak" "\
$AGSbl(B")
(qdl "al" "\
$AI#bpc>(B")
(qdl "am" "\
$A5,5?:7P8bcbhbqbxc"c,(B\
$Ac2(B")
(qdl "ao" "\
$A626hDUE3GDGibfc+c.c/(B\
$Ac0c7c<(B")
(qdl "ap" "\
$ACu(B")
(qdl "ar" "\
$A2Q;LPCbg(B")
(qdl "as" "\
$A>eIw(B")
(qdl "at" "\
$A1X2R3@9[;E;P?.@"MoRd(B\
$ASGTCbdbkbub}c((B")
(qdl "au" "\
$A;ZEBO'Twc'c;cB(B")
(qdl "av" "\
$A;3>*?6c$c:c=cA(B")
(qdl "ax" "\
$ATi(B")
(qdl "ay" "\
$A5~:cC&O7PtUzbibnbrc3(B")
(qdl "az" "\
$A7_9_;6@Abmbtc-c4r*(B")
(qdl "ba" "\
$A<E>~G^a*aLe5qd(B")
(qdl "bb" "\
$A3v?_C\I=R$Z"aH(B")
(qdl "bc" "\
$A4^A~H{JRLCQBVO(B")
(qdl "bd" "\
$A3#9Q:.:WA1AkC]GOGTGn(B\
$AP4Sla8a>a@e9p2q7q:(B")
(qdl "be" "\
$AL?TV[)a9(B")
(qdl "bf" "\
$A9,9Y:&;m<R=Q>=?MH]Sx(B\
$AZ#`7a2e;e@(B")
(qdl "bg" "\
$AE)IQe7e=e>(B")
(qdl "bh" "\
$A6(aZe?(B")
(qdl "bi" "\
$AD/J5M;O?q<(B")
(qdl "bj" "\
$A4)8n<DD~FiJXQ'SnUFVE(B\
$AWVX[X\X`a,a3a?aFaNe:(B\
$Aq>(B")
(qdl "bk" "\
$A3":jaBaQ(B")
(qdl "bl" "\
$A08CBKNLDU/aAaIq=tP(B")
(qdl "bm" "\
$A067e:1>|@NTWa)a;aVaW(B")
(qdl "bn" "\
$AKjq6(B")
(qdl "bo" "\
$A1@8Z;B?yGMNQO|T"a'a+(B\
$Aa0a<aEaTaUe6e8(B")
(qdl "bq" "\
$AQRa/e4(B")
(qdl "br" "\
$A1&4\IsU8a5a=ex(B")
(qdl "bs" "\
$A021vQ(QgRzYdZ$aJaPq@(B")
(qdl "bt" "\
$A3h539Z>?>u?-?\?m?zAH(B\
$AFqH_K|MjMpN!O\RYT)U,(B\
$Aa(a-a1aCaMe3jiq8q;(B")
(qdl "bu" "\
$A408;K^Vfa6aDaRq9q?qA(B")
(qdl "bv" "\
$A2l3gKnWZa4aSe<m4(B")
(qdl "bx" "\
$AC[r?(B")
(qdl "by" "\
$A6k?UP{RKa:aGaKaOaXvW(B")
(qdl "bz" "\
$A6nG6H|IMU-a[r'(B")
(qdl "ca" "\
$A5n9D;[BDBsFBN?V>[`[~(B\
$A\,\2ell0l1l2m"m#m(tv(B")
(qdl "cb" "\
$A;wG|\%s@(B")
(qdl "cc" "\
$A1Z6Q9M9gBqIyJ,J?MAN](B\
$A[d[l\'qs(B")
(qdl "cd" "\
$A3!3`7;7?:U=Y>!>V>y?<(B\
$A?eEUE|HMIHKzN$Nk[X[^(B\
$A[j[|\#\(fqpLqltctftp(B")
(qdl "ce" "\
$A6<:BH4lY(B")
(qdl "cf" "\
$A98:><*<N>SE`F)FtK~LA(B\
$AO2[cqjqkv%(B")
(qdl "cg" "\
$A1mH@T,U9[stE(B")
(qdl "ch" "\
$A3,3C5L5e808OFpGwH$LK(B\
$AT=UTW_eotqtrtstttu(B")
(qdl "ci" "\
$A0#?iFu\)ialeto(B")
(qdl "cj" "\
$A7b>2>g?@K"KBN>P"[W[u(B\
$A[xemenj|k"qhqq(B")
(qdl "ck" "\
$A2cH%L3TE(B")
(qdl "cl" "\
$A0>6bD)J:N4Vs\&\.i^ld(B\
$Aqg(B")
(qdl "cm" "\
$A1Y2:7a8{F:FAO,PRUX[}(B\
$A\/\1eqlfqz(B")
(qdl "cn" "\
$AvKvM(B")
(qdl "co" "\
$A0=1[1b6U7X9!;x<g=LFR(B\
$AG`IJIbJtL.MNP<Q_[m[p(B\
$A[q[v\!\*\-eglgqmqnqp(B")
(qdl "cq" "\
$Am9m`qr(B")
(qdl "cr" "\
$A@$[Z[_[th5(B")
(qdl "cs" "\
$ABELnepfKfTqo(B")
(qdl "ct" "\
$A0R5X:D>3?G?S@ODaEmF((B\
$AN2Q^[Y[\[][b[g[h[n[y(B\
$A[{\"ejj4j6jkk#lhqiv&(B")
(qdl "cu" "\
$A3_6>6B=lC<G=M@TvU_[a(B\
$A[i\0ekh:jHn-tw(B")
(qdl "cv" "\
$A;5DrKX[o\$\+tltn(B")
(qdl "cw" "\
$A[[(B")
(qdl "cx" "\
$Ar|s'(B")
(qdl "cy" "\
$A3G:x?0@,EwL9LkPfQNR<(B\
$ASrT+V7Vg[f[k[zh9nAw!(B")
(qdl "cz" "\
$A0S?2?nTpW8XT[e[r[wli(B\
$Ar!(B")
(qdl "da" "\
$A1d1o?"A5AhEQGCHLM|Rb(B\
$ARcm'm-m0(B")
(qdl "db" "\
$ABMe2tL(B")
(qdl "dc" "\
$A5T;'M/R+S:W3W<[S[Ul:(B")
(qdl "dd" "\
$A5[7=7[7k@dETH/HPJPMd(B\
$AN*R`SpTOX<Y{[?[@l6l7(B\
$Ap=pHpRpUq4tOtT(B")
(qdl "de" "\
$A2?9y=<@IDGI[ZxZz[5(B")
(qdl "df" "\
$A:@;?A_IXK>LGL\QTR1S~(B\
$AU3U>UYWI`4(B")
(qdl "dg" "\
$A0'0}9|A8A<BCK%OeRBVT(B\
$AW0YrYsYtYvwS(B")
(qdl "dh" "\
$AD}P}u?(B")
(qdl "di" "\
$A4U=1>v@`M7W4We^HtWt\(B")
(qdl "dj" "\
$A:`<A=+>;?LAuBNBOEPFJ(B\
$AH-M$OmOwWQY}l=(B")
(qdl "dk" "\
$AP~Z!tY(B")
(qdl "dl" "\
$A8b=0CWEkGWJlhohptRt[(B")
(qdl "dm" "\
$A0j0k1W1f1g1h4b4d67;T(B\
$A>YAOBJFzPAUBWd^Dt`(B")
(qdl "dn" "\
$AvG(B")
(qdl "do" "\
$A1V3(515r6K6X7E8_8`:}(B\
$A=;>+>,>8@J@kE4ILIPJ}(B\
$ANDP$P'R9RaReS}U+YukA(B\
$Akvl*l9tMtZ(B")
(qdl "dp" "\
$Al5(B")
(qdl "dr" "\
$A3eFkM{PBQ>V]Vwc\l4(B")
(qdl "ds" "\
$A7`AyB&F`FlM}PKRmW1WK(B\
$Af*f.(B")
(qdl "dt" "\
$A3d4I565s9b:A>9>:>M>m(B\
$A?:?vAAJ)O0QeS.UCYpYq(B\
$AYxYyYzY~j3k)l8l;l<tN(B\
$AtV(B")
(qdl "du" "\
$A=4=_>lC$D6F3FIH?PsRt(B\
$ATcV.jFtQtX(B")
(qdl "dv" "\
$A1y2Z63=,>)?7@1A9A]NI(B\
$AS@Ywq5tU(B")
(qdl "dw" "\
$A2z9cpZ(B")
(qdl "dx" "\
$AByt](B")
(qdl "dy" "\
$A1n1s4A4V5A<uA"A#B>C%(B\
$AJkMvN@RnYoY|v_(B")
(qdl "dz" "\
$A1e2|4N8S:%QUWJl'q~r$(B")
(qdl "ea" "\
$AAjO(R~ZfZiZn[FlQlW(B")
(qdl "eb" "\
$A2SB=(B")
(qdl "ec" "\
$A1]6iB!B/TnW9ZmZo(B")
(qdl "ed" "\
$A7@=}?>I?LUO)WFfol>l?(B")
(qdl "ee" "\
$A;pQWZ`Zb[0lM(B")
(qdl "ef" "\
$A1:@SEcH[ZglIlJ(B")
(qdl "eg" "\
$AO^ZqlP(B")
(qdl "eh" "\
$A68(B")
(qdl "ei" "\
$A;@H2IBl[(B")
(qdl "ej" "\
$A0"5F8=X_lCl_(B")
(qdl "ek" "\
$A;blE(B")
(qdl "el" "\
$A3}C:H<ToZt(B")
(qdl "em" "\
$A7i:8=5UOUsZdZeZplGlH(B\
$AlL(B")
(qdl "eo" "\
$A1~8t><>fKeRuSglNlTlX(B")
(qdl "ep" "\
$AlK(B")
(qdl "eq" "\
$AlB(B")
(qdl "er" "\
$A;M=WZrlD(B")
(qdl "es" "\
$A3c:f(B")
(qdl "et" "\
$A34?;B$EZHnIUMSMiT:Zc(B\
$AZlZsl@lA(B")
(qdl "eu" "\
$AD0O]QLQfQtlVlZl\(B")
(qdl "ev" "\
$A1,3B<JA6AGK8KfKmO6cD(B\
$AlUl](B")
(qdl "ex" "\
$AVr(B")
(qdl "ey" "\
$A0/@CB*L~OUWhZjlOlS(B")
(qdl "ez" "\
$A466S73TIU(ZhZk(B")
(qdl "fa" "\
$A0OKtL>V(_D_N_i_|`#`((B\
$A`2`?`D`E`H`\`fuKuUub(B\
$Aufus(B")
(qdl "fb" "\
$A_M`W(B")
(qdl "fc" "\
$AA(MBMYM[N(_r`,`-`8`g(B\
$A`kuMu`up(B")
(qdl "fd" "\
$A5p5u7T:E>i?gAmBnBpCy(B\
$AKCL#L_LcLdNGNKNXQ+S4(B\
$A_6_7_?_J_K_O_j_k_q_y(B\
$A_{`OpJpXu@un(B")
(qdl "fe" "\
$A1I6uDDTG[+_5_T_s`"`%(B\
$A`1`=l^u\(B")
(qdl "ff" "\
$A9>9~:?>a?&?'?)?ZB7B@(B\
$AF7FwI6N{OyQdWD_R_m_v(B\
$A`*`9`e`mu9uJuLuXuZu[(B")
(qdl "fg" "\
$A8zHBN9___f_g`luTwR(B")
(qdl "fh" "\
$ALgWc`$(B")
(qdl "fi" "\
$A0&5x7M:m;=?^NbPaT>_;(B\
$A_>`&`U`[`^uCuhuk(B")
(qdl "fj" "\
$A0!1p3l6#6W8@9P:G:_:t(B\
$A=@@.OxQ=SuSw_L_V`'`@(B\
$AuFui(B")
(qdl "fk" "\
$A_:_`(B")
(qdl "fl" "\
$A2H4t6e:YBoI$N6TjTk_](B\
$A_a_d_x`)`:`]uWu^ue(B")
(qdl "fm" "\
$A;)F!R6_Y_c_h_t_}`F`h(B\
$AuBuOuV(B")
(qdl "fn" "\
$A6__\`G(B")
(qdl "fo" "\
$A0%1D28304->`?PDEDvE;(B\
$AIZN|OlR'S;VvWl_C_F_Q(B\
$A_l_z`!`+`/`0`;`C`J`T(B\
$A`V`_`c`iuAuGuSu_uaud(B\
$Aug(B")
(qdl "fp" "\
$Auo(B")
(qdl "fq" "\
$ARwuE(B")
(qdl "fr" "\
$A3J4Z=PIkK;L}P%_9_E_H(B\
$A_b_nuR(B")
(qdl "fs" "\
$A0H:eE?V;_~`6`A`S(B")
(qdl "ft" "\
$A0I333T6V9r:p;#?TA|DX(B\
$AEXE\G:K1LxPVRXVd_3_4(B\
$A_8_<_=_@_A_X_Z_[_^_e(B\
$A_p`XuDuIuNuPumv<v>(B")
(qdl "fu" "\
$A2d3*3y588A:HE>JHL$QJ(B\
$AT[_I_S_w`.`3`K`P```a(B\
$Aul(B")
(qdl "fv" "\
$AS=WY_U`<`B`L`Q`Z`d`j(B\
$AuHuQu](B")
(qdl "fx" "\
$AKd`M(B")
(qdl "fy" "\
$A5E8B:0<y>W@2E6E^JIPj(B\
$APzQFR-T{V:_P`5`>`I`R(B\
$A`bj+ucuq(B")
(qdl "fz" "\
$A457H?HEgKTOET1U&_2_B(B\
$A_G_W_o_u`Yr&uYujur(B")
(qdl "ga" "\
$A0N0a0b1(2&4i6^:3<<>p(B\
$ADmE{IcJZKQM6T.^s^t(B")
(qdl "gb" "\
$A>rR!W>(B")
(qdl "gc" "\
$A474]4l5f9R;$DsL/MFNU(B\
$AW2^__*_+(B")
(qdl "gd" "\
$A0g2s577w9U>P?=?f@LA`(B\
$AB0HSJFLMP/Qo^R^V^d^y(B\
$Ap:(B")
(qdl "ge" "\
$A>>E2RVV@^^(B")
(qdl "gf" "\
$A4n5`>]?[@(ALDiJ0JDL'(B\
$ALBNfUPU\^W^\^e^r(B")
(qdl "gg" "\
$AHAUq^P^x_'_-(B")
(qdl "gh" "\
$A=]LaW=u=(B")
(qdl "gi" "\
$A0$7v;;>qC~P.Wa^f^q(B")
(qdl "gj" "\
$A0F2+3E3V4rE!JcUuV?^T(B\
$A^[^a^m_$(B")
(qdl "gk" "\
$A0Z(B")
(qdl "gl" "\
$A2Y2kD(HHH`L=^i^z^}(B")
(qdl "gm" "\
$A0h5'5t66:4;SDlEjEuF4(B\
$AG$K$R>Tq^U^c^p_&_((B")
(qdl "gn" "\
$A^Y(B")
(qdl "go" "\
$A26374'528c>\>h?YF2G\(B\
$AHvI(ISKSM1R4S5U*^g^k(B\
$A^w^~(B")
(qdl "gp" "\
$A8i^Q(B")
(qdl "gq" "\
$AMX(B")
(qdl "gr" "\
$A<7K)K:Q:U[Vt^S^X_%_)(B")
(qdl "gs" "\
$A040G1w90=SB'W+^|(B")
(qdl "gt" "\
$A0Q1'2t3-6s8'=A?9@?B#(B\
$ABUDSEWEzG@GKHELtMOMP(B\
$AMZMlQZTzV4^Z^u(B")
(qdl "gu" "\
$A2%2e3i4$4k=R?+@&@^Ch(B\
$AD4EDF~V8W%^b^n^v_!_#(B")
(qdl "gv" "\
$A2A<pACBSL"M&NN^]^`^{(B\
$A_,tj(B")
(qdl "gw" "\
$A@)(B")
(qdl "gx" "\
$AI&U]rX(B")
(qdl "gy" "\
$A364j5#5V<q?8?X@-@9Cr(B\
$AE$ICJCURU|W'^j^o(B")
(qdl "gz" "\
$A2p>oDbEEFKKpOFT\^h^l(B\
$A_"j^(B")
(qdl "ha" "\
$A2(6I::=~?#BKB~C;CZFC(B\
$AG_JgcbdQdSd\dqm/(B")
(qdl "hb" "\
$AIG(B")
(qdl "hc" "\
$A9`;&;4DyL2M]N+QDRycr(B\
$AdNdWd|e!e*(B")
(qdl "hd" "\
$A237P7Z95:h@TA$DgEfFc(B\
$AL@LTLiMeN[P:SYVMcfcm(B\
$Acncvd-d;dbdhe+(B")
(qdl "he" "\
$A5-LLcwdP(B")
(qdl "hf" "\
$A8"9A:F;n=`B:BeG"H\QX(B\
$AT!U4USVNd2d4dCdJdge#(B\
$Ae)(B")
(qdl "hg" "\
$A9v@KE(EIUGtD(B")
(qdl "hh" "\
$A5mc_d7dv(B")
(qdl "hi" "\
$A0D;AD.L-NVO*csd$dBde(B\
$Ae'(B")
(qdl "hj" "\
$A2b4>8!:SE"LNM!SNSed#(B\
$Ad/d1dLdUd_dadodtdxd}(B\
$Aj}(B")
(qdl "hk" "\
$A7(WLcyc|d+dA(B")
(qdl "hl" "\
$A3|5SA:A;A\BPD-FbG~H>(B\
$AInM?Thcecpd(d5dMdZd`(B")
(qdl "hm" "\
$A4c6}:9;k=rDWEHL6QsTs(B\
$AUDV-WRccczd.d0d](B")
(qdl "hn" "\
$AO+dFdfvHvL(B")
(qdl "ho" "\
$A313:5N64:-:~;,<$<3@l(B\
$AB)BzE=FVGeK]LJMDN<NP(B\
$AO{O}PZR:S?ckd"d8drdw(B\
$Adzd{e&e.e1(B")
(qdl "hp" "\
$A='@=Hs(B")
(qdl "hq" "\
$Ad9(B")
(qdl "hr" "\
$A<C=%MtRJT(UcV^W"d@dD(B\
$AdIdRd^dldye((B")
(qdl "hs" "\
$A1u5a:iFEHjQ]d:d?didj(B\
$Adme/f6(B")
(qdl "ht" "\
$A2W3A3X8H8[;l==AwBYCl(B\
$AD`E]ElI3IfIrIxO4QMc`(B\
$Acacdcgclcqcuc{d,d<d=(B\
$AdEdGdYdddue-(B")
(qdl "hu" "\
$A247::#:T>F?J@aAoEKG1(B\
$AGvHwLOOfSMWMchcicoct(B\
$Ad&d'd)d6d>dOdXdcdnds(B\
$Ae%(B")
(qdl "hv" "\
$AA0AJF/FYFaLmOQQzS>T4(B\
$Acxd3dHdKdkdp(B")
(qdl "hx" "\
$AWG(B")
(qdl "hy" "\
$A3N;c=&=->Z@DF{F|G3I,(B\
$AJ*NBP9Q4RgSfT|U?c}c~(B\
$Ad!d*dTdVd[e"e$e,vh(B")
(qdl "hz" "\
$A1t@#J~WUcjd%d~e0(B")
(qdl "ia" "\
$AC!IhL,ZAZEZNZU(B")
(qdl "ib" "\
$AR%Z(Z0(B")
(qdl "ic" "\
$A=w?|K-Z4(B")
(qdl "id" "\
$A0y2w4J7C:;;d?dL+Q/SU(B\
$AZ<ZLZPZYpFpS(B")
(qdl "ie" "\
$AL8Z6(B")
(qdl "if" "\
$A;0E5SoZ,Z/Z1Z5Z8Z>ZB(B\
$AZQZ^(B")
(qdl "ii" "\
$A4s6A>wH.NsZ%Z@ZSZ](B")
(qdl "ij" "\
$A6)6aFfJ+LVP;QHW;XZX^(B\
$AZ-Z:ZM(B")
(qdl "ik" "\
$AKOLW(B")
(qdl "il" "\
$A5}?ND1VoZ3Z[(B")
(qdl "im" "\
$A1<<F=2F@G#L7OjPmRkZ&(B\
$AZ;ZG^G(B")
(qdl "io" "\
$A5w7mGkKPN=RiV_Z)Z*Z+(B\
$AZ2Z=ZJZRZXZ\^Fl-(B")
(qdl "ip" "\
$A@>(B")
(qdl "ir" "\
$AQ5Z9Z?^E(B")
(qdl "is" "\
$AJ6ZC(B")
(qdl "it" "\
$A2o6o9n;Q<%<GB[C}F}K5(B\
$AQYQhUoZ7ZT^K(B")
(qdl "iu" "\
$A7\;eFWG+I]P3RhVnZFZK(B\
$AZOZZp-(B")
(qdl "iv" "\
$A5.ABCUDNG4ZI(B")
(qdl "iy" "\
$A3O=kHCJTN\Q6RjV$WgZ'(B\
$AZ.ZHZVZWZ_(B")
(qdl "iz" "\
$A7L8<8CHOK_U)ZDl%(B")
(qdl "ja" "\
$A2$4PAbB{HGHoP>Yg\A\O(B\
$A\X]C]D]J]_]g]l^%^)^2(B")
(qdl "jb" "\
$AWB(B")
(qdl "jc" "\
$A2g6-B+D9P,\6\]\c\s]@(B\
$A]H^3^7^=(B")
(qdl "jd" "\
$A545Y7<7R96=Z>O>U@M@U(B\
$A@sD;D<DhFOGZH5IVKULQ(B\
$AN-R)\5\:\@\B\L\_\`\w(B\
$A]#],]:]N]`]k]n]rpEpY(B\
$Aw6(B")
(qdl "je" "\
$AS+[4\a\b]6(B")
(qdl "jf" "\
$A9=>/?`BdCIFPGQHXHcHt(B\
$AI;L&S*\f\l\x]F]Q]m(B")
(qdl "jg" "\
$AKr\I]"]9]e]u(B")
(qdl "jh" "\
$A]{(B")
(qdl "ji" "\
$A;q<T?{D*S"\=\r]$]V]p(B\
$A]}w1(B")
(qdl "jj" "\
$A1!:I:J<;<v=/>#?A@rC)(B\
$AD!DuGfN5Q?SsXaXe\3\^(B\
$A\t]!]'])]*]3]W]c]j^6(B\
$A^?w5(B")
(qdl "jk" "\
$A\?\v]?(B")
(qdl "jl" "\
$A1=2K2h=6@3HYQ`TeU:Ua(B\
$AUt\T\o]1]a]h^!^9^;^A(B\
$AiQw7(B")
(qdl "jm" "\
$A2]8o;g>.C'F;F<HWQ&Ta(B\
$A\7\j\}]7]I]M]]^&^5^:(B")
(qdl "jn" "\
$AB\]v(B")
(qdl "jo" "\
$A0,1N1^:y>4CHE:FNFQGJ(B\
$AI"Rq\8\D\G\[\\\m\z]+(B\
$A]/]<]U]X]o]q]t]|^1^4(B\
$A^8w8w9(B")
(qdl "jp" "\
$A]~(B")
(qdl "jq" "\
$AD"\K]P(B")
(qdl "jr" "\
$A=f=yG[OtP=S(\q\u\y]>(B\
$A^-w3(B")
(qdl "js" "\
$A0092;FN.]4]=]B]d^.(B")
(qdl "jt" "\
$A0E0P0z1M2T76;(;DCjI/(B\
$AJ_N_OoQ%RUT7\4\9\;\<(B\
$A\>\C\E\H\R\W\i\k\{]5(B\
$A]8];]K]R]b]y]z^"^$^0(B\
$Ajmjnw4(B")
(qdl "ju" "\
$A0*2\7*8p=e>z@YCgD:G>(B\
$AJmNtPnRpV%Vx\U\Y\g\n(B\
$A].]E]L]T]Y]\]i]s^#^((B\
$A^+^,m3(B")
(qdl "jv" "\
$A2L9'A+D=EnK.KbLY\p\~(B\
$A]%]A]S^<^>^@m5tkw2(B")
(qdl "jw" "\
$AHx(B")
(qdl "jx" "\
$A<kS)(B")
(qdl "jy" "\
$A2X>%@6C"C#C/CoTLX%\F(B\
$A\N\Q\V\Z\d\e\|]&]-]0(B\
$A]2]O]Z][]f^*^/w0(B")
(qdl "jz" "\
$A4D7FH'\J\M\P\S\h](]G(B\
$A]^]w]x^'^Br)(B")
(qdl "ka" "\
$A1K3M5!5B<?<Y=v?!DzGV(B\
$AI5R[SFYLaam%m)qe(B")
(qdl "kb" "\
$A>sOIa7af(B")
(qdl "kc" "\
$A1$4_<Q@]HNJKV6Y5YPYW(B\
$A[Rv?vE(B")
(qdl "kd" "\
$A0x394+7B7]7pAfHTIKKE(B\
$AN0N1XlXpX~Y!Y(Y7a]a_(B\
$Ap<pTvA(B")
(qdl "ke" "\
$A;oQvSy["lFlR(B")
(qdl "kf" "\
$A169@BBJ[KWL(OqPESSY$(B\
$AY%Y<YDYFYRYY(B")
(qdl "kg" "\
$A4|:\R@XvY/YKYX(B")
(qdl "kh" "\
$A4YM=ac(B")
(qdl "ki" "\
$A7|:n:rO@RSX}Y6Y9Y?(B")
(qdl "kj" "\
$A2`4}595C7}8)8586:N:b(B\
$A=V@}@~JLM#M5ONPPQCQ\(B\
$ARPWPXdXjXsY1ai(B")
(qdl "kk" "\
$A3%?kXiXo[La\(B")
(qdl "kl" "\
$A1#</=9@|K[LeP\P]PlY*(B\
$AY@YUabwl(B")
(qdl "km" "\
$A0i;*<~BID2F'G*J2QpXu(B\
$AY&Y0Y:Y>YB[Ma`jpv@(B")
(qdl "kn" "\
$A3^(B")
(qdl "ko" "\
$A0A1c61;UA)E<EeF+GNHe(B\
$AJ9LHN"RGS6ULWvXqX|Y'(B\
$AY+Y.Y3Y8Y;YCYHYSadag(B\
$Aah(B")
(qdl "kp" "\
$ACG(B")
(qdl "kr" "\
$A<[GHIlMyVYW!Y-ae(B")
(qdl "ks" "\
$A9)>cXzYAYMYO(B")
(qdl "kt" "\
$A032N3p;/=D>k?~@PBWD\(B\
$AD_F>K{P^RARZSETJXkXn(B\
$AXrXtXwXxY"Y#Y)Y,YNYV(B\
$Ak'(B")
(qdl "ku" "\
$A0[2.3+4"5h;2=h@\I.Nj(B\
$AQ-YIYJYT[N(B")
(qdl "kv" "\
$A4v=!AEDcY4YQ(B")
(qdl "kw" "\
$AY2(B")
(qdl "ky" "\
$A4z5+5M6m7%<s=)>6HJH~(B\
$AN;NiUwV5WtXmXyYEa^(B")
(qdl "kz" "\
$A4{;uA^EGFMGcKFU.UlWw(B\
$AX{Y=YG(B")
(qdl "la" "\
$A0e3n=7@bCXH(KkKsNHOk(B\
$AV&h>i2m.o~p"p%(B")
(qdl "lb" "\
$Aoz(B")
(qdl "lc" "\
$A6E9pH6VIW.W5hSh_hdi"(B\
$AiHiL(B")
(qdl "ld" "\
$A0q99@cC^JAL]O!P`PcQn(B\
$Ah<h?h@hJhNhUhZh[h`hr(B\
$Ah{i=iKov(B")
(qdl "le" "\
$A0p3;7Y@FAxGoR,hyi1(B")
(qdl "lf" "\
$A4*8q9W:M<O<Z=U=[?]CJ(B\
$AN`OpPShihti'i/iEiZi\(B\
$Aoyp$(B")
(qdl "lg" "\
$A8yhGiAo|p&(B")
(qdl "lh" "\
$A3~iP(B")
(qdl "li" "\
$A7.D#P(QmVHh|i((B")
(qdl "lj" "\
$A2D3w4e<>?B@n@{D{EJJw(B\
$ARNS\hLhlhui$i?iWo{(B")
(qdl "lk" "\
$AK=KIhm(B")
(qdl "ll" "\
$A1>=\?C@fAVD>I-JuVji4(B\
$Ai;iTlaowoxo}ws(B")
(qdl "lm" "\
$A0^0t3S8K8Q?F@gQyUAhF(B\
$AhRhkhwh~i.i7i>i@iNiX(B")
(qdl "ln" "\
$A;`CNRFi!(B")
(qdl "lo" "\
$A1z3m557c8e9#9q<+?rC6(B\
$AEoIRITJ`M)M0MVO-P#U$(B\
$AUHhDhQhvi*i<iBiGiOiU(B\
$AiY(B")
(qdl "lp" "\
$Ai5(B")
(qdl "lq" "\
$AhO(B")
(qdl "lr" "\
$A3LGEK(MwNvVVVyhT(B")
(qdl "ls" "\
$A:a;}@7B%FeN/S#hWhqiD(B\
$Ap!(B")
(qdl "lt" "\
$A1r8E9w:<;1;zB4CkDBG9(B\
$AGAI<JaK0LRM:N&N:T}Um(B\
$Ah;h=hAhBhEhKhPhYh^ha(B\
$Ahchfhghshxi-ou(B")
(qdl "lu" "\
$A0X2[4;5>8L;|?,AqC7F\(B\
$AO`OchChVhjhzi9iFiIiV(B\
$Ai[p#p*(B")
(qdl "lv" "\
$A1-1j3F60={@hJrWXhMh](B\
$Ahhi#i%i&i,i3i]i_(B")
(qdl "ly" "\
$A2i3H8\;8<l<w@8L4P5U;(B\
$AV2Wbh\hbi)i+i6i8i:iJ(B")
(qdl "lz" "\
$A:KFSMGU%WuhHhXheiS(B")
(qdl "ma" "\
$A1;3a:d;]SQV'XE[Dj!lp(B\
$AqCqV(B")
(qdl "mc" "\
$A;yB"G5IgP[TZ[TiqiyqE(B")
(qdl "md" "\
$A0l0o2*2<3u4x:+:2<]?1(B\
$AA&GPP-TfW(W*imltp/p3(B\
$Ap4p>pIqS(B")
(qdl "me" "\
$A0n:*;RFnSt[#(B")
(qdl "mf" "\
$A9E<SH9O=SRT#ioiwi{j&(B\
$Alol{qJqKqUqW(B")
(qdl "mg" "\
$ADRI%O.T/U7l|qLqQtBtC(B")
(qdl "mi" "\
$A0@7r8$<PBtOWW`isj#ll(B\
$AlyqG(B")
(qdl "mj" "\
$A2)2E3D4L4f5;HlJBJYJd(B\
$AXCX][Aipiuqa(B")
(qdl "mk" "\
$Aln(B")
(qdl "ml" "\
$A<\@4BcD3GXM`TSh}iRlb(B\
$AlzqY(B")
(qdl "mm" "\
$A357n9<;\<-?cA{J.NSOi(B\
$APyUeX&i}j%ljlxqBqHqT(B")
(qdl "mn" "\
$AvI(B")
(qdl "mo" "\
$A3/7s8&8(9J:z;v=O>H@t(B\
$AA>DOFZSPUIU^i~k7qDqI(B\
$AqXq[q`(B")
(qdl "mp" "\
$AqP(B")
(qdl "mq" "\
$AmCqF(B")
(qdl "mr" "\
$A=NFmIqK9U6izqN(B")
(qdl "ms" "\
$A9(F^FdUfirlwqZ(B")
(qdl "mt" "\
$A9f9l9u>$>E?K@qAzBVE[(B\
$AF_G,I@JSMMMhPqR2SHT~(B\
$AW#X8^L^M^N^Oiniti|j$(B\
$Alklvq](B")
(qdl "mu" "\
$A4:7x8#8J:VLfPdT]VaXD(B\
$Aj"j8qRq^t)(B")
(qdl "mv" "\
$A6+<,<m=sB;GsJxKwL)MJ(B\
$AivlrqM(B")
(qdl "mx" "\
$A4@q_s<(B")
(qdl "my" "\
$A2C4#4w=X?xGaIuL;TTTU(B\
$ATXU{V1WfWsixj*j,lmls(B\
$AqOq\(B")
(qdl "mz" "\
$A295_6Y9S:X<U@5F[HmK,(B\
$ARDjZjcjelqlu(B")
(qdl "na" "\
$A196F6M79<1BxDwHzT9Ve(B\
$AbHnNnSn`ninko7oAoHoK(B\
$AoLo\olonvQvlvmvsv{w)(B")
(qdl "nb" "\
$Aw%(B")
(qdl "nc" "\
$A3{48@pW6b?bKnJo,o.o1(B\
$Ao[oqvCvTvYvd(B")
(qdl "nd" "\
$A0w2v3z5v6,8F93=u>{Ae(B\
$AJNKGL`NYNqN}O&PbT'b<(B\
$AbAnUn_nfnmnvo&o)o8oI(B\
$AoTomu|vPvyw#w&(B")
(qdl "ne" "\
$A>DC-GBVKW^nXntoDvjvz(B")
(qdl "nf" "\
$A8u8w9]>L>bBACzC{G&Os(B\
$AU2WjbBehn\n~o(o/o;oB(B\
$AoXvSvXvZw-(B")
(qdl "ng" "\
$AObR?Rxb8bNo6oM(B")
(qdl "nh" "\
$A6'o`(B")
(qdl "ni" "\
$AC>Lz[<b@bInQnroFoRo_(B\
$Aodu{(B")
(qdl "nj" "\
$A6$U!UyV}bDnHnIn]o#o2(B\
$Ao9o=oOoUvVv`vew.(B")
(qdl "nk" "\
$Angn{(B")
(qdl "nl" "\
$A2'DxH;I7LubEhnnyo!o*(B\
$Ao>opvUvfvx(B")
(qdl "nm" "\
$A1}6|7f=bA[G%OJP?RMUk(B\
$Ab6nWnlnon|o<obuzv#vR(B")
(qdl "nn" "\
$A6`=pB`b;nDvN(B")
(qdl "no" "\
$A8V8d9x=B=G=HDFFLM-Oz(B\
$AT?[;bCbLnRn^npnuo:oS(B\
$Ao^oaofv[v\v^vavbvkvt(B\
$Av}w(w+(B")
(qdl "np" "\
$AnMo4o5og(B")
(qdl "nq" "\
$AnT(B")
(qdl "nr" "\
$A<XVSnKnZn}o-oiv]v|(B")
(qdl "ns" "\
$ADYUrb9bMnOo'oNoY(B")
(qdl "nt" "\
$A1%1+3.6[709j<">5CbCc(B\
$AHDHqI+MCN#O3b=bFeinE(B\
$AnFnLnVnYnhnjnnnsnxo"(B\
$Ao$o%o3o?oCv!vOvivovr(B")
(qdl "nu" "\
$A182,4&4m>C@XA-AsB3C*(B\
$AG/OZSKU`b:jCmsnbndnw(B\
$Ao@oEoGoJoQoVoeohu}vp(B\
$Avqvvw"(B")
(qdl "nv" "\
$A<@<|>(A4AMnPnenzoZo](B\
$Aoov"vcvgw$w'(B")
(qdl "nw" "\
$A2y(B")
(qdl "nx" "\
$A4%J4P7ojs.s;v~(B")
(qdl "ny" "\
$A6v=$CLE%G.Scb>bGbJn[(B\
$Anancnqo+o0oWokvuw/(B")
(qdl "nz" "\
$A158:@!G7GUKxMbOGR{nG(B\
$AoPocvnvww,(B")
(qdl "oa" "\
$A777o7~899IE9HyP|R\V+(B\
$Ak{m+w;(B")
(qdl "ob" "\
$As?(B")
(qdl "oc" "\
$A5q6GJ$LEPHS7T_T`kMkb(B\
$Aksky(B")
(qdl "od" "\
$A0r3&4M7>7N9:?h@_E8Et(B\
$ALZO#P2PXTQVcVzj`k?kT(B\
$AkqpPthw=wG(B")
(qdl "oe" "\
$A=EAi['[-[1[:jf(B")
(qdl "of" "\
$A8lB8DdEbIDIEL%LyM,V\(B\
$AXOaYj]k`kzk|w<w?w@wD(B")
(qdl "og" "\
$AE'UKUMjb(B")
(qdl "oh" "\
$Akk(B")
(qdl "oi" "\
$A7tD$JjR=kDk^km(B")
(qdl "oj" "\
$A21222F8-8UI2I>TrVbXW(B\
$Ajgk>kckr(B")
(qdl "ok" "\
$AOXSDkEkZ(B")
(qdl "ol" "\
$AI1Nuk[k_k}wA(B")
(qdl "om" "\
$A8NEVF"SCkBk]l"wB(B")
(qdl "on" "\
$AYm(B")
(qdl "oo" "\
$A0\2a7g8,8T9G;_=:DTEs(B\
$AGxMxPWR8X3XRkGkHkXka(B\
$Akfknku(B")
(qdl "or" "\
$A3<;K=3?oFjO;VWkNkOw:(B")
(qdl "os" "\
$A07>_LsQ|S$ktkwwCwF(B")
(qdl "ot" "\
$A090{4`7J<!<{ErF%K&M.(B\
$AMQMsXP[Kj1j\k@kCkFkJ(B\
$AkSkWkdkgl)l+l,l.wE(B")
(qdl "ou" "\
$A1a6D@0TyV,W,kRkYkol!(B")
(qdl "ov" "\
$A1lBvI^KhMHO%OY[JjdkK(B\
$Akekjklkx(B")
(qdl "oy" "\
$A5$5(838X<z>^A3CsDeE_(B\
$AG;GRTBTtV|Xh_1efkUkV(B\
$Akpk~w>(B")
(qdl "oz" "\
$A147K:!DZE7HbNTRCRHXQ(B\
$AXSjakIkLkQk\khkil$(B")
(qdl "pa" "\
$A6P;:CFW:cSg&g1g7gAgO(B")
(qdl "pb" "\
$Ag)(B")
(qdl "pc" "\
$A2x9kN,g6(B")
(qdl "pd" "\
$A435^7D7W;CC`DVHRN3Pe(B\
$AQ$SWT<VUcGcUg(g+g0p8(B\
$ApB(B")
(qdl "pe" "\
$A0s(B")
(qdl "pf" "\
$A8s8x=a@+BgIII\NJT5`N(B\
$AcLg*g8g:(B")
(qdl "pg" "\
$AcOgYwO(B")
(qdl "ph" "\
$AU@g>(B")
(qdl "pi" "\
$APxcWgC(B")
(qdl "pj" "\
$A1U8?fzf{g#g,g2gH(B")
(qdl "pk" "\
$A;fcHg!g[(B")
(qdl "pl" "\
$ALPOPgRgX(B")
(qdl "pm" "\
$A0m2{4B<)NEOKRog-g<(B")
(qdl "po" "\
$A1A1`3q8Y<6=I=J>nDINF(B\
$AcIc[g'g.g/g4gBgIgJ(B")
(qdl "pp" "\
$ACEfy(B")
(qdl "pr" "\
$A>@HrIpU"(B")
(qdl "ps" "\
$ABFKgS'V/cVcYgGgM(B")
(qdl "pt" "\
$A4?<M>x@BBZHFI4I~M3Og(B\
$AQKTDcJcNcRf|f}g"g5g9(B\
$Ag?gQ(B")
(qdl "pu" "\
$A<dCeKuO8PwQVcMcQcTg$(B\
$Ag;g=gEgFgLgU(B")
(qdl "pv" "\
$A7l@;A7BLW[cKgDgNgPgT(B\
$AgWti(B")
(qdl "pw" "\
$Af~(B")
(qdl "px" "\
$ACv(B")
(qdl "py" "\
$A7':l<L<j>-E&H^K?O_V=(B\
$AWicEcFcPcXg%gKgVg\(B")
(qdl "pz" "\
$A:R<(IAW]g3g@gSgZ(B")
(qdl "qa" "\
$A<I?%F$FFSAT&fum*(B")
(qdl "qb" "\
$A4!(B")
(qdl "qc" "\
$A9hB?fmmT(B")
(qdl "qd" "\
$A0u3R8%9->">TBkBmDKFv(B\
$AHuJiSBV`W)[Bevfefpfs(B\
$Am8mBmImZpMpV(B")
(qdl "qe" "\
$A?$L<(B")
(qdl "qf" "\
$A>}BfT%UhVhffmQmUmf(B")
(qdl "qg" "\
$ADkUEfxm^(B")
(qdl "qh" "\
$AmVqb(B")
(qdl "qi" "\
$A9oBrMTmL(B")
(qdl "qj" "\
$A0-0~5<AKC,FoQ0ShTPWS(B\
$AXYf]f^fbfvm<mJmg(B")
(qdl "qk" "\
$A4E:kORm@(B")
(qdl "ql" "\
$A5z=8Haflm]m_ma(B")
(qdl "qm" "\
$A1.5/AWEiH:KiQPRletfd(B\
$Afhfijqm2m7m:(B")
(qdl "qn" "\
$ANyvJ(B")
(qdl "qo" "\
$A255o8D:/<0EpF-G}H7Hf(B\
$AJ;OuS2TRWNewfcfjm?mA(B\
$AmOm\mbp.qc(B")
(qdl "qq" "\
$A@ZJ/qf(B")
(qdl "qr" "\
$A=>IiK`Q1R}W$X>m1m=(B")
(qdl "qs" "\
$A5b;GYcfDfkfw(B")
(qdl "qt" "\
$A3Z3[5J7/<:?WArExI0Jh(B\
$AKHMUMkQbRQR|Za[Oeuf_(B\
$Afgfnm6m;mHmMmW(B")
(qdl "qu" "\
$A3P9B;!Nxfafrm>mPmXmY(B\
$An&(B")
(qdl "qv" "\
$A1C@yA%B5B<BbCVKofXft(B\
$Ame(B")
(qdl "qw" "\
$A?s(B")
(qdl "qx" "\
$A50G?I'rzs1(B")
(qdl "qy" "\
$A2j3s4h5G<n<o=.?DCOCq(B\
$AEvQiS/X)X=erf`j.mEmF(B\
$AmGmKmRm[mcmd(B")
(qdl "qz" "\
$A7Q:":'>1?3FDK6T$cZmD(B\
$AmS(B")
(qdl "ra" "\
$A1/1Q2#;<I*VR`za#h%h&(B\
$Ah(h.(B")
(qdl "rb" "\
$AQ~(B")
(qdl "rc" "\
$A41<a@ma!a"h*h-(B")
(qdl "rd" "\
$A273)=mAaBjJ&K'QlSkSq(B\
$AXg`xgbgctd(B")
(qdl "re" "\
$ASJZ}Z~gpg|w](B")
(qdl "rf" "\
$AL{WAghglgsh"h)h3h4wX(B\
$AwY(B")
(qdl "rg" "\
$A3$@EEaUJw_(B")
(qdl "rh" "\
$Ah/(B")
(qdl "ri" "\
$AQk^J`ya%gxh1(B")
(qdl "rj" "\
$AXV`|g`gfgqgyh$(B")
(qdl "rk" "\
$A7)(B")
(qdl "rl" "\
$AAUVih!h2w[(B")
(qdl "rm" "\
$A121OE*KAXBa$gmguh0(B")
(qdl "rn" "\
$A<x(B")
(qdl "ro" "\
$A139i:wA'C5H=HpI:IvJ7(B\
$AJUTdgdl3mimjmkwW(B")
(qdl "rq" "\
$A1LGY(B")
(qdl "rr" "\
$A0_0`4.6OIjMuVPX-[Ic](B\
$Age(B")
(qdl "rs" "\
$A5d<=VDgngwh+h,w^(B")
(qdl "rt" "\
$A111H1P5g7+9e;O@@ApEC(B\
$AE}MfOVUdgagggrgzg{g~(B\
$AwTwUwVwZw\(B")
(qdl "ru" "\
$A7y=T>IAYC1EAGzSI`~a&(B\
$Agjh#h'(B")
(qdl "rv" "\
$A;7=tGmGrWWgvg}(B")
(qdl "rx" "\
$Arc(B")
(qdl "ry" "\
$A0;<`>BJ@JzR5R7VQc^gi(B\
$Agkw`(B")
(qdl "rz" "\
$A7G9s>AKvOMRTV!`}goh6(B\
$Aj[(B")
(qdl "sa" "\
$A4H7^<KE+E-I)K!O1W\fB(B\
$AfHm&tH(B")
(qdl "sb" "\
$A2m(B")
(qdl "sc" "\
$A6JHQK\M^PU[Pf2(B")
(qdl "sd" "\
$A5\7A7V<tAgBhDLE,NLOh(B\
$AR/Yb`{eseyf"f#f3f7fL(B\
$AfOnCpApCpKpOte(B")
(qdl "se" "\
$A5&DHV#[7tJ(B")
(qdl "sf" "\
$A9C9H<^HgIFJ<J^fR(B")
(qdl "sg" "\
$ADoIoYff;(B")
(qdl "sh" "\
$Af<(B")
(qdl "si" "\
$A5l8~9X<5C@Q}SifFi`(B")
(qdl "sj" "\
$A:CG0LjWpf%f9fCf[f\(B")
(qdl "sk" "\
$A9+WHfV(B")
(qdl "sl" "\
$A8a<eC=CCf-iC(B")
(qdl "sm" "\
$A2"5%<iQre{f0f>f?fQ(B")
(qdl "sn" "\
$A5y8*(B")
(qdl "so" "\
$A5U888><'>jD[K7Pve}f)(B\
$Af/f4f:f@fE(B")
(qdl "sp" "\
$Af5(B")
(qdl "sq" "\
$Af!(B")
(qdl "sr" "\
$A8+=?ItQx(B")
(qdl "ss" "\
$A0K=*E.fI(B")
(qdl "st" "\
$A0V6R@QCdCnD]F?G<K}Mq(B\
$ANMR&eze|e~f,f1f8fGj5(B")
(qdl "su" "\
$A;i<fCDD7FUGuJWOSRvTx(B\
$AWEf(f=fMfWtI(B")
(qdl "sv" "\
$APufNfP(B")
(qdl "sx" "\
$AfJ(B")
(qdl "sy" "\
$A2n6p8G=c@<EhP_RfYef$(B\
$Af'f+fAfStFtGtK(B")
(qdl "sz" "\
$A0dF6G8KLO[RLS{f&(B")
(qdl "ta" "\
$A0.0c0f6N7"74:v;YJ\KR(B\
$AO"O$RsX;[Ek<l/m,p'pW(B\
$At2(B")
(qdl "tb" "\
$AT@a.t.(B")
(qdl "tc" "\
$A49D5HIIzI|VXt5t>(B")
(qdl "td" "\
$A0?1*1R2/4R5:5D5i6l7-(B\
$A9*94>K>dBQDqERIWI{NZ(B\
$ANoNpPYQ.TATHX?YhYiYj(B\
$AYk[>g]p1p6p7p;p@pGpN(B\
$At*t3ww(B")
(qdl "te" "\
$AC.GdGqS!Zy[![%[([,[.(B\
$A[/[6l`(B")
(qdl "tf" "\
$A4,8f:Q:sI`MLjtjujvp)(B\
$At?uuwy(B")
(qdl "tg" "\
$AtA(B")
(qdl "th" "\
$ARI(B")
(qdl "ti" "\
$A0B3t6?J'X2^Ik9uxw{(B")
(qdl "tj" "\
$A2r386g7u9N:u=K>tEYId(B\
$AImJ#JVLXVFXXXffZjwj~(B\
$Ak!t4(B")
(qdl "tk" "\
$A6*C4OO(B")
(qdl "tl" "\
$A2I326c6d8^:LQ,VlhIk:(B\
$At+uw(B")
(qdl "tm" "\
$A0]104G87E#EFG'I}JMK4(B\
$APFR^X:^Ct(w}(B")
(qdl "tn" "\
$A9;(B")
(qdl "to" "\
$A5PDAG{LIOrSmV[jzj{k8(B\
$Ak;p(t/t9(B")
(qdl "tq" "\
$AEM(B")
(qdl "tr" "\
$A1G4(9T;J=oF,GGKygth7(B\
$At1(B")
(qdl "ts" "\
$A1xMWS_jxwz(B")
(qdl "tt" "\
$A0(0|2J2U656f6y729m:=(B\
$A<8="?}BRC+C2CYF9FGHi(B\
$AL:MRMnOHTmU1UWX/X0X1(B\
$AX4X7Ylajg_jrjsk$k%k&(B\
$Ak*k+k=t0t:uywHwIwKwL(B\
$AwMwNw|(B")
(qdl "tu" "\
$A0W204Q6\7&7,9O;h>J?4(B\
$AAtE@LpN~R(STV<W&WTX6(B\
$Ag^mrp+p,t6t8t<t=uvwx(B")
(qdl "tv" "\
$A1|3K6{@VH*LrM'O5jytm(B")
(qdl "tw" "\
$Aut(B")
(qdl "ty" "\
$AELGpJOJsNRQ*X5nBsBt,(B\
$At-t;w~(B")
(qdl "tz" "\
$A3b??C3K3P@PkS1T^VJl&(B\
$Aq}r#t't7(B")
(qdl "ua" "\
$A6w?RB|E/K<O>S^Wn[GjS(B\
$Am|n$n2wq(B")
(qdl "ub" "\
$Awm(B")
(qdl "uc" "\
$A?Q@oA?D+D@FhJ{K/M+PG(B\
$AjWmum}n!n*n6n>vBvD(B")
(qdl "ud" "\
$AD8DPENJqM<N'Q<RW[C`q(B\
$A`rfUj@mmm{n?wn(B")
(qdl "ue" "\
$A0:3r<4jAjD(B")
(qdl "uf" "\
$A9L;XBTNnO9U0UQ`tjOjP(B\
$Amtn9n:wo(B")
(qdl "ug" "\
$A3?3WN7Q[`wjYt^(B")
(qdl "uh" "\
$A=^JGLbh8(B")
(qdl "ui" "\
$AD,RrS3j;jRn%n0wr(B")
(qdl "uj" "\
$A3k6"7#;{J1L^MER0Uv`n(B\
$Amln.(B")
(qdl "uk" "\
$A0UQ#j<(B")
(qdl "ul" "\
$A2G9{:Z@'CACPGFUUj=jV(B\
$Alcmyn<(B")
(qdl "um" "\
$A:5EOK2LoTNTgUV`vj:jJ(B\
$AjMmxn"n,(B")
(qdl "un" "\
$AB^b7mwwp(B")
(qdl "uo" "\
$A>&?tBwCwFTGgINN8VuX.(B\
$A`s`ujNjUkPmnn+n1n=(B")
(qdl "uq" "\
$AG-(B")
(qdl "ur" "\
$A6&9z<W=gMzNzj?n/(B")
(qdl "us" "\
$A`ojLjTn((B")
(qdl "ut" "\
$A0M6Z;N<H@%CaE~H&HkKD(B\
$ALwMmNcO~S0T0Yn`pj9jG(B\
$AjKk,mompmqmvm~n3n5n;(B\
$Awu(B")
(qdl "uu" "\
$A050<2}6C;^>'C0CiI9Jn(B\
$AJoJpM9U#jBn@wv(B")
(qdl "uv" "\
$A1)>0@[A@FXn)n7wt(B")
(qdl "uw" "\
$A?u(B")
(qdl "uy" "\
$A5)5ICKC_D?HUOTT;VCj-(B\
$AjEjIjQjXmzn'n8t_(B")
(qdl "uz" "\
$A9a?EGtP*T2WoWrr+(B")
(qdl "va" "\
$A75eReZ(B")
(qdl "vb" "\
$AR#(B")
(qdl "vc" "\
$A3>H8M"eSe_(B")
(qdl "vd" "\
$A1_5]<#ASBuM8N%Q2e](B")
(qdl "ve" "\
$AS-eQ(B")
(qdl "vf" "\
$AG2JJKlLvTlVpW7eHeJeK(B\
$AeUeaed(B")
(qdl "vg" "\
$AMK(B")
(qdl "vi" "\
$A4o5|<bKM(B")
(qdl "vj" "\
$A9}AISXSbWqeB(B")
(qdl "vk" "\
$ATK(B")
(qdl "vl" "\
$ACTJvM>UZ(B")
(qdl "vm" "\
$A1E1\7j=(=xA,G(eCeLe`(B\
$Aeb(B")
(qdl "vn" "\
$AB_(B")
(qdl "vo" "\
$A1iM(Q{SvUbeDeMeNePeW(B\
$Ae[e\(B")
(qdl "vr" "\
$A3Q9d=|JEeX(B")
(qdl "vs" "\
$AeT(B")
(qdl "vt" "\
$ADfFyIYLSQ!R]T6eFec(B")
(qdl "vu" "\
$A1F3Y5@5O6]6tFHJ!TbeY(B\
$Ae^(B")
(qdl "vv" "\
$A4~;9KYP!Q7[HeAeGeOeV(B\
$AfY(B")
(qdl "vy" "\
$A6:Q8QSeIee(B")
(qdl "vz" "\
$AREeE(B")
(qdl "wa" "\
$A6H7O8PF#J]OCR_T8b!bQ(B\
$Apkp}q!q#q+q/q0(B")
(qdl "wb" "\
$A0)p^(B")
(qdl "wc" "\
$A@e@jB.L1PIQ9QcW/Wyay(B\
$Ab5b[b\pnpyq*q3(B")
(qdl "wd" "\
$A97@w@x@zJ(L[O/QqS%ao(B\
$AatpQp\p]p_plpv(B")
(qdl "we" "\
$A5R@*@HL5Zw(B")
(qdl "wf" "\
$A3U4=4q5jF&LFa~b&phpm(B\
$Apq(B")
(qdl "wg" "\
$A3=:[:]@GT3b+wP(B")
(qdl "wh" "\
$Au>(B")
(qdl "wi" "\
$A:o;><2GlOAQaS|pzq"(B")
(qdl "wj" "\
$A2^3x8.:qA!AFD&D|HhL|(B\
$APrUxVLXcawa{b"p[pbpx(B\
$Awj(B")
(qdl "wk" "\
$Aavpgwa(B")
(qdl "wl" "\
$A42BiCSJ|a|b#b.b4bSiM(B\
$Awewg(B")
(qdl "wm" "\
$A4a?bQ"QwUNXGamb'b/b3(B\
$AbTbXb]pwq1wk(B")
(qdl "wn" "\
$Ab$wi(B")
(qdl "wo" "\
$A2!2B7h8/;+=FE1H3M4S8(B\
$AS9azb)b,bZb_q$(B")
(qdl "wp" "\
$Apo(B")
(qdl "wq" "\
$AD%(B")
(qdl "wr" "\
$A1T=j?qH,XIXKarpfq-wf(B")
(qdl "ws" "\
$Aptp|q%q(wh(B")
(qdl "wt" "\
$A0L1S1q4/4C6r788m>GAN(B\
$AB9D'ESSLUnalaqasb%b0(B\
$AbObPbRbVp`peppq,wJwb(B\
$Awd(B")
(qdl "wu" "\
$A2~:|>NA.ATAvC(CmOaVm(B\
$AXHXLb-bUpaps(B")
(qdl "wv" "\
$A?5M%T-axb(b2b^q&q'q)(B\
$Awc(B")
(qdl "ww" "\
$A3'akan(B")
(qdl "wx" "\
$A6@p~rW(B")
(qdl "wy" "\
$A3I5W6;>7>Q>RCMF]J"Jy(B\
$AM~NANlOLPgS&V"apaua}(B\
$Ab*j0pcpip{(B")
(qdl "wz" "\
$A178}9KCRL!XFXJXMb1bW(B\
$AbYpdpjprpuq.q2(B")
(qdl "xa" "\
$Arsrts#s,s3s6s=t$(B")
(qdl "xc" "\
$AM\rIrNrqs+sO(B")
(qdl "xd" "\
$A5Z=nBlI8rCrHrJrOrfs&(B\
$AsFsJsKsQsSs^(B")
(qdl "xe" "\
$ArksL(B")
(qdl "xf" "\
$A4p8r9\V)W-rArRs%s-s5(B\
$As7s8sTsUsWsXsh(B")
(qdl "xi" "\
$A4X?jP&r6rLrZs!ss(B")
(qdl "xj" "\
$A2>3o5H7{<}QArBr[r]ru(B\
$ArvsDs](B")
(qdl "xk" "\
$A4[r<(B")
(qdl "xl" "\
$A1?5{Vkr\rdrnr{sv(B")
(qdl "xm" "\
$A0v2u7d8MKcr=rUrVrgrr(B\
$Ar~s/s0sGsYsjslt!(B")
(qdl "xn" "\
$ABa(B")
(qdl "xo" "\
$A8]9?:{?p@iF*HdM2NCNO(B\
$AROS<r8rErTrYr_rhrory(B\
$Ar}s$sEsMs`sbscsdsfst(B\
$Asu(B")
(qdl "xp" "\
$A<r(B")
(qdl "xr" "\
$A;HV{r;r>rSras\sksosr(B\
$As}(B")
(qdl "xs" "\
$A;I;~B(Cxr`rws((B")
(qdl "xt" "\
$A0J1JA}I_KqMIS,V~r0r1(B\
$Ar4r7r9r:rMr^rirjs2sH(B\
$AsZsasnswsxs{s|(B")
(qdl "xu" "\
$A2-5Q;W<.@/OdP+r@rDrP(B\
$Arermrprxs)s4s9sIsgsi(B\
$At"t&(B")
(qdl "xv" "\
$A2_B]EqQQWkrQs"s*sVs[(B")
(qdl "xx" "\
$A3f(B")
(qdl "xy" "\
$A6j7$9F:g<c@:G)Gyr5rG(B\
$Arbrls:sCsNsRs_smspsz(B\
$As~t#(B")
(qdl "xz" "\
$AO:rFsPsesqsyt%(B")
(qdl "ya" "\
$A4O6q82:);s?VDtH!KaO<(B\
$AODibl}m$ty(B")
(qdl "yc" "\
$A;tPMPQQEVA[Qv/v2(B")
(qdl "yd" "\
$A6/7S9&?wAcF8GIMrNmQ3(B\
$AQ;QIWCX$[=idp0p9p?pD(B\
$Aqvtgv'v(v,(B")
(qdl "ye" "\
$A9"ADCpP0POR.ZuZvZ{Z|(B\
$A[$[*[2[3[8[9(B")
(qdl "yf" "\
$A4y7q>[?a@RB6Naqxt~u$(B\
$Au,u1u6(B")
(qdl "yg" "\
$AAQDpUpwQ(B")
(qdl "yh" "\
$Au.u;u<(B")
(qdl "yi" "\
$AA*L*LlQju3(B")
(qdl "yj" "\
$A4<4g5=6!818g;.=M?/?I(B\
$AAPDMPLQ@SZX!X+Xbihqt(B\
$Aqwtzt|u*(B")
(qdl "yk" "\
$ATFTM(B")
(qdl "yl" "\
$A@uARAXJbKVKZUiu)u4u8(B")
(qdl "ym" "\
$A6z8I<_?*EyF=Wmiiq{t{(B")
(qdl "yn" "\
$A4uvF(B")
(qdl "yo" "\
$A0T1B1{6x8R8|9%@vA=F.(B\
$AM*OvPhPoQ)SjTYU~VBX*(B\
$Aquu'u-u/v)v1(B")
(qdl "yr" "\
$A3j;-H)X"XAu(v+(B")
(qdl "ys" "\
$AH"K#R*V0ikv.(B")
(qdl "yt" "\
$A1"5"9.;jD^EdGLK@M_Mc(B\
$AN^PNR"RRT*UgX#iejjr3(B\
$At}u"u#u+u2v=(B")
(qdl "yu" "\
$A0Y4W:(=z@WC8C9CfF0K*(B\
$ANwSOu%v0(B")
(qdl "yv" "\
$A2;9/CQF1J>cCv*(B")
(qdl "yw" "\
$AQOu&(B")
(qdl "yx" "\
$A2OHZr2rK(B")
(qdl "yy" "\
$A2P3\696~7!7I8j9$;%;r(B\
$A=dHVH}J-J=MaNWNdNeQG(B\
$AR;S[U5U}V3X'X(X,XN_.(B\
$A_/_0icigijilj'j)j/tx(B\
$Au0u5u7(B")
(qdl "yz" "\
$A6%8h91<VMgOBOnR3ifj>(B\
$Aqyq|r(r,u!v-(B")
(qdl "za" "\
$A84BGDnFgJeKKPpSzTuj7(B\
$Al~(B")
(qdl "zb" "\
$As>(B")
(qdl "zc" "\
$A4F9^B,Wx[Vosotv;(B")
(qdl "zd" "\
$A8kAdAnB2p5tatb(B")
(qdl "ze" "\
$AAZC|P6[&(B")
(qdl "zf" "\
$A:,:OIaU<V*v$v6v9(B")
(qdl "zg" "\
$A2MJ3t@v8(B")
(qdl "zh" "\
$Av:(B")
(qdl "zi" "\
$AH1J8S](B")
(qdl "zj" "\
$A449t=#DCJfSaVqsA(B")
(qdl "zk" "\
$A;a(B")
(qdl "zl" "\
$A2q5cS`W@Yai0tS(B")
(qdl "zm" "\
$ADjI!KJNgNhP1W?r-(B")
(qdl "zo" "\
$A3]<9>X?OA2CtE0G]H#Y_(B\
$Ak6r/u~(B")
(qdl "zq" "\
$A=qmN(B")
(qdl "zr" "\
$A8v=C=iH+or(B")
(qdl "zs" "\
$A0+(B")
(qdl "zt" "\
$A1k2=2V4K;"BXFrX9X@j2(B\
$Ajhjljok(mhr.v3v5v7(B")
(qdl "zu" "\
$A6=B1C?VGXUn#n4(B")
(qdl "zv" "\
$A71WOY[Y\Y`(B")
(qdl "zy" "\
$A014T5*6L7U7z8W:$:PBH(B\
$ADJFsFxGbGhIOP)PiQuU=(B\
$AV9YZY]Y^j(k-k.k/k0k1(B\
$Ak2k3k4k5u:v4w*(B")
(qdl "zz" "\
$A4S?(AlB-F5GjHKL0U'Uj(B\
$AVZj_l#l(r"r%(B")
