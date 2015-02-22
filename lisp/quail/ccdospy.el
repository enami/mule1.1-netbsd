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
;;	Original table is from cxterm/dict/tit/CCDOSPY.tit.
;; 92.6.24  modified for Mule Ver.0.9.5 by K.Handa <handa@etl.go.jp>
;;	To cope with new version of quail.

;; # HANZI input table for cxterm
;; # To be used by cxterm, convert me to .cit format first
;; # .cit version 1
;; ENCODE:	GB
;; MULTICHOICE:	YES
;; PROMPT:	$A::WVJdHk!KKuP4F4Rt!K(B 
;; #
;; COMMENT $AKuP4F4Rt7=08(B ($AT4SZ(B CCDOS)
;; COMMENT
;; COMMENT $AP!P4S"NDWVD84z1m!8F4Rt!97{:E#,5+HgOB!8F4Rt!9TrSCR;<|1mJ>(B:
;; COMMENT   $AF4Rt(B:  zh  en  eng ang ch  an  ao  ai  ong sh  ing "u(yu)
;; COMMENT     $A<|(B:   a   f   g   h   i   j   k   l   s   u   y   v
;; COMMENT $A@}!C(B  $A::WV!C(B $A!>0!!?!>9{!?!>VP!?!>ND!?!>9b!?!>Sq!?!>H+!?(B
;; COMMENT       $AF4Rt!C(B   a    guo   zhong  wen  guang  yu   quan
;; COMMENT       $A<|Hk!C(B   a1   guo4   as1   wf4  guh1  yu..6 qvj6
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
;; # the following line must not be removed
;; BEGINDICTIONARY
;; #

(require 'quail)

(quail-define-package
 "ccdospy" "$AKuP4F4Rt(B"
 '((?a . "zh") (?f . "en") (?g ."eng") (?h . "ang") (?i . "ch") (?j . "an")
   (?k . "ao") (?l . "ai") (?s . "ong") (?u . "sh") (?y . "ing") (?v . "yu"))
 "$AKuP4F4Rt7=08(B ($AT4SZ(B CCDOS)

$AP!P4S"NDWVD84z1m!8F4Rt!97{:E#,5+HgOB!8F4Rt!9TrSCR;<|1mJ>(B:
   $AF4Rt(B:  zh  en  eng ang ch  an  ao  ai  ong sh  ing \"u(yu)
     $A<|(B:   a   f   g   h   i   j   k   l   s   u   y   v
 $A@}!C(B  $A::WV!C(B $A!>0!!?!>9{!?!>VP!?!>ND!?!>9b!?!>Sq!?!>H+!?(B
       $AF4Rt!C(B   a    guo   zhong  wen  guang  yu   quan
       $A<|Hk!C(B   a    guo03 as     wf03 guh    yu25 qvj05"
 *quail-mode-rich-map* nil nil nil nil t)

(defmacro qdl (key str)
  (list 'quail-defrule key (list 'string-to-char-list str)))

(qdl "a" "\
$A0!0"_9`Dkgo9(B")
(qdl "aa" "\
$ATzT{T|T}T~U!U"U#U$U%(B\
$AU&U'U(U)^j_8_e_ni+mD(B\
$ApdrFw~(B")
(qdl "ae" "\
$AUZU[U\U]U^U_U`UaUbUc(B\
$AZX_!hOi|m]pQq^rXtw(B")
(qdl "af" "\
$AUdUeUfUgUhUiUjUkUlUm(B\
$AUnUoUpUqUrUs[Z]hd%gG(B\
$Ahei;itjbkSk^lun3p!p2(B\
$Asp(B")
(qdl "ag" "\
$AUtUuUvUwUxUyUzU{U|U}(B\
$AU~V!V"V#V$Z:a?agn[o#(B\
$As](B")
(qdl "ah" "\
$AUAUBUCUDUEUFUGUHUIUJ(B\
$AUKULUMUNUOXk[5a$aVb/(B\
$AfQh0s/(B")
(qdl "ai" "\
$AV%V&V'V(V)V*V+V,V-V.(B\
$AV/V0V1V2V3V4V5V6V7V8(B\
$AV9V:V;V<V=V>V?V@VAVB(B\
$AVCVDVEVFVGVHVIVJVKVL(B\
$AVMVNVOX4Zl[$[z\F^}`y(B\
$AbeeiekfohNhWhYhdiriy(B\
$Aj^kUkylmlsmiotp:pkrN(B\
$Atju%uEuYu\utv#(B")
(qdl "aj" "\
$AU0U1U2U3U4U5U6U7U8U9(B\
$AU:U;U<U=U>U?U@Z^^xl9(B")
(qdl "ak" "\
$AUPUQURUSUTUUUVUWUXUY(B\
$AZ/h~nHsI(B")
(qdl "al" "\
$AU*U+U,U-U.U/mNq)(B")
(qdl "aou" "\
$AV[V\V]V^V_V`VaVbVcVd(B\
$AVeVfVgVh]'_zf(f{g'kP(B\
$AmXt&t|(B")
(qdl "as" "\
$AVPVQVRVSVTVUVVVWVXVY(B\
$AVZZ#oqs.t1u`(B")
(qdl "au" "\
$AViVjVkVlVmVnVoVpVqVr(B\
$AVsVtVuVvVwVxVyVzV{V|(B\
$AV}V~W!W"W#W$XyY*Y>[%(B\
$A\od(d>dshLiFiMlDnypf(B\
$ApqsCsgt6tcunwf(B")
(qdl "aua" "\
$AW%W&(B")
(qdl "auh" "\
$AW.W/W0W1W2W3W4W5YW(B")
(qdl "aui" "\
$AW6W7W8W9W:c7fmgD(B")
(qdl "auj" "\
$AW(W)W*W+W,W-_ybMr'(B")
(qdl "aul" "\
$AW'(B")
(qdl "aun" "\
$AW;W<kFq8(B")
(qdl "auo" "\
$AW=W>W?W@WAWBWCWDWEWF(B\
$AWGZB_*d7dCe*lLlzm=om(B")
(qdl "aux" "\
$A^J(B")
(qdl "ba" "\
$A0E0F0G0H0I0J0K0L0M0N(B\
$A0O0P0Q0R0S0T0U0V\X]C(B\
$Aa1e1nYtNvQwI(B")
(qdl "bei" "\
$A1-1.1/10111213141516(B\
$A1718191:1;XCZiZ}]mc#(B\
$AmUpGqXvMw9(B")
(qdl "bey" "\
$A_BbX(B")
(qdl "bf" "\
$A1<1=1>1?[N[PjZo<(B")
(qdl "bg" "\
$A1@1A1B1C1D1E`Tj4(B")
(qdl "bh" "\
$A0n0o0p0q0r0s0t0u0v0w(B\
$A0x0y]rd:(B")
(qdl "bi" "\
$A1F1G1H1I1J1K1L1M1N1O(B\
$A1P1Q1R1S1T1U1V1W1X1Y(B\
$A1Z1[1\1]X0YB\j])]I^5(B\
$A_A_Yayc9dde(eve~f>fT(B\
$Ah5n/niouqTsYskswt0tE(B\
$AuOwB(B")
(qdl "bie" "\
$A1n1o1p1qu?(B")
(qdl "bij" "\
$A1_1`1a1b1c1d1e1f1g1h(B\
$A1iXR[M\PbmcjgBlTm>m\(B\
$Aq9q[rysVv}(B")
(qdl "bik" "\
$A1j1k1l1mf;ftl)l-l.oZ(B\
$Aopq&qQw'wT(B")
(qdl "bin" "\
$A1r1s1t1u1v1wYOaYgMgc(B\
$AiDikkwoYwFw^(B")
(qdl "biz" "\
$A1^(B")
(qdl "bj" "\
$A0_0`0a0b0c0d0e0f0g0h(B\
$A0i0j0k0l0mZf[`nSq#q-(B\
$At2(B")
(qdl "bk" "\
$A0z0{0|0}0~1!1"1#1$1%(B\
$A1&1'1(1)1*1+1,]af_lR(B\
$Ap1qYu@v5(B")
(qdl "bl" "\
$A0W0X0Y0Z0[0\0]0^^cj~(B")
(qdl "bo" "\
$A2#2$2%2&2'2(2)2*2+2,(B\
$A2-2.2/202122232425Yq(B\
$A`#bDi^k"mgn`p>t$uKu[(B")
(qdl "bu" "\
$A262728292:2;2<2=2>2?(B\
$A2@_2eMj3jNnPn_u3(B")
(qdl "by" "\
$A1x1y1z1{1|1}1~2!2"Yw(B\
$AZ{^p(B")
(qdl "ca" "\
$A2A`jme(B")
(qdl "ce" "\
$A2^2_2`2a2bb|(B")
(qdl "cf" "\
$Aa/d9(B")
(qdl "cg" "\
$A2c2d`a(B")
(qdl "ch" "\
$A2T2U2V2W2XXw(B")
(qdl "ci" "\
$A4C4D4E4F4G4H4I4J4K4L(B\
$A4M4N\kltpKtY(B")
(qdl "cj" "\
$A2M2N2O2P2Q2R2Senfnh2(B\
$AtSwu(B")
(qdl "ck" "\
$A2Y2Z2[2\2]`Pdns)t=(B")
(qdl "cl" "\
$A2B2C2D2E2F2G2H2I2J2K(B\
$A2L(B")
(qdl "co" "\
$Aj#(B")
(qdl "cou" "\
$A4Ui(km(B")
(qdl "cs" "\
$A4O4P4Q4R4S4T\JdHfug}(B\
$Ah.hH(B")
(qdl "cu" "\
$A4V4W4X4Y]}a^b'icu!u>(B\
$Aum(B")
(qdl "cui" "\
$A4]4^4_4`4a4b4c4d]M_}(B\
$Ac2h-iAk%v?(B")
(qdl "cuj" "\
$A4Z4[4\Y`_%l`oi(B")
(qdl "cun" "\
$A4e4f4gbbqe(B")
(qdl "cuo" "\
$A4h4i4j4k4l4mXHaOkbo1(B\
$Aospnu:uc(B")
(qdl "da" "\
$A4n4o4p4q4r4s^G_U`*br(B\
$Af'm3qWsNw0w2(B")
(qdl "de" "\
$A5B5C5Do=(B")
(qdl "dg" "\
$A5E5F5G5H5I5J5KLZ`baX(B\
$Aj-mcokt#(B")
(qdl "dh" "\
$A5152535455ZT[J]Pe4m8(B\
$AnuqI(B")
(qdl "di" "\
$A5L5M5N5O5P5Q5R5S5T5U(B\
$A5V5W5X5Y5Z5[5\5]5^X5(B\
$AYaZ.ZP[![f]6`Vf7g0h\(B\
$Ai&jkmFmZm{oatFw>(B")
(qdl "dia" "\
$A`G(B")
(qdl "die" "\
$A5x5y5z5{5|5}5~[l\&^i(B\
$A`)k:p,qsu^vx(B")
(qdl "dij" "\
$A5_5`5a5b5c5d5e5f5g5h(B\
$A5i5j5k5l5m5nX<Zg[ca[(B\
$Aghndq0q2t!uZ(B")
(qdl "dik" "\
$A5o5p5q5r5s5t5u5v5wnv(B\
$Ao"uuvt(B")
(qdl "diu" "\
$A6*n{(B")
(qdl "dj" "\
$A5"5#5$5%5&5'5(5)5*5+(B\
$A5,5-5.5/50YY]L`"iijf(B\
$Amqpcpwqusl(B")
(qdl "dk" "\
$A565758595:5;5<5=5>5?(B\
$A5@5A_6bak.tn(B")
(qdl "dl" "\
$A4t4u4v4w4x4y4z4{4|4}(B\
$A4~5!\$_0_>a7eJffg*gi(B\
$Awl(B")
(qdl "dou" "\
$A65666768696:6;]zq<r=(B\
$As{(B")
(qdl "ds" "\
$A6+6,6-6.6/6061626364(B\
$A[m_Ka4a<k1kKkXmOp4(B")
(qdl "du" "\
$A6<6=6>6?6@6A6B6C6D6E(B\
$A6F6G6H6I6J\6`=dBh|k9(B\
$As<sFwGwr(B")
(qdl "dui" "\
$A6Q6R6S6Tm!m-mTof(B")
(qdl "duj" "\
$A6K6L6M6N6O6Pi2lQs}(B")
(qdl "dun" "\
$A6U6V6W6X6Y6Z6[6\6]cg(B\
$Al@m;mbmou;(B")
(qdl "duo" "\
$A6^6_6`6a6b6c6d6e6f6g(B\
$A6h6i_M_acug6h^nlqVub(B")
(qdl "dy" "\
$A6!6"6#6$6%6&6'6(6)Xj(B\
$A`$g`kkmVn.p[qttz(B")
(qdl "e" "\
$A6j6k6l6m6n6o6p6q6r6s(B\
$A6t6u6vX,ZL[Q\C]-]`_@(B\
$Ac5emf9inkqo0oIpJr&vy(B")
(qdl "ei" "\
$AZ@(B")
(qdl "er" "\
$A6x6y6z6{6|6}6~7!Y&eG(B\
$Agmnop9v\(B")
(qdl "f" "\
$A6w]l^t(B")
(qdl "fa" "\
$A7"7#7$7%7&7'7(7)[Rm@(B")
(qdl "fei" "\
$A7F7G7H7I7J7K7L7M7N7O(B\
$A7P7Q\@atc-dGezg3i<kh(B\
$Al3lioPprrcsutdv-vn(B")
(qdl "ff" "\
$A7R7S7T7U7V7W7X7Y7Z7[(B\
$A7\7]7^7_7`YGe/h{vwww(B")
(qdl "fg" "\
$A7a7b7c7d7e7f7g7h7i7j(B\
$A7k7l7m7n7oY:[:]W_tcc(B\
$Am?(B")
(qdl "fh" "\
$A7;7<7=7>7?7@7A7B7C7D(B\
$A7EZzhJnUt3vP(B")
(qdl "fj" "\
$A7*7+7,7-7.7/70717273(B\
$A7475767778797:^,^@a&(B\
$Ahsl\n2ul(B")
(qdl "fo" "\
$A7p(B")
(qdl "fou" "\
$A7qs>(B")
(qdl "fu" "\
$A7r7s7t7u7v7w7x7y7z7{(B\
$A7|7}7~8!8"8#8$8%8&8'(B\
$A8(8)8*8+8,8-8.8/8081(B\
$A82838485868788898:8;(B\
$A8<8=8>8?8@YkYl[.\=\^(B\
$A\r]3]J^T_;a%bvdfeufZ(B\
$Afbg&g(hujglpmImjmkn7(B\
$Ao{p%r6r]rprstouCuFvV(B\
$Av{(B")
(qdl "ga" "\
$A8A8B^NfXfYj8nE(B")
(qdl "ge" "\
$A8g8h8i8j8k8l8m8n8o8p(B\
$A8q8r8s8t8u8v8wX*Xn[A(B\
$A[Y\*`Cf|k!kumQoSqKr"(B\
$Ar4t4w@(B")
(qdl "gei" "\
$A8x(B")
(qdl "gf" "\
$A8y8zX(]"_gt^(B")
(qdl "gg" "\
$A8{8|8}8~9!9"9#_lbYg.(B\
$Ava(B")
(qdl "gh" "\
$A8T8U8V8W8X8Y8Z8[8\m0(B\
$An8s`(B")
(qdl "gj" "\
$A8I8J8K8L8M8N8O8P8Q8R(B\
$A8S[a\U^O_&codFdwg$iO(B\
$Aj:m7pat{(B")
(qdl "gk" "\
$A8]8^8_8`8a8b8c8d8e8f(B\
$AX:Z>[,^;gIi@iBj=o/(B")
(qdl "gl" "\
$A8C8D8E8F8G8HX$Zk[rj.(B\
$Aj`(B")
(qdl "gou" "\
$A939495969798999:9;X~(B\
$AZ8a8e\fEgCh[jml0sQst(B\
$Aw8(B")
(qdl "gs" "\
$A9$9%9&9'9(9)9*9+9,9-(B\
$A9.9/909192gnkEr<v!(B")
(qdl "gu" "\
$A9<9=9>9?9@9A9B9C9D9E(B\
$A9F9G9H9I9J9K9L9MXEYr(B\
$AZ,]T_IaDcihtiojtjvk{(B\
$Al1n-n9n\o@p3p@psrAt~(B\
$Au}vqw=(B")
(qdl "gua" "\
$A9N9O9P9Q9R9SXTZ4hikR(B\
$Ap;(B")
(qdl "guh" "\
$A9b9c9d_[anhfkW(B")
(qdl "gui" "\
$A9e9f9g9h9i9j9k9l9m9n(B\
$A9o9p9q9r9s9tXPXQX[bQ(B\
$Ae3f#hmjAjPp's~vYw,(B")
(qdl "guj" "\
$A9W9X9Y9Z9[9\9]9^9_9`(B\
$A9aYD^hdJnBpYqfw$(B")
(qdl "gul" "\
$A9T9U9V(B")
(qdl "gun" "\
$A9u9v9wg5m^vg(B")
(qdl "guo" "\
$A9x9y9z9{9|9}Ye[v^b_C(B\
$A`~aFb#i$k=qxrdre(B")
(qdl "h" "\
$A090:0;(B")
(qdl "ha" "\
$A9~n~(B")
(qdl "he" "\
$A:G:H:I:J:K:L:M:N:O:P(B\
$A:Q:R:S:T:U:V:W:XZ-[@(B\
$A[V`@cXjBnArBtg(B")
(qdl "hei" "\
$A:Y:Z(B")
(qdl "hf" "\
$A:[:\:]:^(B")
(qdl "hg" "\
$A:_:`:a:b:c^?gqhl(B")
(qdl "hh" "\
$A:;:<:=clg,q~(B")
(qdl "hj" "\
$A:(:):*:+:,:-:.:/:0:1(B\
$A:2:3:4:5:6:7:8:9::Zu(B\
$A]U^~e+jOlJq|r%r@w}(B")
(qdl "hk" "\
$A:>:?:@:A:B:C:D:E:F]o(B\
$A^6`F`ce)e0j;p)r+r:(B")
(qdl "hl" "\
$A:!:":#:$:%:&:'`Kk\u0(B")
(qdl "hou" "\
$A:m:n:o:p:q:r:s\)`kaa(B\
$Ab7eKnXpzs6sstWvWw?(B")
(qdl "hs" "\
$A:d:e:f:g:h:i:j:k:lYd(B\
$AYjZ']&^.^0cHc|(B")
(qdl "hu" "\
$A:t:u:v:w:x:y:z:{:|:}(B\
$A:~;!;";#;$;%;&;'Y|^=(B\
$A_|`qa2b)boc1d0dogziN(B\
$Aiul2lClNlflhloolp-pI(B\
$ApWsKu-uz(B")
(qdl "hua" "\
$A;(;);*;+;,;-;.;/;0fh(B\
$Ahkm9n|(B")
(qdl "huh" "\
$A;D;E;F;G;H;I;J;K;L;M(B\
$A;N;O;P;QZraedRdjeXh+(B\
$AkAq%s(srv|(B")
(qdl "hui" "\
$A;R;S;T;U;V;W;X;Y;Z;[(B\
$A;\;];^;_;`;a;b;c;d;e(B\
$A;fZ6\n\v^%_T_\`9cDd+(B\
$Aegg@gujMm#r3s3wb(B")
(qdl "huj" "\
$A;6;7;8;9;:;;;<;=;>;?(B\
$A;@;A;B;C[([<]H_'`wb5(B\
$Ad!d=dqe>eUgYoLviw_(B")
(qdl "hul" "\
$A;1;2;3;4;5uW(B")
(qdl "hun" "\
$A;g;h;i;j;k;lZ;bFcTdc(B")
(qdl "huo" "\
$A;m;n;o;p;q;r;s;t;u;v(B\
$AXe_+oAqk(B")
(qdl "huy" "\
$Ad'(B")
(qdl "ia" "\
$A2e2f2g2h2i2j2k2l2m2n(B\
$A2obGcbf1h>i6i_oJooqC(B")
(qdl "ie" "\
$A35363738393:[em:(B")
(qdl "if" "\
$A3;3<3=3>3?3@3A3B3C3D(B\
$AZHZ_^S`Ae7h!i4mWv3(B")
(qdl "ig" "\
$A3E3F3G3H3I3J3K3L3M3N(B\
$A3O3P3Q3R3SX)[thGh_ks(B\
$An*nqo%qNrIu((B")
(qdl "ih" "\
$A2}2~3!3"3#3$3%3&3'3((B\
$A3)3*3+Xv[K\I]Eadbjc.(B\
$AcQf=fOjFk)vp(B")
(qdl "ii" "\
$A3T3U3V3W3X3Y3Z3[3\3](B\
$A3^3_3`3a3b3cYQ\/\]_3(B\
$A_j`4`Ma\bAfJk7mwp7q!(B\
$Aq]r?s$sWsxtyuXwN(B")
(qdl "ij" "\
$A2s2t2u2v2w2x2y2z2{2|(B\
$AYfZF][b\bcd}e$eqf?fv(B\
$Ajhlxobs8up(B")
(qdl "ik" "\
$A3,3-3.3/3031323334bw(B\
$AjKqi(B")
(qdl "il" "\
$A2p2q2rY-nNp{r2(B")
(qdl "iou" "\
$A3i3j3k3l3m3n3o3p3q3r(B\
$A3s3tY1`|c0q,vE(B")
(qdl "is" "\
$A3d3e3f3g3h\{bgc?t)t>(B")
(qdl "iu" "\
$A3u3v3w3x3y3z3{3|3}3~(B\
$A4!4"4#4$4%4&X![;bpc@(B\
$Ag)hFhziKqRr\uiwm(B")
(qdl "iuh" "\
$A4/4041424344bk(B")
(qdl "iui" "\
$A4546474849Zoi"i3(B")
(qdl "iuj" "\
$A4(4)4*4+4,4-4.b6eWg](B\
$Ak0nKt-(B")
(qdl "iul" "\
$A4'^ukzu_(B")
(qdl "iun" "\
$A4:4;4<4=4>4?4@];pHrm(B")
(qdl "iuo" "\
$A4A4B`(j!uVv:(B")
(qdl "j" "\
$A000102030405060708ZO(B\
$A[{^nambVhqo'pFwv(B")
(qdl "ji" "\
$A;w;x;y;z;{;|;};~<!<"(B\
$A<#<$<%<&<'<(<)<*<+<,(B\
$A<-<.</<0<1<2<3<4<5<6(B\
$A<7<8<9<:<;<<<=<><?<@(B\
$A<A<B<C<D<E<F<G<H<I<J(B\
$A<K<L<MX"X=X@X^Y%Z5[T(B\
$A\8\A\y]p^*^a_R_b_sa'(B\
$AaUd)elfwg\gai.ijj*j+(B\
$Ajejijwl4m6n?ozp"q$r1(B\
$AsEsGt_uRuUv+v]vjwYwd(B")
(qdl "jia" "\
$A<N<O<P<Q<R<S<T<U<V<W(B\
$A<X<Y<Z<[<\<]<^[#]ga5(B\
$Ad$eHglj)kNm"nroXphp}(B\
$AqJrLsUtBuJ(B")
(qdl "jie" "\
$A=R=S=T=U=V=W=X=Y=Z=[(B\
$A=\=]=^=_=`=a=b=c=d=e(B\
$A=f=g=h=i=j=k=lZ&^W`.(B\
$A`5f<f]hnmYp\r!r;tIvZ(B\
$Aw:(B")
(qdl "jih" "\
$A=)=*=+=,=-=.=/=0=1=2(B\
$A=3=4=5\|d.g-gVjqmdqp(B\
$At]tx(B")
(qdl "jij" "\
$A<_<`<a<b<c<d<e<f<g<h(B\
$A<i<j<k<l<m<n<o<p<q<r(B\
$A<s<t<u<v<w<x<y<z<{<|(B\
$A<}<~=!="=#=$=%=&='=((B\
$AYTZIZY]Q]s^v`ndUe?e@(B\
$AgLhEi%j'j/jpjyk&klmz(B\
$Ao5pOqPsHteuBu]vdw5(B")
(qdl "jik" "\
$A=6=7=8=9=:=;=<===>=?(B\
$A=@=A=B=C=D=E=F=G=H=I(B\
$A=J=K=L=M=N=O=P=QY.YU(B\
$A\4\z^X`]a=ahdPf/k8p((B\
$ApTrTu4uSv^(B")
(qdl "jin" "\
$A=m=n=o=p=q=r=s=t=u=v(B\
$A=w=x=y=z={=|=}=~>!>"(B\
$AZa]#]@`dbKb[f!gFh*iH(B\
$AjajnqF(B")
(qdl "jiq" "\
$AY$(B")
(qdl "jis" "\
$A><>=eDlg(B")
(qdl "jiu" "\
$A>>>?>@>A>B>C>D>E>F>G(B\
$A>H>I>J>K>L>M>NYJYV`1(B\
$AcNhQhjp/pUtqw](B")
(qdl "jv" "\
$A>O>P>Q>R>S>T>U>V>W>X(B\
$A>Y>Z>[>\>]>^>_>`>a>b(B\
$A>c>d>e>f>gYFZ*\D\Z\l(B\
$A^deaeph"i'i0i7iYjxl+(B\
$AnRo8q@qUtru6uav4vBw6(B")
(qdl "jve" "\
$A>o>p>q>r>s>t>u>v>w>x(B\
$AXJXcZ\[G^'`Y`eaHb1f^(B\
$AgehviSl_ocuju{(B")
(qdl "jvj" "\
$A>h>i>j>k>l>m>n[2azd8(B\
$AhpnCoCoTvA(B")
(qdl "jvn" "\
$A>y>z>{>|>}>~?!?"?#?$(B\
$A?%^\qds^we(B")
(qdl "jy" "\
$A>#>$>%>&>'>(>)>*>+>,(B\
$A>->.>/>0>1>2>3>4>5>6(B\
$A>7>8>9>:>;XYYSZe]<b0(B\
$Ac=c~eIerf:kBkVkfl:v&(B")
(qdl "k" "\
$A0<0=0>0?0@0A0B0C0D[j(B\
$A^V`;a.bZe[fAfqiaqzr|(B\
$AvKw!wi(B")
(qdl "ka" "\
$A?&?'?(?)X{_GkL(B")
(qdl "ke" "\
$A?@?A?B?C?D?E?F?G?H?I(B\
$A?J?K?L?M?N`>a3c!d[fl(B\
$Ag<gfipk4n'n]o>o}pbq=(B\
$Ar$rrwA(B")
(qdl "kf" "\
$A?O?P?Q?RqLv8(B")
(qdl "kg" "\
$A?S?To,(B")
(qdl "kh" "\
$A?5?6?7?8?9?:?;XxcJnV(B")
(qdl "kj" "\
$A?/?0?1?2?3?4Y)](c[j,(B\
$Amhn+(B")
(qdl "kk" "\
$A?<?=?>??ejh`j{nm(B")
(qdl "kl" "\
$A?*?+?,?-?.X\[n]\bib}(B\
$Anxo4oG(B")
(qdl "kou" "\
$A?Y?Z?[?\\R^"_5mnsX(B")
(qdl "ks" "\
$A?U?V?W?XYEaGsm(B")
(qdl "ku" "\
$A?]?^?_?`?a?b?cXZ\%`7(B\
$Ag+w<(B")
(qdl "kua" "\
$A?d?e?f?g?hY((B")
(qdl "kuh" "\
$A?o?p?q?r?s?t?u?vZ2Z?(B\
$AZw[[^E_Qf~j\(B")
(qdl "kui" "\
$A?w?x?y?z?{?|?}?~@!@"(B\
$A@#X8YgZs]^^q`-`0c&c4(B\
$AeSjRn%qyrqsquM(B")
(qdl "kuj" "\
$A?m?nwE(B")
(qdl "kul" "\
$A?i?j?k?lXa[&_`avkZ(B")
(qdl "kun" "\
$A@$@%@&@'c'cMg{o?u+vo(B\
$AwU(B")
(qdl "kuo" "\
$A@(@)@*@+rR(B")
(qdl "l" "\
$A0#0$0%0&0'0(0)0*0+0,(B\
$A0-0.0/^_`H`IfHh(jSmA(B\
$AoMv0(B")
(qdl "la" "\
$A@,@-@.@/@0@1@2X]eej9(B\
$AmGpx(B")
(qdl "le" "\
$A@U@VXl_7cnw&(B")
(qdl "lei" "\
$A@W@X@Y@Z@[@\@]@^@_@`(B\
$A@aYzZ3`OfPgPi[qgu*(B")
(qdl "lg" "\
$A@b@c@d\(c6(B")
(qdl "lh" "\
$A@E@F@G@H@I@J@K]9]u`%(B\
$AcOo6o|rk(B")
(qdl "li" "\
$A@e@f@g@h@i@j@k@l@m@n(B\
$A@o@p@q@r@s@t@u@v@w@x(B\
$A@y@z@{@|@}@~A!A"A#A$(B\
$AA%A&A'A(Y3Y5[*[^\B]0(B\
$A]q^<_?`&`,a{d`e"eNf2(B\
$AfKfjgJh@h]ivlemBn:n>(B\
$Ao.p?p]p_rCr[s;sRsvtO(B\
$Au7uHv(vbw/ws(B")
(qdl "lia" "\
$AA)(B")
(qdl "lie" "\
$AAPAQARASATY}[x^f_Vd#(B\
$Atsuqw`(B")
(qdl "lih" "\
$AA8A9A:A;A<A=A>A?A@AA(B\
$AAB\.i#uTwK(B")
(qdl "lij" "\
$AA*A+A,A-A.A/A0A1A2A3(B\
$AA4A5A6A7]|^Fdre%gvi,(B\
$Aigl!qMqOs9vc(B")
(qdl "lik" "\
$AACADAEAFAGAHAIAJAKAL(B\
$AAMANAO^$^M`Zb2e<gTnI(B\
$ApS(B")
(qdl "lin" "\
$AAUAVAWAXAYAZA[A\A]A^(B\
$AA_]~_xaWb^cAe`i]j%l"(B\
$An,tTuowk(B")
(qdl "liu" "\
$AAoApAqArAsAtAuAvAwAx(B\
$AAyd/e^frg8l<lVo3oVpR(B\
$AvL(B")
(qdl "lj" "\
$A@6@7@8@9@:@;@<@=@>@?(B\
$A@@@A@B@C@Da0dmi-l5n=(B\
$Aogq\(B")
(qdl "lk" "\
$A@L@M@N@O@P@Q@R@S@T_k(B\
$Aa@hanno)plqlu2(B")
(qdl "ll" "\
$A@3@4@5aAabd5d~jcmyo*(B\
$Aq.t%(B")
(qdl "lou" "\
$AB%B&B'B(B)B*YM]d`6aP(B\
$AoNp|qorwwC(B")
(qdl "ls" "\
$AAzA{A|A}A~B!B"B#B$[b(B\
$A\WcqgghPkJmCq*(B")
(qdl "lu" "\
$AB+B,B-B.B/B0B1B2B3B4(B\
$AB5B6B7B8B9B:B;B<B=B>(B\
$AY@[d_#``crdKdueVh4hS(B\
$AiViqi{j$k*kMoep5pXs|(B\
$At5vT(B")
(qdl "luj" "\
$ABMBNBOBPBQBRf.hop=vG(B")
(qdl "lun" "\
$ABUBVBWBXBYBZB[`p(B")
(qdl "luo" "\
$AB\B]B^B_B`BaBbBcBdBe(B\
$ABfBgYy\}^{b$cxdpgsi!(B\
$Akao]q'vC(B")
(qdl "luz" "\
$AYu(B")
(qdl "lv" "\
$AB?B@BABBBCBDBEBFBGBH(B\
$ABIBJBKBL^[cLi5kvoyqZ(B")
(qdl "lve" "\
$ABSBTo2(B")
(qdl "ly" "\
$AA`AaAbAcAdAeAfAgAhAi(B\
$AAjAkAlAmAn[9\__J`rcv(B\
$Ag1hZhyj2qvrHtavl(B")
(qdl "m" "\
$A_<(B")
(qdl "ma" "\
$ABhBiBjBkBlBmBnBoBp_i(B\
$AaofVh?s!(B")
(qdl "me" "\
$AC4wa(B")
(qdl "mei" "\
$AC5C6C7C8C9C:C;C<C=C>(B\
$AC?C@CACBCCCD].aRb-d<(B\
$AdXi9oQpLqGwH(B")
(qdl "mf" "\
$ACECFCG^QlKm/nM(B")
(qdl "mg" "\
$ACHCICJCKCLCMCNCO[B]y(B\
$A^+cBk|mfr5rls7t;t?(B")
(qdl "mh" "\
$AC"C#C$C%C&C'Zxd]mKr~(B")
(qdl "mi" "\
$ACPCQCRCSCTCUCVCWCXCY(B\
$ACZC[C\C]XBZW^B_d`Wb((B\
$Ache5etk_lrtMtiwcwg(B")
(qdl "mie" "\
$ACoCpX?_cs:sz(B")
(qdl "mij" "\
$AC^C_C`CaCbCcCdCeCfcf(B\
$AdOkomm(B")
(qdl "mik" "\
$ACgChCiCjCkClCmCn_wec(B\
$Ag?gQhBm5mppE(B")
(qdl "min" "\
$ACqCrCsCtCuCv\ea:cIc}(B\
$AgEgdgkm*v<w*(B")
(qdl "miu" "\
$AC}(B")
(qdl "mj" "\
$ABwBxByBzB{B|B}B~C!\,(B\
$Aa#gOlWo\r)r}w)w4(B")
(qdl "mk" "\
$AC(C)C*C+C,C-C.C/C0C1(B\
$AC2C3Ys\ba9cwh#jDjsk#(B\
$Al8m.n&rzs1wV(B")
(qdl "ml" "\
$ABqBrBsBtBuBv[=]$v2(B")
(qdl "mo" "\
$AC~D!D"D#D$D%D&D'D(D)(B\
$AD*D+D,D-D.D/D0ZS\T]k(B\
$AbIfFiboRowq"qruvux(B")
(qdl "mou" "\
$AD1D2D3Y0_hmxrVvJ(B")
(qdl "mu" "\
$AD4D5D6D7D8D9D:D;D<D=(B\
$AD>D?D@DADBXo[i\Ycek$(B\
$Anb(B")
(qdl "my" "\
$ACwCxCyCzC{C|Z$\xdijT(B\
$An(u$(B")
(qdl "n" "\
$A_m`E(B")
(qdl "na" "\
$ADCDDDEDFDGDHDI^`kGoU(B\
$AqD(B")
(qdl "ne" "\
$ADXZ+(B")
(qdl "nei" "\
$ADYDZ(B")
(qdl "nf" "\
$AD[m%(B")
(qdl "ng" "\
$AD\(B")
(qdl "nh" "\
$ADR_-`lbNjY(B")
(qdl "ni" "\
$AD]D^D_D`DaDbDcDdDeDf(B\
$ADgY#[hb%bujGl;m+m~nj(B\
$Avr(B")
(qdl "nie" "\
$ADsDtDuDvDwDxDyZm^A`?(B\
$Ar(t+uf(B")
(qdl "nih" "\
$ADoDp(B")
(qdl "nij" "\
$ADhDiDjDkDlDmDnX%[~i}(B\
$Ap$vSvs(B")
(qdl "nik" "\
$ADqDr\`fUketA(B")
(qdl "nin" "\
$ADz(B")
(qdl "niu" "\
$AE#E$E%E&apbnf$(B")
(qdl "nj" "\
$ADODPDQ`+`oi*knrotv(B")
(qdl "nk" "\
$ADSDTDUDVDWX+[q_Nb.h'(B\
$AmPnsrM(B")
(qdl "nl" "\
$ADJDKDLDMDNX>\5]AhM(B")
(qdl "nou" "\
$Aqq(B")
(qdl "ns" "\
$AE'E(E)E*Y/_f(B")
(qdl "nu" "\
$AE+E,E-E2E3E4E5esf@f[(B\
$Afe(B")
(qdl "nuj" "\
$AE/(B")
(qdl "nuo" "\
$AYP^y_vo;(B")
(qdl "nv" "\
$AE.m$nOt,(B")
(qdl "nve" "\
$AE0E1(B")
(qdl "ny" "\
$AD{D|D}D~E!E"Xz\Q_Le8(B\
$Aqw(B")
(qdl "o" "\
$AE6`8`^(B")
(qdl "ou" "\
$AE7E8E9E:E;E<E=Z)bfj1(B\
$Aqn(B")
(qdl "pa" "\
$AE>E?E@EAEBEC]bhKsa(B")
(qdl "pei" "\
$AE^E_E`EaEbEcEdEeEf`N(B\
$A`zl7oBu,v,(B")
(qdl "pf" "\
$AEgEhdT(B")
(qdl "pg" "\
$AEiEjEkElEmEnEoEpEqEr(B\
$AEsEtEuEv\!`Xbqs2(B")
(qdl "ph" "\
$AERESETEUEVa]dheLs&(B")
(qdl "pi" "\
$AEwExEyEzE{E|E}E~F!F"(B\
$AF#F$F%F&F'F(F)X'XrZp(B\
$AZ|[/[\[}\1\E^U_(`hbO(B\
$AdDfGg"hAj6n"n<nkq1qb(B\
$Ar7rguy(B")
(qdl "pie" "\
$AF2F3X/\Vk-(B")
(qdl "pij" "\
$AF*F+F,F-ZRfijzk]tfud(B")
(qdl "pik" "\
$AF.F/F0F1Xb`QfNgNihn)(B\
$As*(B")
(qdl "pin" "\
$AF4F5F6F7F8f0fIi/jrr-(B")
(qdl "pj" "\
$AEJEKELEMENEOEPEQc]cz(B\
$AqHqas4ug(B")
(qdl "pk" "\
$AEWEXEYEZE[E\E]^KasbR(B\
$Akcpe(B")
(qdl "pl" "\
$AEDEEEFEGEHEIY=]e__(B")
(qdl "po" "\
$AFBFCFDFEFFFGFHFIXO[6(B\
$Agjj7nGn^p+sM(B")
(qdl "pou" "\
$AFJYv^e(B")
(qdl "pu" "\
$AFKFLFMFNFOFPFQFRFSFT(B\
$AFUFVFWFXFYYi`[d_e'h1(B\
$Ak+odohuk(B")
(qdl "py" "\
$AF9F:F;F<F=F>F?F@FAY7(B\
$Af3hRvR(B")
(qdl "qi" "\
$AFZF[F\F]F^F_F`FaFbFc(B\
$AFdFeFfFgFhFiFjFkFlFm(B\
$AFnFoFpFqFrFsFtFuFvFw(B\
$AFxFyFzF{F|F}XAY9[_\;(B\
$A\N]=]B]]^-`Ra(a*c`d?(B\
$Afkg2gwgyh=hgiJjHl%lw(B\
$Am,mSq}rSr`tkuhw"wh(B")
(qdl "qia" "\
$AF~G!G"]VwD(B")
(qdl "qie" "\
$AGPGQGRGSGT['c+f*j|oF(B\
$Asf(B")
(qdl "qih" "\
$AG9G:G;G<G=G>G?G@c^fM(B\
$AiIj(lAo:oOojq_r^tGuD(B")
(qdl "qij" "\
$AG#G$G%G&G'G(G)G*G+G,(B\
$AG-G.G/G0G1G2G3G4G5G6(B\
$AG7G8Y;Y]Zd\7\M\g]!^g(B\
$Aa)c%c;e9e:e=gWh}kIm)(B\
$AnTr/si(B")
(qdl "qik" "\
$AGAGBGCGDGEGFGGGHGIGJ(B\
$AGKGLGMGNGOXdZ=Z[\qc8(B\
$Ac>gXiTmMuNw3(B")
(qdl "qin" "\
$AGUGVGWGXGYGZG[G\G]G^(B\
$AG_\K^l_D`:`_dZiUo7q{(B\
$Ar{t@(B")
(qdl "qis" "\
$AGmGnZv\dq7rKsLu<vF(B")
(qdl "qiu" "\
$AGoGpGqGrGsGtGuGvY4[O(B\
$AaleOeYi1jdr0rGrxtCt\(B\
$Avzw|(B")
(qdl "qv" "\
$AGwGxGyGzG{G|G}G~H!H"(B\
$AH#H$H%Z0[>^!^>a+aicV(B\
$Ah3jok,kTlnmap6q3rPs=(B\
$AtpvDwq(B")
(qdl "qve" "\
$AH1H2H3H4H5H6H7H8cWcZ(B\
$Am((B")
(qdl "qvj" "\
$AH&H'H(H)H*H+H,H-H.H/(B\
$AH0Z9\uc*g9izn0n}ris\(B\
$Aw\(B")
(qdl "qvn" "\
$AH9H:eR(B")
(qdl "qy" "\
$AG`GaGbGcGdGeGfGgGhGi(B\
$AGjGkGl\\`uiQm`r_s@sd(B\
$Atlv%vkwt(B")
(qdl "re" "\
$AHGHH(B")
(qdl "rf" "\
$AHIHJHKHLHMHNHOHPHQHR(B\
$AXp\s]Xb?imo~qE(B")
(qdl "rg" "\
$AHSHT(B")
(qdl "rh" "\
$AH?H@HAHBHCl|p&(B")
(qdl "ri" "\
$AHU(B")
(qdl "rj" "\
$AH;H<H=H>\[rEwW(B")
(qdl "rk" "\
$AHDHEHF\if,hc(B")
(qdl "rou" "\
$AH`HaHbt[uew7(B")
(qdl "rs" "\
$AHVHWHXHYHZH[H\H]H^H_(B\
$AaIauiEk@rn(B")
(qdl "ru" "\
$AHcHdHeHfHgHhHiHjHkHl(B\
$AY<]j^8`id2dae&gHo(q`(B\
$Ar,(B")
(qdl "rui" "\
$AHoHpHq\G^(hDn#r8(B")
(qdl "ruj" "\
$AHmHn(B")
(qdl "run" "\
$AHrHs(B")
(qdl "ruo" "\
$AHtHush(B")
(qdl "ruz" "\
$AkC(B")
(qdl "sa" "\
$AHvHwHxX&Xmj}k[l*(B")
(qdl "se" "\
$AI*I+I,XDo$p#(B")
(qdl "sf" "\
$AI-(B")
(qdl "sg" "\
$AI.(B")
(qdl "sh" "\
$AI#I$I%^zm_r*(B")
(qdl "si" "\
$AK9K:K;K<K=K>K?K@KAKB(B\
$AKCKDKEKFKGKHXKYn[L_P(B\
$Acactdyf&fagAlkoHp8qj(B\
$ArOsS(B")
(qdl "sj" "\
$AH}H~I!I"bLk'tVv1(B")
(qdl "sk" "\
$AI&I'I(I)\#gRk}p~v~(B")
(qdl "sl" "\
$AHyHzH{H|`g(B")
(qdl "sou" "\
$AKQKRKSKT[E^4`2`UbHdQ(B\
$Al,n$oKrt(B")
(qdl "ss" "\
$AKIKJKKKLKMKNKOKPZ!]?(B\
$AaBaTblc$dAq5(B")
(qdl "su" "\
$AKUKVKWKXKYKZK[K\K]K^(B\
$AK_K`YmZU]x`<c:d3syv"(B\
$AvU(B")
(qdl "sui" "\
$AKdKeKfKgKhKiKjKkKlKm(B\
$AKnZGe!edl]mun!(B")
(qdl "suj" "\
$AKaKbKcb!(B")
(qdl "sun" "\
$AKoKpKq]%axb8i>v@(B")
(qdl "suo" "\
$AKrKsKtKuKvKwKxKy_o`B(B\
$A`Jf6hxm|tH(B")
(qdl "suy" "\
$A]4(B")
(qdl "ta" "\
$AKzK{K|K}K~L!L"L#L$cK(B\
$Adbe]i=nhuAw#(B")
(qdl "te" "\
$ALX_/l}o+(B")
(qdl "tg" "\
$ALYL[L\kx(B")
(qdl "th" "\
$AL@LALBLCLDLELFLGLHLI(B\
$ALJLKLLYN`{dgh)iLo&o[(B\
$Aqms%s+tJu1(B")
(qdl "ti" "\
$AL]L^L_L`LaLbLcLdLeLf(B\
$ALgLhLiLjLkYCc)eQg>pC(B\
$AqSu.(B")
(qdl "tie" "\
$ALyLzL{]FwQ(B")
(qdl "tij" "\
$ALlLmLnLoLpLqLrLs^]cC(B\
$AcYien1(B")
(qdl "tik" "\
$ALtLuLvLwLxY,lvq;rhsT(B\
$AtPv6vfwX(B")
(qdl "tj" "\
$AL.L/L0L1L2L3L4L5L6L7(B\
$AL8L9L:L;L<L=L>L?[0e#(B\
$Aj<l~ncoD(B")
(qdl "tk" "\
$ALMLNLOLPLQLRLSLTLULV(B\
$ALWX;_{d,h:lbwR(B")
(qdl "tl" "\
$AL%L&L'L(L)L*L+L,L-["(B\
$A^7kDlFnQuLvX(B")
(qdl "tou" "\
$AM5M6M7M8nWw;(B")
(qdl "ts" "\
$AM(M)M*M+M,M-M.M/M0M1(B\
$AM2M3M4Y!YZ\m`Lbzd|mE(B")
(qdl "tu" "\
$AM9M:M;M<M=M>M?M@MAMB(B\
$AMC\"]1]KnJu)(B")
(qdl "tui" "\
$AMFMGMHMIMJMKlU(B")
(qdl "tuj" "\
$AMDME^Rehn6(B")
(qdl "tun" "\
$AMLMMMNY[b=jUk`(B")
(qdl "tuo" "\
$AMOMPMQMRMSMTMUMVMWMX(B\
$AMYX1Y"[gbUc{hXiRmHsj(B\
$Au"uIv>(B")
(qdl "ty" "\
$AL|L}L~M!M"M#M$M%M&M'(B\
$A\p]cfChhnzrQv*(B")
(qdl "ua" "\
$AI/I0I1I2I3I4I5I6I7_~(B\
$Ab*l&o!pptDv.vh(B")
(qdl "ue" "\
$AI]I^I_I`IaIbIcIdIeIf(B\
$AIgIhXGY\b&d\l(n4wj(B")
(qdl "uf" "\
$AIiIjIkIlImInIoIpIqIr(B\
$AIsItIuIvIwIxZ7ZE]7_S(B\
$AdIi)kOorrW(B")
(qdl "ug" "\
$AIyIzI{I|I}I~J!J"J#J$(B\
$AJ%aSdEjImrsO(B")
(qdl "uh" "\
$AIJIKILIMINIOIPIQ[pg4(B\
$AidlXu|(B")
(qdl "ui" "\
$AJ&J'J(J)J*J+J,J-J.J/(B\
$AJ0J1J2J3J4J5J6J7J8J9(B\
$AJ:J;J<J=J>J?J@JAJBJC(B\
$AJDJEJFJGJHJIJJJKJLJM(B\
$AJNJOJPJQJRJSJTZV[u]*(B\
$A]i_1ixj[lBnfs'sBs_u9(B\
$Avevu(B")
(qdl "uj" "\
$AI:I;I<I=I>I?I@IAIBIC(B\
$AIDIEIFIGIHIIZ([7\Odz(B\
$Af)fSfsk~nLp^s5t.uGw-(B")
(qdl "uk" "\
$AIRISITIUIVIWIXIYIZI[(B\
$AI\[?\fd{h<rYsbt9(B")
(qdl "ul" "\
$AI8I9u'(B")
(qdl "uou" "\
$AJUJVJWJXJYJZJ[J\J]J^(B\
$Aawg7t<(B")
(qdl "uu" "\
$AJ_J`JaJbJcJdJeJfJgJh(B\
$AJiJjJkJlJmJnJoJpJqJr(B\
$AJsJtJuJvJwJxJyJzJ{J|(B\
$AJ}J~K!X-Y?[S]D^scpdx(B\
$Af-g#k(krl/oxs0(B")
(qdl "uua" "\
$AK"K#`'(B")
(qdl "uuh" "\
$AK*K+K,fW(B")
(qdl "uui" "\
$AK-K.K/K0(B")
(qdl "uuj" "\
$AK(K)cEdL(B")
(qdl "uul" "\
$AK$K%K&K'(B")
(qdl "uun" "\
$AK1K2K3K4(B")
(qdl "uuo" "\
$AK5K6K7K8]t^weyiCne(B")
(qdl "wa" "\
$AMZM[M\M]M^M_M`Xtf4kp(B")
(qdl "wei" "\
$AM~N!N"N#N$N%N&N'N(N)(B\
$AN*N+N,N-N.N/N0N1N2N3(B\
$AN4N5N6N7N8N9N:N;N<N=(B\
$AN>N?N@YKZCZq[W]Z^1`m(B\
$A`xa!aKaMb+b,cGcmd"d6(B\
$AeTf8gbh8j&l?lPptt:v[(B")
(qdl "wf" "\
$ANANBNCNDNENFNGNHNINJ(B\
$AXXcSckh7v)(B")
(qdl "wg" "\
$ANKNLNM]n^3(B")
(qdl "wh" "\
$AMtMuMvMwMxMyMzM{M|M}(B\
$AXh^Lc/i~wM(B")
(qdl "wj" "\
$AMcMdMeMfMgMhMiMjMkMl(B\
$AMmMnMoMpMqMrMsX`\9]8(B\
$A]Rf}g:g~kdn5rj(B")
(qdl "wl" "\
$AMaMb(B")
(qdl "wo" "\
$ANNNONPNQNRNSNTNUNVYA(B\
$A]+a"dWk?mRv;(B")
(qdl "wu" "\
$ANWNXNYNZN[N\N]N^N_N`(B\
$ANaNbNcNdNeNfNgNhNiNj(B\
$ANkNlNmNnNoNpNqNrNsX#(B\
$AXuZcZy[X\LbPbdbhd4e;(B\
$AeCe|fDfph;julIpDpMpm(B\
$ArZvHwy(B")
(qdl "xi" "\
$ANtNuNvNwNxNyNzN{N|N}(B\
$AN~O!O"O#O$O%O&O'O(O)(B\
$AO*O+O,O-O.O/O0O1O2O3(B\
$AO4O5O6O7O8YRYbZt[-]>(B\
$A]_]{^I_qacb>cRd;d@eo(B\
$AfRgthUiXjXjjl$ldlyl{(B\
$Ap*q6ras#s,t*t8tKtQtb(B\
$Au5w{(B")
(qdl "xia" "\
$AO9O:O;O<O=O>O?O@OAOB(B\
$AOCODOE_HareZh&hTmLsA(B\
$Awo(B")
(qdl "xie" "\
$AP)P*P+P,P-P.P/P0P1P2(B\
$AP3P4P5P6P7P8P9P:P;P<(B\
$AYIYt[D[F^/_"b3b]dMe,(B\
$Aebg%gSi?iGus(B")
(qdl "xih" "\
$AO`OaObOcOdOeOfOgOhOi(B\
$AOjOkOlOmOnOoOpOqOrOs(B\
$A\<]YbCbTfx(B")
(qdl "xij" "\
$AOFOGOHOIOJOKOLOMONOP(B\
$AOQOROSOTOUOVOWOXOYOZ(B\
$AO[O\O]O^O_Y~\H]2^:a-(B\
$Aa}e_f5k/l^llpBpor9sZ(B\
$AtLu#uPuQ(B")
(qdl "xik" "\
$AOtOuOvOwOxOyOzO{O|O}(B\
$AO~P!P"P#P$P%P&P'_XaE(B\
$AdlePfgg/hIscsowL(B")
(qdl "xin" "\
$AP=P>P?P@PAPBPCPDPEPF(B\
$AX6\0j?l'vN(B")
(qdl "xis" "\
$APVPWPXPYPZP[P\\:(B")
(qdl "xiu" "\
$AP(P]P^P_P`PaPbPcPdPe(B\
$A_]a6bJbSdep<uww[(B")
(qdl "xix" "\
$Ag=s-v_wO(B")
(qdl "xji" "\
$AOO(B")
(qdl "xv" "\
$APfPgPhPiPjPkPlPmPnPo(B\
$APpPqPrPsPtPuPvPwPxZ<(B\
$A[C^#d*dSgohrlcmlqctZ(B\
$Au/(B")
(qdl "xve" "\
$AQ%Q&Q'Q(Q)Q*ZJm4u=w((B")
(qdl "xvj" "\
$APzP{P|P}P~Q!Q"Q#Q$YX(B\
$AZN]f^ocydVdvh/i8jQlE(B\
$AlSm[ngo`pg(B")
(qdl "xvn" "\
$AQ+Q,Q-Q.Q/Q0Q1Q2Q3Q4(B\
$AQ5Q6Q7Q8Yc[w\w^&^9a>(B\
$Aa_b4b~d-d1jVu8v`(B")
(qdl "xvz" "\
$APy(B")
(qdl "xy" "\
$APGPHPIPJPKPLPMPNPOPP(B\
$APQPRPSPTPUZj\t\~_)b<(B\
$Ac,mJ(B")
(qdl "ya" "\
$AQ9Q:Q;Q<Q=Q>Q?Q@QAQB(B\
$AQCQDQEQFQGQHXs[k^ka,(B\
$AeBf+gphbk2m<m}pi(B")
(qdl "ye" "\
$AR,R-R.R/R0R1R2R3R4R5(B\
$AR6R7R8R9R:XLZKZ~^^jJ(B\
$AlGnt(B")
(qdl "yh" "\
$AQjQkQlQmQnQoQpQqQrQs(B\
$AQtQuQvQwQxQyQza`bscs(B\
$Al>lHm&rUw1(B")
(qdl "yi" "\
$AR;R<R=R>R?R@RARBRCRD(B\
$ARERFRGRHRIRJRKRLRMRN(B\
$ARORPRQRRRSRTRURVRWRX(B\
$ARYRZR[R\R]R^R_R`RaRb(B\
$ARcRdReRfRgRhRiRjRkRl(B\
$ARmRnRoXWXfX}Y+Z1[][|(B\
$A\2\S\h^2^D^H^Z_._4_=(B\
$A_W_^`fa;aZb"bBbxbyc((B\
$AdteFfdgKilisj]l=lZmt(B\
$AnFoWonpjpyq/q4rft/t`(B\
$Atht}wp(B")
(qdl "yin" "\
$ARpRqRrRsRtRuRvRwRxRy(B\
$ARzR{R|R}R~S!X7[4[s\'(B\
$A\a_E`3a~b9d&k3nwq+q?(B\
$Ar>v/(B")
(qdl "yj" "\
$AQIQJQKQLQMQNQOQPQQQR(B\
$AQSQTQUQVQWQXQYQZQ[Q\(B\
$AQ]Q^Q_Q`QaQbQcQdQeQf(B\
$AQgQhQiXIXMX_Y2YHYpZ](B\
$A[1[3[o\>]NaCb{cFcUdN(B\
$AdYe{fLg|i\jLkYlMn;s[(B\
$Au&wJwPwz(B")
(qdl "yk" "\
$AQ{Q|Q}Q~R!R"R#R$R%R&(B\
$AR'R(R)R*R+X2X3_:aJaf(B\
$Ag[grhCiwjWkHpNq:tmw%(B")
(qdl "yo" "\
$AS4`!(B")
(qdl "you" "\
$ASDSESFSGSHSISJSKSLSM(B\
$ASNSOSPSQSRSSSTSUSVSW(B\
$AXUX|Y'],]/]5_O`se6hV(B\
$Ai`k;npp`rDrJrvvOwnwx(B")
(qdl "ys" "\
$AS5S6S7S8S9S:S;S<S=S>(B\
$AS?S@SASBSCY8[U\-`/c<(B\
$Ag_o^p.w+wS(B")
(qdl "yu" "\
$ASXSYSZS[S\S]S^S_S`Sa(B\
$ASbScSdSeSfSgShSiSjSk(B\
$ASlSmSnSoSpSqSrSsStSu(B\
$ASvSwSxSySzS{S|S}S~T!(B\
$AT"T#T$T%T&X.X9XqY6ZD(B\
$AZM]G]w^m`t`vaNa|b@bE(B\
$AbWcPewe}f%fzh$jEjlki(B\
$Al#l6lOlYl[m2nZpApVpu(B\
$Apvq>qArbrusDt't(v'v9(B")
(qdl "yue" "\
$AT;T<T=T>T?T@TATBTCTD(B\
$AY_e.iPk>na(B")
(qdl "yuj" "\
$AT'T(T)T*T+T,T-T.T/T0(B\
$AT1T2T3T4T5T6T7T8T9T:(B\
$A[y\+^rcdfBh%iZk<msp0(B\
$As"snv=(B")
(qdl "yun" "\
$ATETFTGTHTITJTKTLTMTN(B\
$ATOTP[)\?aqc"c3g!h9if(B\
$Aj@k5(B")
(qdl "yy" "\
$AS"S#S$S%S&S'S(S)S*S+(B\
$AS,S-S.S/S0S1S2S3Yx[+(B\
$A\c]:]S]v^|`Sb_d^dke-(B\
$Agxh,i:ktpPq(r#s?(B")
(qdl "za" "\
$ATQTRTS_F(B")
(qdl "ze" "\
$ATpTqTrTsXFXS_u`}eEj>(B\
$AsPset7(B")
(qdl "zei" "\
$ATt(B")
(qdl "zf" "\
$ATuZZ(B")
(qdl "zg" "\
$ATvTwTxTygUj5n@o-(B")
(qdl "zh" "\
$AT_T`Taf`j0(B")
(qdl "zi" "\
$AWHWIWJWKWLWMWNWOWPWQ(B\
$AWRWSWTWUWVZQ_ZaQf"f\(B\
$Ag;hwj"j_m'mvoEovqhsJ(B\
$AtRttu~v$v7vvwZ(B")
(qdl "zj" "\
$AT[T\T]T^^Yh6jCt"tXtu(B\
$AvI(B")
(qdl "zk" "\
$ATbTcTdTeTfTgThTiTjTk(B\
$ATlTmTnTo_p(B")
(qdl "zl" "\
$ATTTUTVTWTXTYTZaLg^(B")
(qdl "zou" "\
$AW^W_W`WaZAZn[8fcvm(B")
(qdl "zs" "\
$AWWWXWYWZW[W\W]YLkjtU(B")
(qdl "zu" "\
$AWbWcWdWeWfWgWhWiY^Zh(B\
$A]Oo_(B")
(qdl "zui" "\
$AWlWmWnWo^)(B")
(qdl "zuj" "\
$AWjWk_,gZur(B")
(qdl "zun" "\
$AWpWq_$iWw.(B")
(qdl "zuo" "\
$AWrWsWtWuWvWwWxWy_r`\(B\
$AbtkQlq(B")
