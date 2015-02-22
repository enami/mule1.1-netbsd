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
;;	Original table is from cxterm/dict/tit/TONEPY.tit.
;; 92.6.24  modified for Mule Ver.0.9.5 by K.Handa <handa@etl.go.jp>
;;	To cope with new version of quail.

;; # HANZI input table for cxterm
;; # To be used by cxterm, convert me to .cit format first
;; # .cit version 1
;; ENCODE:	GB
;; MULTICHOICE:	YES
;; PROMPT:	$A::WVJdHk!K4x5wF4Rt!K(B 
;; #
;; COMMENT	$A4x5wF4Rt7=08(B
;; COMMENT
;; COMMENT $AP!P4S"NDWVD84z1m!8F4Rt!97{:E#,(B "u(yu) $ATrSC(B u: $A1mJ>!C(B
;; COMMENT $ARt5wSCJ}WV1mJ>#,(B 12345 $A7V1p4z1mRuF=!"QtF=!"IOIy!"OBIy<0GaIy(B
;; # define keys
;; VALIDINPUTKEY:	12345:abcdefghijklmnopqrstuvwxyz
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
 "tonepy" "$A5w(B" nil
 "$A::WVJdHk!K4x5wF4Rt!K(B 

	$A4x5wF4Rt7=08(B

 $AP!P4S"NDWVD84z1m!8F4Rt!97{:E#,(B \"u(yu) $ATrSC(B u: $A1mJ>!C(B
 $ARt5wSCJ}WV1mJ>#,(B 12345 $A7V1p4z1mRuF=!"QtF=!"IOIy!"OBIy<0GaIy(B"
 *quail-mode-rich-map* nil nil nil nil t)

(defmacro qdl (key str)
  (list 'quail-defrule key (list 'string-to-char-list str)))

(qdl "a1" "\
$A0!0":G_9kgo9(B")
(qdl "a2" "\
$A0!:G`D(B")
(qdl "a3" "\
$A0!:G(B")
(qdl "a4" "\
$A0!:G(B")
(qdl "a5" "\
$A0!0":G(B")
(qdl "ai1" "\
$A0#0$0%0&0'^_oM(B")
(qdl "ai2" "\
$A0$0(0)4t^_(B")
(qdl "ai3" "\
$A0%0*0+`Hv0(B")
(qdl "ai4" "\
$A0%0&0,0-0.0/`H`IfHh((B\
$AjSmA(B")
(qdl "an1" "\
$A0001023'9cZObVhqpF(B")
(qdl "an3" "\
$A03[{^no'(B")
(qdl "an4" "\
$A0405060708amwv(B")
(qdl "ang1" "\
$A09(B")
(qdl "ang2" "\
$A0:(B")
(qdl "ang4" "\
$A0;(B")
(qdl "ao1" "\
$A0<0>(B")
(qdl "ao2" "\
$A0=0>0?Oy`;bZe[iaqzr|(B\
$Aw!wi(B")
(qdl "ao3" "\
$A0@^VfA(B")
(qdl "ao4" "\
$A0A0B0C0D[j^Va.fqvK(B")
(qdl "ba1" "\
$A0E0F0G0H0I0J0K0L0Ma1(B\
$AtN(B")
(qdl "ba2" "\
$A0K0N0O\X]CwI(B")
(qdl "ba3" "\
$A0P0QnY(B")
(qdl "ba4" "\
$A0Q0R0S0T0U0Ve1vQ(B")
(qdl "ba5" "\
$A0I0U(B")
(qdl "bai1" "\
$Aj~(B")
(qdl "bai2" "\
$A0W(B")
(qdl "bai3" "\
$A0X0Y0Z0[2.^c(B")
(qdl "bai4" "\
$A0\0]0^_B(B")
(qdl "ban1" "\
$A0_0`0a0b0c0dq#q-(B")
(qdl "ban3" "\
$A0e0fZf[`nSt2(B")
(qdl "ban4" "\
$A0g0h0i0j0k0l0m(B")
(qdl "bang1" "\
$A0n0o0pd:(B")
(qdl "bang3" "\
$A0q0r0s(B")
(qdl "bang4" "\
$A0r0t0u0v0w0x0y]r(B")
(qdl "bao1" "\
$A0z0{0|0}0~EZf_lRv5(B")
(qdl "bao2" "\
$A1!1"(B")
(qdl "bao3" "\
$A1#1$1%1&]ap1qY(B")
(qdl "bao4" "\
$A1'1(1)1*1+1,EYFXFYu@(B")
(qdl "bei1" "\
$A1-1.1/1013Zi[}]IpG(B")
(qdl "bei3" "\
$A11(B")
(qdl "bei4" "\
$A12131415161718191:1;(B\
$AXCZ}]mc#mUqXvMw9(B")
(qdl "bei5" "\
$A1[_B(B")
(qdl "ben1" "\
$A1<jZo<(B")
(qdl "ben3" "\
$A1=1>[N(B")
(qdl "ben4" "\
$A1<1?:;[P(B")
(qdl "beng1" "\
$A1@1A`T(B")
(qdl "beng2" "\
$A1B(B")
(qdl "beng3" "\
$A1A(B")
(qdl "beng4" "\
$A0v1A1C1D1Ej4(B")
(qdl "bi1" "\
$A1F(B")
(qdl "bi2" "\
$A1G])(B")
(qdl "bi3" "\
$A1H1I1J1KX0YB_Ae~out0(B")
(qdl "bi4" "\
$A1L1M1N1O1P1Q1R1S1T1U(B\
$A1V1W1X1Y1Z1[1\1]7wCX(B\
$ACZ[}\E\j]I^5_YaybXc9(B\
$Adde(evf>fTh5jZn/niqT(B\
$AsYskswtEuOwB(B")
(qdl "bian1" "\
$A1^1_1`lTm>rysVv}(B")
(qdl "bian3" "\
$A1a1bXRm\q9q[(B")
(qdl "bian4" "\
$A1c1d1e1f1g1h1i[M\Pbm(B\
$AcjgB(B")
(qdl "bian5" "\
$A1_(B")
(qdl "biao1" "\
$A1j1k1lIWfth<l)l-l.oZ(B\
$Aopq&wT(B")
(qdl "biao3" "\
$A1mf;qQ(B")
(qdl "biao4" "\
$Aw'(B")
(qdl "bie1" "\
$A1n1o1q(B")
(qdl "bie2" "\
$A1pu?(B")
(qdl "bie3" "\
$A1q(B")
(qdl "bie4" "\
$A1p(B")
(qdl "bin1" "\
$A1r1s1t1u1vYOaYgMgciD(B\
$AoY(B")
(qdl "bin4" "\
$A1wikkwwFw^(B")
(qdl "bing1" "\
$A1x1y2"iD(B")
(qdl "bing3" "\
$A1z1{1|1}1~FAYwZ{(B")
(qdl "bing4" "\
$A2!2"^p(B")
(qdl "bo1" "\
$A0c0~2#2$2%2&2'2(bDu@(B")
(qdl "bo2" "\
$A0X0Y1!2)2*2+2,2-2.2/(B\
$A202122232425FGXCYqmg(B\
$An`p>u[(B")
(qdl "bo3" "\
$At$uK(B")
(qdl "bo4" "\
$A0X1!i^j~k"t$(B")
(qdl "bo5" "\
$A27`#(B")
(qdl "bu1" "\
$AeMjNn_(B")
(qdl "bu2" "\
$A2;u3(B")
(qdl "bu3" "\
$A1$26272829_2(B")
(qdl "bu4" "\
$A2:2;2<2=2>2?2@FRj3nP(B")
(qdl "ca1" "\
$A2A2p`j(B")
(qdl "ca3" "\
$Ame(B")
(qdl "cai1" "\
$A2B(B")
(qdl "cai2" "\
$A2C2D2E2F(B")
(qdl "cai3" "\
$A2G2H2I2J(B")
(qdl "cai4" "\
$A2I2K2L(B")
(qdl "can1" "\
$A2M2Nfn(B")
(qdl "can2" "\
$A2O2P2Q(B")
(qdl "can3" "\
$A2Rwu(B")
(qdl "can4" "\
$A2R2S2tenh2tS(B")
(qdl "cang1" "\
$A2T2U2V2WXw(B")
(qdl "cang2" "\
$A2X(B")
(qdl "cao1" "\
$A2Y2Z(B")
(qdl "cao2" "\
$A2[2\`Pdns)t=(B")
(qdl "cao3" "\
$A2](B")
(qdl "ce4" "\
$A2^2_2`2a2bb|(B")
(qdl "cen1" "\
$A2N(B")
(qdl "cen2" "\
$Aa/d9(B")
(qdl "ceng1" "\
$A`a(B")
(qdl "ceng2" "\
$A2cTx(B")
(qdl "ceng4" "\
$A2d(B")
(qdl "cha1" "\
$A2e2f2j2nT{`jbGh>oJ(B")
(qdl "cha2" "\
$A2f2g2h2i2j2k2lb*i+i6(B\
$Ai_(B")
(qdl "cha3" "\
$A2fooqC(B")
(qdl "cha4" "\
$A2f2m2n2oI2cbf1h>qC(B")
(qdl "chai1" "\
$A2n2pnN(B")
(qdl "chai2" "\
$A2q2rY-(B")
(qdl "chai4" "\
$Ap{r2(B")
(qdl "chan1" "\
$A2s2tjh(B")
(qdl "chan2" "\
$A2u2v2w2x5%b\d}e$enf?(B\
$Alxobs8up(B")
(qdl "chan3" "\
$A2y2z2{YfZF][fv(B")
(qdl "chan4" "\
$A2|bceq(B")
(qdl "chang1" "\
$A2}2~Xv]EcQf=vp(B")
(qdl "chang2" "\
$A3!3"3#3$3%3&IQLH\Iad(B\
$AfO(B")
(qdl "chang3" "\
$A3!3'3(c.jFk)(B")
(qdl "chang4" "\
$A3)3*3+[Kbj(B")
(qdl "chao1" "\
$A3,3-3.334B=KbwlL(B")
(qdl "chao2" "\
$A3/303132jK(B")
(qdl "chao3" "\
$A3334(B")
(qdl "chao4" "\
$Aqi(B")
(qdl "che1" "\
$A35m:(B")
(qdl "che3" "\
$A363_(B")
(qdl "che4" "\
$A3738393:[e(B")
(qdl "chen1" "\
$A3;^S`Ah!(B")
(qdl "chen2" "\
$A3<3=3>3?3@3A3B3HIrZH(B\
$Ae7(B")
(qdl "chen3" "\
$AmW(B")
(qdl "chen4" "\
$A3C3D3F3SZ_i4v3(B")
(qdl "chen5" "\
$AXw(B")
(qdl "cheng1" "\
$A3E3F3S`ah_n*nurI(B")
(qdl "cheng2" "\
$A3G3H3I3J3K3L3M3N3O3P(B\
$AJ"X)[thGksnqqNu((B")
(qdl "cheng3" "\
$A3Q3RqN(B")
(qdl "cheng4" "\
$A3F3S(B")
(qdl "chi1" "\
$A3T3U_j`MfJmwp7r?s$sW(B\
$AwN(B")
(qdl "chi2" "\
$A3V3W3X3Y3Z3[[f\/\]sx(B\
$AuX(B")
(qdl "chi3" "\
$A3\3]3^3_q]ty(B")
(qdl "chi4" "\
$A3`3a3b3cYQ_3`4a\bAk7(B\
$Aq!(B")
(qdl "chong1" "\
$A3d3eS?\{bgc?t)t>(B")
(qdl "chong2" "\
$A3f3gVVVX(B")
(qdl "chong3" "\
$A3h(B")
(qdl "chong4" "\
$A3eo%(B")
(qdl "chou1" "\
$A3iq,(B")
(qdl "chou2" "\
$A3j3k3l3m3n3o3p3qY1`|(B\
$Ac0vE(B")
(qdl "chou3" "\
$A3r3s(B")
(qdl "chou4" "\
$A3t(B")
(qdl "chu1" "\
$A3u3viK(B")
(qdl "chu2" "\
$A3w3x3y3z3{3|3}[;r\ui(B")
(qdl "chu3" "\
$A3~4!4"4&hFhzqR(B")
(qdl "chu4" "\
$A4#4$4%4&PsX!bpc@g)wm(B")
(qdl "chuai1" "\
$A4'^u(B")
(qdl "chuai3" "\
$A4'(B")
(qdl "chuai4" "\
$A4'`(`\kzu_(B")
(qdl "chuan1" "\
$A4(4)g]k0(B")
(qdl "chuan2" "\
$A4*4+4,eWt-(B")
(qdl "chuan3" "\
$A4-b6(B")
(qdl "chuan4" "\
$A4.nK(B")
(qdl "chuang1" "\
$A4/4044(B")
(qdl "chuang2" "\
$A4142(B")
(qdl "chuang3" "\
$A43(B")
(qdl "chuang4" "\
$A44bk(B")
(qdl "chui1" "\
$A4546(B")
(qdl "chui2" "\
$A474849W5Zoi"i3(B")
(qdl "chun1" "\
$A4:4;rm(B")
(qdl "chun2" "\
$A4<4=4>4?];pH(B")
(qdl "chun3" "\
$A4@(B")
(qdl "chuo1" "\
$A4AuV(B")
(qdl "chuo4" "\
$A4B`(j!v:(B")
(qdl "ci1" "\
$A2n4C4L_Z(B")
(qdl "ci2" "\
$A4D4E4F4G4H4I4JWH\klt(B\
$ApKtY(B")
(qdl "ci3" "\
$A4K(B")
(qdl "ci4" "\
$A4L4M4NKE(B")
(qdl "cong1" "\
$A4O4P4Q4R4S\Jfuh.hH(B")
(qdl "cong2" "\
$A4S4TdHg}(B")
(qdl "cou4" "\
$A4Ui(j#km(B")
(qdl "cu1" "\
$A4V(B")
(qdl "cu2" "\
$Aa^ic(B")
(qdl "cu4" "\
$A4W4X4YWd]}b'u!u>um(B")
(qdl "cuan1" "\
$A4ZY`_%oi(B")
(qdl "cuan2" "\
$AT\(B")
(qdl "cuan4" "\
$A4[4\l`(B")
(qdl "cui1" "\
$A4]4^4_K%iAv?(B")
(qdl "cui3" "\
$Ah-(B")
(qdl "cui4" "\
$A4`4a4b4c4d]M_}c2k%(B")
(qdl "cun1" "\
$A4eqe(B")
(qdl "cun2" "\
$A4f6W(B")
(qdl "cun3" "\
$Abb(B")
(qdl "cun4" "\
$A4g(B")
(qdl "cuo1" "\
$A4h4i4juc(B")
(qdl "cuo2" "\
$AaOospnp{u:(B")
(qdl "cuo3" "\
$A4ikb(B")
(qdl "cuo4" "\
$A4k4l4mXHo1(B")
(qdl "da1" "\
$A4n4p^G_U`*qW(B")
(qdl "da2" "\
$A4o4p4q4rbrf'm3sNw0w2(B")
(qdl "da3" "\
$A4r(B")
(qdl "da4" "\
$A4s(B")
(qdl "da5" "\
$AK~pc(B")
(qdl "dai1" "\
$A4t4}_>(B")
(qdl "dai3" "\
$A4u4v4~(B")
(qdl "dai4" "\
$A4s4w4x4y4z4{4|4}4~5!(B\
$A\$_0a7eJffg*giwl(B")
(qdl "dan1" "\
$A5"5#5$5%5&YYiimqpwqu(B\
$Asl(B")
(qdl "dan3" "\
$A5#5'5(jfpcpw(B")
(qdl "dan4" "\
$A5#5)5*5+5,5-5.5/50J/(B\
$A]L`"e#pw(B")
(qdl "dang1" "\
$A51nuqI(B")
(qdl "dang3" "\
$A5253ZT(B")
(qdl "dang4" "\
$A51525455[J]Pe4m8(B")
(qdl "dao1" "\
$A56_6bak.(B")
(qdl "dao2" "\
$A_6(B")
(qdl "dao3" "\
$A5758595:5;5<(B")
(qdl "dao4" "\
$A595=5>5?5@5A`|lbtn(B")
(qdl "de2" "\
$A5B5Co=(B")
(qdl "de5" "\
$A5C5D5W5X(B")
(qdl "dei3" "\
$A5C(B")
(qdl "deng1" "\
$A5E5F5G`bt#(B")
(qdl "deng3" "\
$A5Hj-(B")
(qdl "deng4" "\
$A3N5E5I5J5KaXmcok(B")
(qdl "di1" "\
$A5L5M5NLaX5`VoatF(B")
(qdl "di2" "\
$A5D5O5P5Q5R5S5T5UYa]6(B\
$A`Vjkoa(B")
(qdl "di3" "\
$A5V5WX5Z.[![fh\mFw>(B")
(qdl "di4" "\
$A5D5X5Y5Z5[5\5]5^ZPf7(B\
$Ag0i&mZm{(B")
(qdl "dia3" "\
$A`G(B")
(qdl "dian1" "\
$A5_5`5aa[q2(B")
(qdl "dian3" "\
$A5b5c5dX<uZ(B")
(qdl "dian4" "\
$A5e5f5g5h5i5j5k5l5m5n(B\
$AZg[cghndq0t!(B")
(qdl "diao1" "\
$A5o5p5q5r5suuvt(B")
(qdl "diao3" "\
$ADq(B")
(qdl "diao4" "\
$A5t5u5v5wnvo"(B")
(qdl "die1" "\
$A5x5yuZ(B")
(qdl "die2" "\
$A5z5{5|5}5~X}[l\&^i`)(B\
$Ak:p,qsu^vx(B")
(qdl "ding1" "\
$A6!6"6#6$Xjg`n.p[qttz(B")
(qdl "ding3" "\
$A6%6&tz(B")
(qdl "ding4" "\
$A6$6'6(6)`$kkmVnz(B")
(qdl "diu1" "\
$A6*n{(B")
(qdl "dong1" "\
$A6+6,_Ka4k1p4(B")
(qdl "dong3" "\
$A6-6.mO(B")
(qdl "dong4" "\
$A6/6061626364[ma<kKkX(B\
$AmO(B")
(qdl "dou1" "\
$A656<]zs{(B")
(qdl "dou3" "\
$A666768r=(B")
(qdl "dou4" "\
$A67696:6;6Aq<(B")
(qdl "du1" "\
$A6<6=`=(B")
(qdl "du2" "\
$A6>6?6@6A6YdBh|k9wGwr(B")
(qdl "du3" "\
$A6B6C6D6GsF(B")
(qdl "du4" "\
$A6E6F6G6H6I6J\6s<(B")
(qdl "duan1" "\
$A6K(B")
(qdl "duan3" "\
$A6L(B")
(qdl "duan4" "\
$A6M6N6O6Pi2lQs}(B")
(qdl "dui1" "\
$A6Q(B")
(qdl "dui4" "\
$A6R6S6T6Xm!m-mTof(B")
(qdl "dun1" "\
$A6U6V6W6Xmbof(B")
(qdl "dun3" "\
$Amou;(B")
(qdl "dun4" "\
$A6Y6Z6[6\6]cgl@m;(B")
(qdl "duo1" "\
$A6^6_6`_MqV(B")
(qdl "duo2" "\
$A6H6anlub(B")
(qdl "duo3" "\
$A6b6c6d_ag6(B")
(qdl "duo4" "\
$A6b6e6f6g6h6iMTcuh^(B")
(qdl "e1" "\
$A0"emf9(B")
(qdl "e2" "\
$A6j6k6l6m6n6o6pE6]-o0(B")
(qdl "e3" "\
$A6q(B")
(qdl "e4" "\
$A6q6r6s6t6u6vX,ZL[Q\C(B\
$A]`_@c5cUinkqoIpJr&vy(B")
(qdl "e5" "\
$A_@(B")
(qdl "ei2" "\
$AZ@(B")
(qdl "ei3" "\
$AZ@(B")
(qdl "ei4" "\
$AZ@(B")
(qdl "en1" "\
$A6w]l(B")
(qdl "en4" "\
$A^t(B")
(qdl "er2" "\
$A6x6yp9v\(B")
(qdl "er3" "\
$A6z6{6|6}eGgmno(B")
(qdl "er4" "\
$A6~7!Y&(B")
(qdl "fa1" "\
$A7"(B")
(qdl "fa2" "\
$A7#7$7%7&7'[R(B")
(qdl "fa3" "\
$A7(m@(B")
(qdl "fa4" "\
$A7"7)(B")
(qdl "fan1" "\
$A7*7+7,7-^,a&(B")
(qdl "fan2" "\
$A7.7/707172737:^,^@l\(B\
$Aul(B")
(qdl "fan3" "\
$A7475(B")
(qdl "fan4" "\
$A767778797:hsn2(B")
(qdl "fang1" "\
$A7;7<7=7AZzhJnU(B")
(qdl "fang2" "\
$A7;7>7?7@7AvP(B")
(qdl "fang3" "\
$A7B7C7Da]t3(B")
(qdl "fang4" "\
$A7E(B")
(qdl "fei1" "\
$A7F7G7H7Iezg3lircv-vn(B")
(qdl "fei2" "\
$A7JdGkh(B")
(qdl "fei3" "\
$A7F7K7Lc-i<l3rcsutd(B")
(qdl "fei4" "\
$A7M7N7O7P7Q\@atoPpr(B")
(qdl "fen1" "\
$A7R7S7T7U7V7Wgc(B")
(qdl "fen2" "\
$A7X7Y7Zh{ww(B")
(qdl "fen3" "\
$A7[(B")
(qdl "fen4" "\
$A7V7\7]7^7_7`YGe/vw(B")
(qdl "feng1" "\
$A7a7b7c7d7e7f7g7h7i[:(B\
$A]Wccm?(B")
(qdl "feng2" "\
$A7j7k7l(B")
(qdl "feng3" "\
$A7m_t(B")
(qdl "feng4" "\
$A7l7n7oY:]W(B")
(qdl "fo2" "\
$A7p(B")
(qdl "fou3" "\
$A7qs>(B")
(qdl "fu1" "\
$A7r7s7t7u_;o{touCuF(B")
(qdl "fu2" "\
$A7p7r7v7w7x7y7z7{7|7}(B\
$A7~8!8"8#8$8%YkYl[.\=(B\
$A\@\^\r]3]Ja%bveufZg&(B\
$Ag(hulpmImjn7o{r6r]rp(B")
(qdl "fu3" "\
$A8&8'8(8)8*8+8,8-8.8/(B\
$A88^Tdfmk(B")
(qdl "fu4" "\
$A7~808182838485868788(B\
$A898:8;8<8=8>8?8@fbjg(B\
$Ap%rsvVv{(B")
(qdl "fu5" "\
$A8@(B")
(qdl "ga1" "\
$A8B8l<P?'Y$j8(B")
(qdl "ga2" "\
$A8A8BT~fYnE(B")
(qdl "ga3" "\
$A8BfX(B")
(qdl "ga4" "\
$A^N(B")
(qdl "gai1" "\
$A8CZk[rj`(B")
(qdl "gai3" "\
$A8D(B")
(qdl "gai4" "\
$A8E8F8G8H=fX$j.(B")
(qdl "gan1" "\
$A8I8J8K8L8M8NG,[a\U^O(B\
$Acom7pat{(B")
(qdl "gan3" "\
$A8K8O8P8Q8R_&dwiO(B")
(qdl "gan4" "\
$A8I8SdFg$j:(B")
(qdl "gang1" "\
$A8T8U8V8W8X8Y8\?8n8(B")
(qdl "gang3" "\
$A8Z8[(B")
(qdl "gang4" "\
$A8V8\m0s`(B")
(qdl "gao1" "\
$A8]8^8_8`8a8bX:i@(B")
(qdl "gao3" "\
$A8c8d8e^;gIiBj=(B")
(qdl "gao4" "\
$A8`8fZ>[,o/(B")
(qdl "ge1" "\
$A8g8h8i8j8k8l8m8n8q?)(B\
$ARYXn[Yf|qK(B")
(qdl "ge2" "\
$A8i8l8o8p8q8r8s8tX*\*(B\
$A`Ck!kuoSr"w@(B")
(qdl "ge3" "\
$A8G8p8v8w:O[At4(B")
(qdl "ge4" "\
$A8u8v8wmQr4(B")
(qdl "gei3" "\
$A8x(B")
(qdl "gen1" "\
$A8y8z(B")
(qdl "gen2" "\
$A_g(B")
(qdl "gen3" "\
$At^(B")
(qdl "gen4" "\
$AX(]"t^(B")
(qdl "geng1" "\
$A8{8|8}8~bY(B")
(qdl "geng3" "\
$A9!9"9#>1_lg.va(B")
(qdl "geng4" "\
$A8|(B")
(qdl "gong1" "\
$A9$9%9&9'9(9)9*9+9,9-(B\
$A92:lkEr<v!(B")
(qdl "gong3" "\
$A9.9/90gn(B")
(qdl "gong4" "\
$A9)9192(B")
(qdl "gou1" "\
$A939495>dX~gCh[stw8(B")
(qdl "gou3" "\
$A9697a8h[sQ(B")
(qdl "gou4" "\
$A9498999:9;Z8e\fEjml0(B")
(qdl "gu1" "\
$A9<9=9>9?9@9A9B9C9G]T(B\
$A_Iiol1p3rAt~u}(B")
(qdl "gu2" "\
$A9G(B")
(qdl "gu3" "\
$A9D9E9F9G9H9I<VXEZ,ci(B\
$Ajtk{l1n-n9n\p@rAw=(B")
(qdl "gu4" "\
$A9@9J9K9L9MaDhtjvo@ps(B\
$Avq(B")
(qdl "gua1" "\
$A9N9O@(_IhikRp;(B")
(qdl "gua3" "\
$A9P9Q_I(B")
(qdl "gua4" "\
$A9R9SXTZ4(B")
(qdl "guai1" "\
$A9T^b(B")
(qdl "guai3" "\
$A9U(B")
(qdl "guai4" "\
$A9V(B")
(qdl "guan1" "\
$A9W9X9Y9Z9[BZYD]8qfw$(B")
(qdl "guan3" "\
$A9\9]]8(B")
(qdl "guan4" "\
$A9Z9[9^9_9`9a^hdJnBpY(B")
(qdl "guang1" "\
$A9b_[hfkW(B")
(qdl "guang3" "\
$A9can(B")
(qdl "guang4" "\
$A9dhf(B")
(qdl "gui1" "\
$A9e9f9g9h9i9j9k?~f#p'(B\
$AvY(B")
(qdl "gui3" "\
$A9l9m9n9oXPbQe3jPs~(B")
(qdl "gui4" "\
$A9p9q9r9s9tH2X[hmjAw,(B")
(qdl "gun3" "\
$A9u9vYrg5m^vg(B")
(qdl "gun4" "\
$A9w(B")
(qdl "guo1" "\
$A9x9y9}NP[v_CaFqxre(B")
(qdl "guo2" "\
$A9zYe^b`~k=(B")
(qdl "guo3" "\
$A9{9|b#i$rd(B")
(qdl "guo4" "\
$A9}(B")
(qdl "ha1" "\
$A9~n~(B")
(qdl "ha2" "\
$A8rO:(B")
(qdl "ha3" "\
$A9~(B")
(qdl "ha4" "\
$A9~(B")
(qdl "hai1" "\
$A:Y?H`K(B")
(qdl "hai2" "\
$A:!:";9(B")
(qdl "hai3" "\
$A:#k\u0(B")
(qdl "hai4" "\
$A:$:%:&:'(B")
(qdl "han1" "\
$A:(:)q|r@w}(B")
(qdl "han2" "\
$A:*:+:,:-:.:/:9ZujOlJ(B")
(qdl "han3" "\
$A:0:1c[(B")
(qdl "han4" "\
$A:2:3:4:5:6:7:8:9::]U(B\
$A^~e+r%(B")
(qdl "hang1" "\
$A:;(B")
(qdl "hang2" "\
$A:<:=?TPPg,gqq~(B")
(qdl "hang4" "\
$AOoPPcl(B")
(qdl "hao1" "\
$A]o^6`c(B")
(qdl "hao2" "\
$A:>:?:@:A:E:Q`Fe)r:(B")
(qdl "hao3" "\
$A:B:C(B")
(qdl "hao4" "\
$A8d:C:D:E:Fe0j;p)r+(B")
(qdl "he1" "\
$A:G:HZ-`@(B")
(qdl "he2" "\
$A:I:J:K:L:M:N:O:P:Q:R(B\
$A:S:T[@cXf|jBnAr"rBtg(B")
(qdl "he4" "\
$A:H:I:M:N:U:V:W:XOE[V(B")
(qdl "hei1" "\
$A:Y:Z`K(B")
(qdl "hen2" "\
$A:[(B")
(qdl "hen3" "\
$A:\:](B")
(qdl "hen4" "\
$A:^(B")
(qdl "heng1" "\
$A:_:`(B")
(qdl "heng2" "\
$A:a:b:cPP^?gqhl(B")
(qdl "heng4" "\
$A:a(B")
(qdl "hng5" "\
$A:_(B")
(qdl "hong1" "\
$A:d:e:fYj^0(B")
(qdl "hong2" "\
$A:g:h:i:j:k:lYd]&^.cH(B\
$Ac|(B")
(qdl "hong3" "\
$A:e(B")
(qdl "hong4" "\
$A:eZ'^.(B")
(qdl "hou2" "\
$A:m:n:opzsstWw?(B")
(qdl "hou3" "\
$A:p(B")
(qdl "hou4" "\
$A:n:q:r:s\)aaeKvW(B")
(qdl "hu1" "\
$A:t:u:v:}O7_|c1doiulC(B")
(qdl "hu2" "\
$A:K:M:w:x:y:z:{:|:}:~(B\
$A;!`qb)iNl2lNp@pIu-uz(B\
$Aw=(B")
(qdl "hu3" "\
$A;";#d0gz(B")
(qdl "hu4" "\
$A:};";$;%;&;'Y|a2bolf(B\
$Alhlop-pWsK(B")
(qdl "hua1" "\
$A;(;);*;/m9(B")
(qdl "hua2" "\
$A;);*;+;,;.;mfhn|(B")
(qdl "hua4" "\
$A;*;-;.;/;0hk(B")
(qdl "huai2" "\
$A;1;2;3;4uW(B")
(qdl "huai4" "\
$A;5(B")
(qdl "huai5" "\
$A;.(B")
(qdl "huan1" "\
$A;6b5(B")
(qdl "huan2" "\
$A;7;8;9[(]H`wd!e>gYoL(B\
$Aw_(B")
(qdl "huan3" "\
$A;:(B")
(qdl "huan4" "\
$A;;;<;=;>;?;@;A;B;C[<(B\
$A_'d=dqeUvi(B")
(qdl "huang1" "\
$A;D;EkA(B")
(qdl "huang2" "\
$A;F;G;H;I;J;K;L;MZrae(B\
$AdRdjeXh+q%s(srv|(B")
(qdl "huang3" "\
$A;N;O;P;Q(B")
(qdl "huang4" "\
$A;N(B")
(qdl "hui1" "\
$A6i;R;S;T;U;VZ6_TcDgu(B\
$AjMr3wb(B")
(qdl "hui2" "\
$A;2;W;X\nd'(B")
(qdl "hui3" "\
$A;Y;Zr3(B")
(qdl "hui4" "\
$A;[;\;];^;_;`;a;b;c;d(B\
$A;e;f@#\v^%_\`9d+egg@(B\
$Ahmm#s3(B")
(qdl "hun1" "\
$A;g;h;icT(B")
(qdl "hun2" "\
$A;j;k;lbFgu(B")
(qdl "hun4" "\
$A;lZ;dc(B")
(qdl "huo1" "\
$A;mXe_+oAqk(B")
(qdl "huo2" "\
$A:M;n(B")
(qdl "huo3" "\
$A;o;pb7nX(B")
(qdl "huo4" "\
$A:M;m;q;r;s;t;u;v^=`k(B\
$Aols6(B")
(qdl "ji1" "\
$A;w;x;y;z;{;|;};~<!<"(B\
$A<#<$<%<&<'<(<)<8FZFd(B\
$AFfX"X@X^[T\8_4_R_sel(B\
$Ag\gajejwl4m6n?ozsGuR(B")
(qdl "ji2" "\
$A8o<*<+<,<-<.</<0<1<2(B\
$A<3<4<5<6<9=eX=Y%Z5]p(B\
$A^*a'aUi.ijj+q$sE(B")
(qdl "ji3" "\
$A8o8x<7<8<9<:<C<M^aj*(B\
$Ar1wd(B")
(qdl "ji4" "\
$A<;<<<=<><?<@<A<B<C<D(B\
$A<E<F<G<H<I<J<K<L<MFk(B\
$AO5YJ\A\y_bd)fwjip"t_(B\
$AuUv+v]vjwY(B")
(qdl "jia1" "\
$A<N<O<P<Q<R<SGQP.Y$]g(B\
$Ad$eHgloXphsUtBuJ(B")
(qdl "jia2" "\
$A<P<T<U[#j)m"nrqJrL(B")
(qdl "jia3" "\
$A<V<W<X<Y=A=B=C=D=E=F(B\
$A=G=H=I=J=KXEY.^Xa5ah(B\
$AdPk8kNp(p}(B")
(qdl "jia4" "\
$A<Y<Z<[<\<]<^(B")
(qdl "jia5" "\
$A<R(B")
(qdl "jian1" "\
$A<_<`<a<b<c<d<e<f<g<h(B\
$A<i<j=%=&G3]Q]s^vdUgL(B\
$Aj'jypOvdw5(B")
(qdl "jian3" "\
$A<k<l<m<n<o<p<q<r<s<t(B\
$A<uZY`ne?e@hEj/mzo5qP(B\
$AsHteuB(B")
(qdl "jian4" "\
$A<`<d<v<w<x<y<z<{<|<}(B\
$A<~=!="=#=$=%=&='=(YT(B\
$AZIi%jpk&klo5u](B")
(qdl "jiang1" "\
$A=)=*=+=,=-=.\|gVmdtx(B")
(qdl "jiang3" "\
$A=/=0=1=2qp(B")
(qdl "jiang4" "\
$A:g=+=,=3=4=5G?d.g-jq(B\
$At](B")
(qdl "jiao1" "\
$A=6=7=8=9=:=;=<===>=?(B\
$A=LYU\4\zf/pTrTuSv^(B")
(qdl "jiao2" "\
$A=@=Ca=(B")
(qdl "jiao3" "\
$A=A=B=C=D=E=F=G=H=I=J(B\
$A=KY.^XahdPk8p((B")
(qdl "jiao4" "\
$A=@=L=M=N=O=P=Q>uP#`](B\
$Aa=ahu4(B")
(qdl "jie1" "\
$A=R=S=T=U=V=W=Z=a?,`.(B\
$A`5p\(B")
(qdl "jie2" "\
$A=X=Y=Z=[=\=]=^=_=`=a(B\
$AYJZ&Z5^Wf<f]hnmYr!tI(B\
$AvZ(B")
(qdl "jie3" "\
$A=b=c(B")
(qdl "jie4" "\
$A<[=b=d=e=f=g=h=i=j=k(B\
$A=lr;w:(B")
(qdl "jie5" "\
$A<R<[(B")
(qdl "jin1" "\
$A=m=n=o=p=q=r=s={qFqf(B")
(qdl "jin3" "\
$A=t=u=v=w>!Za]@bKb[h*(B\
$AiH(B")
(qdl "jin4" "\
$A=v=x=y=z={=|=}=~>!>"(B\
$A]#`df!gFjajn(B")
(qdl "jing1" "\
$A>#>$>%>&>'>(>)>*>+>,(B\
$A>-]<c~kfl:(B")
(qdl "jing3" "\
$A>.>/>0>1XYYSZec=kB(B")
(qdl "jing4" "\
$A>">->2>3>4>5>6>7>8>9(B\
$A>:>;b0eIerf:kVv&(B")
(qdl "jiong1" "\
$Alg(B")
(qdl "jiong3" "\
$A><>=eDjA(B")
(qdl "jiu1" "\
$A>>>?>@`1cNp/tqw](B")
(qdl "jiu3" "\
$A>A>B>C>D>E>F(B")
(qdl "jiu4" "\
$A>G>H>I>J>K>L>M>NYVhQ(B\
$AhjpU(B")
(qdl "ju1" "\
$A35>O>P>Q>R>S>T>]>b>c(B\
$AGR\Z^dh"i'o8qUtrvBw6(B")
(qdl "ju2" "\
$A=[>U>ViYo8(B")
(qdl "ju3" "\
$A9q>W>X>Y>Z\lh[i7uav4(B")
(qdl "ju4" "\
$A>Z>[>\>]>^>_>`>a>b>c(B\
$A>d>e>f>gYFZ*\Deaepi0(B\
$Ajxl+nRq@tru6vD(B")
(qdl "juan1" "\
$A>h>i>jH&d8nCoT(B")
(qdl "juan3" "\
$A>moC(B")
(qdl "juan4" "\
$A>k>l>m>n?!H&[2azhpvA(B")
(qdl "jue1" "\
$A>o`5`Y(B")
(qdl "jue2" "\
$A=@=E=G>p>q>r>s>t>u>v(B\
$A>w>xXJXcZ\[G^'`eaHb1(B\
$Af^gehviSl_ocuju{(B")
(qdl "jue3" "\
$Auj(B")
(qdl "jue4" "\
$A>s(B")
(qdl "jun1" "\
$A9j>y>z>{>|>}qds^we(B")
(qdl "jun4" "\
$A>z>~?!?"?#?$?%^\vA(B")
(qdl "ka1" "\
$A?&?'_G(B")
(qdl "ka3" "\
$A?(?)X{_GkL(B")
(qdl "kai1" "\
$A?*?+o4(B")
(qdl "kai3" "\
$A?,?-?.X\[n]\b}nxoG(B")
(qdl "kai4" "\
$Abi(B")
(qdl "kan1" "\
$A?/?0?1?4j,mh(B")
(qdl "kan3" "\
$A<w?2?3Y)](c[(B")
(qdl "kan4" "\
$A?4G6c[n+(B")
(qdl "kang1" "\
$A?5?6?7cJ(B")
(qdl "kang2" "\
$A?8(B")
(qdl "kang4" "\
$A?9?:?;XxcJnV(B")
(qdl "kao1" "\
$Aej(B")
(qdl "kao3" "\
$A?<?=?>h`(B")
(qdl "kao4" "\
$A??j{nm(B")
(qdl "ke1" "\
$A:G?@?A?B?C?D?E?F`>gf(B\
$Aipn'n]o}pbq=r$rrwA(B")
(qdl "ke2" "\
$A?G?Hr$(B")
(qdl "ke3" "\
$A?@?I?Ja3ip(B")
(qdl "ke4" "\
$A?I?K?L?M?N`>c!d[flg<(B\
$Ak4o>rB(B")
(qdl "ken3" "\
$A?O?P?Q?Rv8(B")
(qdl "ken4" "\
$AqL(B")
(qdl "keng1" "\
$A?S?To,(B")
(qdl "kong1" "\
$A?UYEaGsm(B")
(qdl "kong3" "\
$A?V?WYE(B")
(qdl "kong4" "\
$A?U?X(B")
(qdl "kou1" "\
$A?Y\Rmn(B")
(qdl "kou3" "\
$A?Z(B")
(qdl "kou4" "\
$A?[?\^"_5sX(B")
(qdl "ku1" "\
$A?]?^?_XZ\%w<(B")
(qdl "ku3" "\
$A?`(B")
(qdl "ku4" "\
$A?a?b?c`7g+(B")
(qdl "kua1" "\
$A?d(B")
(qdl "kua3" "\
$A?eY((B")
(qdl "kua4" "\
$A?f?g?h(B")
(qdl "kuai3" "\
$AXa(B")
(qdl "kuai4" "\
$A;a?i?j?k?l[&_`avd+kZ(B")
(qdl "kuan1" "\
$A?mwE(B")
(qdl "kuan3" "\
$A?n(B")
(qdl "kuang1" "\
$A?o?p?rZ2_Q(B")
(qdl "kuang2" "\
$A?qZ?(B")
(qdl "kuang3" "\
$A^E(B")
(qdl "kuang4" "\
$A?r?s?t?u?vZw[[f~j\(B")
(qdl "kui1" "\
$A?w?x?y?zc&(B")
(qdl "kui2" "\
$A?{?|?}X8YgZs^q`-eSjR(B\
$An%rq(B")
(qdl "kui3" "\
$A?~uM(B")
(qdl "kui4" "\
$A@!@"@#XQ]^`0c4qysq(B")
(qdl "kun1" "\
$A@$@%g{o?u+vowU(B")
(qdl "kun3" "\
$A@&c'cM(B")
(qdl "kun4" "\
$A@'(B")
(qdl "kuo4" "\
$A@(@)@*@+JJhirR(B")
(qdl "la1" "\
$A@,@-@.@2ee(B")
(qdl "la2" "\
$A@-@.j9mG(B")
(qdl "la3" "\
$A@-@.(B")
(qdl "la4" "\
$A@-@/@0@1BdX]px(B")
(qdl "la5" "\
$A@2@6(B")
(qdl "lai2" "\
$A@3@4aAabd5o*(B")
(qdl "lai4" "\
$A@5d~jcmyq.t%(B")
(qdl "lan2" "\
$A@6@7@8@9@:@;@<@=@>a0(B\
$Al5ogq\(B")
(qdl "lan3" "\
$A@?@@@A@Bdmi-n=(B")
(qdl "lan4" "\
$A@C@D(B")
(qdl "lang1" "\
$A`%(B")
(qdl "lang2" "\
$A@E@F@G@H@IcOo6o|rk(B")
(qdl "lang3" "\
$A@J(B")
(qdl "lang4" "\
$A@I@K]9]ucO(B")
(qdl "lao1" "\
$A@L(B")
(qdl "lao2" "\
$A@M@N_ka@o)plu2(B")
(qdl "lao3" "\
$A@O@P@QAJhann(B")
(qdl "lao4" "\
$A@R@S@TBdBg_kql(B")
(qdl "le1" "\
$A@_(B")
(qdl "le4" "\
$A@U@VXl_7cnw&(B")
(qdl "le5" "\
$AAK(B")
(qdl "lei1" "\
$A@U@^(B")
(qdl "lei2" "\
$A@W@X@[@^YzfPgPi[(B")
(qdl "lei3" "\
$A@Y@Z@[@\@]Z3qg(B")
(qdl "lei4" "\
$A@[@^@_@`@au*(B")
(qdl "lei5" "\
$A`O(B")
(qdl "leng1" "\
$A@b(B")
(qdl "leng2" "\
$A@b@c\((B")
(qdl "leng3" "\
$A@d(B")
(qdl "leng4" "\
$Ac6(B")
(qdl "li1" "\
$AA((B")
(qdl "li2" "\
$A@e@f@g@h@i@j@k@l@vA'(B\
$A]q^<`,fKfjgJn>p?r[s;(B\
$Avbws(B")
(qdl "li3" "\
$A@m@n@o@p@qA(Y5c&e"eN(B\
$Af2o.s;u7w/(B")
(qdl "li4" "\
$A@r@s@t@u@v@w@x@y@z@{(B\
$A@|@}@~A!A"A#A$A%A&X*(B\
$AY3[*[^\B]0^:_?`&a{d`(B\
$Ah@h]ivlemBn:p]p_rCsR(B\
$AsvtOuHv((B")
(qdl "li5" "\
$AA'A((B")
(qdl "lia3" "\
$AA)(B")
(qdl "lian2" "\
$AA*A+A,A-A.A/A0A1^Fe%(B\
$Al!qMs9vc(B")
(qdl "lian3" "\
$AA2A3]|gvqO(B")
(qdl "lian4" "\
$AA4A5A6A7dri,ig(B")
(qdl "liang2" "\
$AA8A9A:A;A<A?\.]9i#uT(B")
(qdl "liang3" "\
$AA)A=wK(B")
(qdl "liang4" "\
$AA9A>A?A@AAABuTv&(B")
(qdl "liao1" "\
$AACAL(B")
(qdl "liao2" "\
$AACADAEAFAGAHAIAL`Zb2(B\
$Ae<gTpS(B")
(qdl "liao3" "\
$AAGAJAK^$nI(B")
(qdl "liao4" "\
$AACAKALAMANAO^MnI(B")
(qdl "lie1" "\
$A_V(B")
(qdl "lie3" "\
$AAQ_V(B")
(qdl "lie4" "\
$AAPAQARASATY}[x^fd#ts(B\
$Auqw`(B")
(qdl "lie5" "\
$A_V(B")
(qdl "lin2" "\
$AAUAVAWAXAYAZA[A\CX_x(B\
$AaWe`j%n,tTwk(B")
(qdl "lin3" "\
$AA]b^cAi](B")
(qdl "lin4" "\
$AA\A^A_]~l"uo(B")
(qdl "ling1" "\
$AA`(B")
(qdl "ling2" "\
$A@bAaAbAcAdAeAfAgAhAi(B\
$AAjAn[9\_`rcvg1hZhyj2(B\
$AqvrHtavl(B")
(qdl "ling3" "\
$AAkAlAn(B")
(qdl "ling4" "\
$AAmAn_J(B")
(qdl "liu1" "\
$AAolV(B")
(qdl "liu2" "\
$AApAqArAsAtAuAvAwd/e^(B\
$Afrl<oVvL(B")
(qdl "liu3" "\
$AAxg8o3(B")
(qdl "liu4" "\
$AAoAsAyB5B=e^oVpR(B")
(qdl "lo5" "\
$A?)(B")
(qdl "long1" "\
$AB!(B")
(qdl "long2" "\
$AAzA{A|A}A~B!\WcqgghP(B\
$AkJmCq*(B")
(qdl "long3" "\
$AA}B"B#B$[b(B")
(qdl "long4" "\
$AE*(B")
(qdl "lou1" "\
$AB'(B")
(qdl "lou2" "\
$AB%B&YM]d`6qorwwC(B")
(qdl "lou3" "\
$AB'B(aP(B")
(qdl "lou4" "\
$AB)B*B6oNp|(B")
(qdl "lou5" "\
$A`6(B")
(qdl "lu1" "\
$A_#``(B")
(qdl "lu2" "\
$AB+B,B-B.B/[dcrhSiqkM(B\
$Ap5t5vT(B")
(qdl "lu3" "\
$AB+B0B1B2B3iVoe(B")
(qdl "lu4" "\
$AAyB4B5B6B7B8B9B:B;B<(B\
$AB=B>BL^$dKdueVh4i{j$(B\
$ApXs|(B")
(qdl "lu5" "\
$Aiqk*(B")
(qdl "lu:3" "\
$AB@BABBBCBDBEBFYM^[kv(B\
$AoyqZ(B")
(qdl "lu:4" "\
$ABGBHBIBJBKBL(B")
(qdl "lu:5" "\
$AB?cLi5(B")
(qdl "luan2" "\
$ABMBNBOBPYuf.hop=vG(B")
(qdl "luan3" "\
$ABQ(B")
(qdl "luan4" "\
$ABR(B")
(qdl "lue:3" "\
$ABS(B")
(qdl "lue:4" "\
$ABSBTo2(B")
(qdl "lun1" "\
$ABU(B")
(qdl "lun2" "\
$ABUBVBWBXBYBZB[`p(B")
(qdl "lun4" "\
$AB[(B")
(qdl "luo1" "\
$AB^Bd^[(B")
(qdl "luo2" "\
$AB\B]B^B_B`BaBbb$i!ka(B\
$Ao](B")
(qdl "luo3" "\
$ABcY@Yyq'(B")
(qdl "luo4" "\
$A?)@SBdBeBfBg\}^{cxdp(B\
$AgsmQvC(B")
(qdl "luo5" "\
$AB^(B")
(qdl "m2" "\
$A_<(B")
(qdl "ma1" "\
$ABhBiBlD&D(fV(B")
(qdl "ma2" "\
$ABiBps!(B")
(qdl "ma3" "\
$ABjBkBlBmBpao(B")
(qdl "ma4" "\
$ABlBn_ih?(B")
(qdl "ma5" "\
$ABoBpC4(B")
(qdl "mai2" "\
$ABqv2(B")
(qdl "mai3" "\
$ABr]$(B")
(qdl "mai4" "\
$ABsBtBuBv[=(B")
(qdl "man1" "\
$Ar)(B")
(qdl "man2" "\
$ABqBwBxByB{C!w)w4(B")
(qdl "man3" "\
$ABzr}(B")
(qdl "man4" "\
$AB{B|B}B~C!\,a#gOlWo\(B")
(qdl "mang2" "\
$AC"C#C$C%C&ZxmK(B")
(qdl "mang3" "\
$AC'd]r~(B")
(qdl "mao1" "\
$AC((B")
(qdl "mao2" "\
$AC(C)C*C+C,\bjsl8rzs1(B\
$AwV(B")
(qdl "mao3" "\
$AC-C.a9cwjD(B")
(qdl "mao4" "\
$AC/C0C1C2C3Ysh#k#m.n&(B")
(qdl "me5" "\
$AC4wa(B")
(qdl "mei2" "\
$AC5C6C7C8C9C:C;C<C=CS(B\
$A].aRb-dXi9oQpL(B")
(qdl "mei3" "\
$AC>C?C@d<(B")
(qdl "mei4" "\
$ACACBCCCDCUqGwH(B")
(qdl "men1" "\
$ACF(B")
(qdl "men2" "\
$ACE^QnM(B")
(qdl "men4" "\
$ACFlKm/(B")
(qdl "men5" "\
$ACG(B")
(qdl "meng1" "\
$ACI(B")
(qdl "meng2" "\
$AC%CHCICJCK]y^+k|mfr5(B\
$At?(B")
(qdl "meng3" "\
$ACICLCM[BcBrls7t;(B")
(qdl "meng4" "\
$ACNCO(B")
(qdl "mi1" "\
$ACP_d(B")
(qdl "mi2" "\
$ACQCRCSCTCUCV^Bb(lrwc(B\
$Awg(B")
(qdl "mi3" "\
$ACPCRCWXBetk_tM(B")
(qdl "mi4" "\
$ACXCYCZC[C\C]ZW`Wche5(B\
$Ati(B")
(qdl "mian2" "\
$AC^C_C`(B")
(qdl "mian3" "\
$ACaCbCcCdCecfdEdOkomm(B\
$Av<(B")
(qdl "mian4" "\
$ACf(B")
(qdl "miao1" "\
$A_w(B")
(qdl "miao2" "\
$ACgChCipE(B")
(qdl "miao3" "\
$ACjCkClecg?hBm5mp(B")
(qdl "miao4" "\
$ACmCngQ(B")
(qdl "mie1" "\
$AX?_c(B")
(qdl "mie4" "\
$ACoCps:sz(B")
(qdl "min2" "\
$ACq\ea:gEgdgk(B")
(qdl "min3" "\
$ACrCsCtCuCvcIc}m*v<w*(B")
(qdl "ming2" "\
$ACKCwCxCyCzC{Z$\xdijT(B\
$An((B")
(qdl "ming3" "\
$Au$(B")
(qdl "ming4" "\
$AC|(B")
(qdl "miu4" "\
$AC}gQ(B")
(qdl "mo1" "\
$AC~(B")
(qdl "mo2" "\
$AC~D!D"D#D$D%D&D'N^ZS(B\
$AbIfFwa(B")
(qdl "mo3" "\
$AD((B")
(qdl "mo4" "\
$A:Q:YBvC0C;D%D(D)D*D+(B\
$AD,D-D.D/D0Mr\T]kiboR(B\
$Aowq"qruvux(B")
(qdl "mou1" "\
$A_h(B")
(qdl "mou2" "\
$AD1D2Y0gQmxrVvJ(B")
(qdl "mou3" "\
$AD3(B")
(qdl "mu2" "\
$AD#k$(B")
(qdl "mu3" "\
$A@QD4D5D6D7D8(B")
(qdl "mu4" "\
$AD2D9D:D;D<D=D>D?D@DA(B\
$ADBXo[i\Ycenb(B")
(qdl "n2" "\
$A_m`E(B")
(qdl "n3" "\
$A_m`E(B")
(qdl "n4" "\
$A`E(B")
(qdl "na1" "\
$ADGDO(B")
(qdl "na2" "\
$ADCoU(B")
(qdl "na3" "\
$ADDDG(B")
(qdl "na4" "\
$ADEDFDGDHDIDX^`kGqD(B")
(qdl "na5" "\
$ADDDE(B")
(qdl "nai3" "\
$ADDDJDKDL\5(B")
(qdl "nai4" "\
$ADMDNX>Y&]AhM(B")
(qdl "nan1" "\
$A`n`o(B")
(qdl "nan2" "\
$ADODPDQ`+i*(B")
(qdl "nan3" "\
$Aknrotv(B")
(qdl "nan4" "\
$ADQ(B")
(qdl "nang1" "\
$ADR`l(B")
(qdl "nang2" "\
$ADRbN(B")
(qdl "nang3" "\
$A_-bNjY(B")
(qdl "nao1" "\
$AX+(B")
(qdl "nao2" "\
$ADSE,_Nb.mPnsrM(B")
(qdl "nao3" "\
$ADTDU[qh'(B")
(qdl "nao4" "\
$ADVDW(B")
(qdl "ne2" "\
$ADD(B")
(qdl "ne4" "\
$ADEDXZ+(B")
(qdl "ne5" "\
$ADEDX(B")
(qdl "nei3" "\
$ADDDY(B")
(qdl "nei4" "\
$ADGDZ(B")
(qdl "nen4" "\
$AD[m%(B")
(qdl "neng2" "\
$AD\(B")
(qdl "ng2" "\
$A_m`E(B")
(qdl "ng3" "\
$A_m`E(B")
(qdl "ng4" "\
$A`E(B")
(qdl "ni1" "\
$AD](B")
(qdl "ni2" "\
$ADXD^D_D`Da[hb%bunjvr(B")
(qdl "ni3" "\
$ADbDcl;lr(B")
(qdl "ni4" "\
$AD`DdDeDfDgDrY#jGm+m~(B")
(qdl "nian1" "\
$ADhDi(B")
(qdl "nian2" "\
$ADjU3p$vSvs(B")
(qdl "nian3" "\
$ADkDlDmi}(B")
(qdl "nian4" "\
$ADnDpX%[~(B")
(qdl "niang2" "\
$ADoDp(B")
(qdl "niang4" "\
$ADp(B")
(qdl "niao3" "\
$ADq\`fUtA(B")
(qdl "niao4" "\
$ADgDrke(B")
(qdl "nie1" "\
$ADs(B")
(qdl "nie4" "\
$ADtDuDvDwDxDyX?Zm^A`?(B\
$Ar(t+uf(B")
(qdl "nin2" "\
$ADzm%(B")
(qdl "ning2" "\
$AD{D|D}D~E!\Q_Le8qw(B")
(qdl "ning3" "\
$AE!(B")
(qdl "ning4" "\
$AD~E!E"Xz(B")
(qdl "niu1" "\
$Af$(B")
(qdl "niu2" "\
$AE#(B")
(qdl "niu3" "\
$AE$E%E&apbn(B")
(qdl "niu4" "\
$A^V(B")
(qdl "nong2" "\
$AE'E(E)Y/_f(B")
(qdl "nong4" "\
$AE*(B")
(qdl "nou4" "\
$Aqq(B")
(qdl "nu2" "\
$AE+f[fe(B")
(qdl "nu3" "\
$AE,esf@(B")
(qdl "nu4" "\
$AE-(B")
(qdl "nu:3" "\
$AE.nO(B")
(qdl "nu:4" "\
$Am$t,(B")
(qdl "nuan3" "\
$AE/(B")
(qdl "nue:4" "\
$AE0E1(B")
(qdl "nuo2" "\
$ADHE2YP(B")
(qdl "nuo4" "\
$AE3E4E5^y_vo;(B")
(qdl "o1" "\
$A`8`^(B")
(qdl "o2" "\
$AE6(B")
(qdl "o4" "\
$AE6(B")
(qdl "ou1" "\
$AE7E8E9E=GxZ)j1(B")
(qdl "ou3" "\
$AE:E;E<qn(B")
(qdl "ou4" "\
$AE;E=bf(B")
(qdl "pa1" "\
$A0GE>E?EI]b(B")
(qdl "pa2" "\
$A0G0RE@hKnYsa(B")
(qdl "pa4" "\
$AEAEB(B")
(qdl "pa5" "\
$AEC(B")
(qdl "pai1" "\
$AED(B")
(qdl "pai2" "\
$AEEEFEGY=(B")
(qdl "pai3" "\
$AEEFH(B")
(qdl "pai4" "\
$AEHEI]e__(B")
(qdl "pan1" "\
$A0b7,EJEK(B")
(qdl "pan2" "\
$A0cELEMEVc]s4ug(B")
(qdl "pan4" "\
$AENEOEPEQ^UczqHqa(B")
(qdl "pang1" "\
$A0rERdh(B")
(qdl "pang2" "\
$A0r0uESETa]eLs&(B")
(qdl "pang3" "\
$AEU(B")
(qdl "pang4" "\
$AEV(B")
(qdl "pao1" "\
$AEWEZE]kc(B")
(qdl "pao2" "\
$AEXEYEZE[E\^KasbR(B")
(qdl "pao3" "\
$AE\(B")
(qdl "pao4" "\
$AEZE]pe(B")
(qdl "pei1" "\
$AE^E_u,(B")
(qdl "pei2" "\
$AE`EaEbEcoB(B")
(qdl "pei4" "\
$AEdEeEf`N`zl7v,(B")
(qdl "pen1" "\
$AEg(B")
(qdl "pen2" "\
$AEhdT(B")
(qdl "pen4" "\
$AEg(B")
(qdl "peng1" "\
$AEiEjEkEl`Xbq(B")
(qdl "peng2" "\
$AElEmEnEoEpEqErEsEt\!(B\
$As2(B")
(qdl "peng3" "\
$AEu(B")
(qdl "peng4" "\
$AEv(B")
(qdl "pi1" "\
$A1Y;5EwExEyEzE{E|X'Z|(B\
$A`hg"nk(B")
(qdl "pi2" "\
$AE}E~F!F"F#F$ZiZp[/[}(B\
$A\1\EhAn<nkqTr7rguy(B")
(qdl "pi3" "\
$A7qE|F%F&Xr[\_(_AbOq1(B\
$Aqb(B")
(qdl "pi4" "\
$A1YF'F(F)dDfGj6n"(B")
(qdl "pian1" "\
$A1bF*F+F,jztf(B")
(qdl "pian2" "\
$A1cfigBk]ud(B")
(qdl "pian3" "\
$AZR(B")
(qdl "pian4" "\
$AF,F-(B")
(qdl "piao1" "\
$AF.F/XbgNs*(B")
(qdl "piao2" "\
$AF0FSfN(B")
(qdl "piao3" "\
$AF/]3gNihn)(B")
(qdl "piao4" "\
$AF/F1`Qft(B")
(qdl "pie1" "\
$AF2F3k-(B")
(qdl "pie3" "\
$AF2X/\V(B")
(qdl "pin1" "\
$AF4^Uf0(B")
(qdl "pin2" "\
$AF5F6F;fIr-(B")
(qdl "pin3" "\
$AF7i/(B")
(qdl "pin4" "\
$AF8jr(B")
(qdl "ping1" "\
$AF9Y7f3(B")
(qdl "ping2" "\
$A7kF:F;F<F=F>F?F@FAhR(B\
$AvR(B")
(qdl "po1" "\
$A24FBFCFDFSZicxj7nG(B")
(qdl "po2" "\
$A71FE[6p+(B")
(qdl "po3" "\
$AXOn^sM(B")
(qdl "po4" "\
$AFFFGFHFIFSgj(B")
(qdl "pou1" "\
$AFJ(B")
(qdl "pou2" "\
$AYv^e(B")
(qdl "pou3" "\
$A^e(B")
(qdl "pu1" "\
$AFKFLFM`[(B")
(qdl "pu2" "\
$A8,FMFNFOFPFQYie'h1od(B")
(qdl "pu3" "\
$A1$FRFSFTFUFVFWd_k+oh(B\
$Auk(B")
(qdl "pu4" "\
$A1$1)FLFXFY(B")
(qdl "qi1" "\
$A<)FZF[F\F]F^F_F`FaFb(B\
$AFc]B`RhgiJl%uh(B")
(qdl "qi2" "\
$AFdFeFfFgFhFhFiFjFkFl(B\
$AFmFnFoXAY9[_\N\y]=^-(B\
$Aa*d?fkgwgyjHlwq}rSr`(B\
$Atkw"wh(B")
(qdl "qi3" "\
$A;|FpFqFrFsFt\;a(g2h=(B\
$Atl(B")
(qdl "qi4" "\
$AF^FkFuFvFwFxFyFzF{F|(B\
$AF}X=]]c`m,mS(B")
(qdl "qia1" "\
$AF~Y$]VqJ(B")
(qdl "qia3" "\
$A?((B")
(qdl "qia4" "\
$AG!G"wD(B")
(qdl "qian1" "\
$AG#G$G%G&G'G(G)G*G+Y](B\
$AZd\7a)c%e9e:e=m)(B")
(qdl "qian2" "\
$AG,G-G.G/G0G1]!^gjynT(B\
$Ar/siw\(B")
(qdl "qian3" "\
$AG2G3G4gWkI(B")
(qdl "qian4" "\
$AG5G6G7G8OKY;\M\gc;h}(B")
(qdl "qiang1" "\
$A=+G9G:G;G<G@c^j(o:oO(B\
$Aojr^uD(B")
(qdl "qiang2" "\
$AG=G>G?fMiI(B")
(qdl "qiang3" "\
$AG?G@ojq_tG(B")
(qdl "qiang4" "\
$AG:j(lAuD(B")
(qdl "qiao1" "\
$AGAGBGCGDH8XdgXmMuN(B")
(qdl "qiao2" "\
$A=6GEGFGGGHGLZ[\qa=c>(B\
$AiTw3(B")
(qdl "qiao3" "\
$AGDGIH8c8(B")
(qdl "qiao4" "\
$A?GGJGKGLGMGNGOZ=Z[(B")
(qdl "qie1" "\
$AGP(B")
(qdl "qie2" "\
$AGQY$(B")
(qdl "qie3" "\
$AGR(B")
(qdl "qie4" "\
$AFvGPGSGT['c+c;f*j|oF(B\
$Asftr(B")
(qdl "qin1" "\
$AGUGVGWt@(B")
(qdl "qin2" "\
$AGXGYGZG[G\G]\K`:`_b[(B\
$AdZiUo7qfq{r{(B")
(qdl "qin3" "\
$AG^(B")
(qdl "qin4" "\
$AG_^l_D(B")
(qdl "qing1" "\
$AG`GaGbGcGdGe`ur_vk(B")
(qdl "qing2" "\
$AGfGgGhGiiQwt(B")
(qdl "qing3" "\
$AGjGk\\v%(B")
(qdl "qing4" "\
$AGWGlm`s@sdtl(B")
(qdl "qiong2" "\
$AGmGnZv\dq7rKsLu<vF(B")
(qdl "qiu1" "\
$A9jGoGpGqdPi1rGvz(B")
(qdl "qiu2" "\
$A3pGrGsGtGuGvY4[OaleO(B\
$AeYjdr0rxtCw|(B")
(qdl "qiu3" "\
$At\(B")
(qdl "qu1" "\
$AGwGxGyGzG{G|G}Z0a+jo(B\
$AlnrPtpwq(B")
(qdl "qu2" "\
$AG~[>^!^>aih3k,kTmap6(B\
$Aq3s=vD(B")
(qdl "qu3" "\
$AGzH!H"H#\D(B")
(qdl "qu4" "\
$AH$H%cVjo(B")
(qdl "qu5" "\
$APg(B")
(qdl "quan1" "\
$AH&c*(B")
(qdl "quan2" "\
$AH'H(H)H*H+H,H-Z9\uiz(B\
$An}ris\w\(B")
(qdl "quan3" "\
$AH.g9n0(B")
(qdl "quan4" "\
$AH/H0(B")
(qdl "que1" "\
$AH1H2cZ(B")
(qdl "que2" "\
$AH3(B")
(qdl "que4" "\
$AH4H5H6H7H8cWcZm((B")
(qdl "qun1" "\
$AeR(B")
(qdl "qun2" "\
$AH9H:we(B")
(qdl "ran2" "\
$AH;H<rEwW(B")
(qdl "ran3" "\
$AH=H>\[(B")
(qdl "rang1" "\
$AHB(B")
(qdl "rang2" "\
$AH?l|p&(B")
(qdl "rang3" "\
$AH@HAHBl|(B")
(qdl "rang4" "\
$AHC(B")
(qdl "rao2" "\
$AHD\if,hc(B")
(qdl "rao3" "\
$AHEHFf,(B")
(qdl "rao4" "\
$AHF(B")
(qdl "re3" "\
$AHGHt_v(B")
(qdl "re4" "\
$AHH(B")
(qdl "ren2" "\
$AHIHJHKHN(B")
(qdl "ren3" "\
$AHL\so~(B")
(qdl "ren4" "\
$AHMHNHOHPHQHRXp]Xb?im(B\
$AqE(B")
(qdl "reng1" "\
$AHS(B")
(qdl "reng2" "\
$AHT(B")
(qdl "ri4" "\
$AHU(B")
(qdl "rong2" "\
$AHVHWHXHYHZH[H\H]H^aI(B\
$AauiEk@rn(B")
(qdl "rong3" "\
$AH_(B")
(qdl "rou2" "\
$AH`Hat[uew7(B")
(qdl "rou4" "\
$AHb(B")
(qdl "ru2" "\
$AHcHdHeHfHg^8`ie&o(q`(B\
$Ar,(B")
(qdl "ru3" "\
$AHhHiHj(B")
(qdl "ru4" "\
$AHkHl]jd2dagH(B")
(qdl "ruan3" "\
$AHmHnkC(B")
(qdl "rui2" "\
$A^((B")
(qdl "rui3" "\
$AHo(B")
(qdl "rui4" "\
$AHpHq\GhDn#r8(B")
(qdl "run4" "\
$AHrHs(B")
(qdl "ruo4" "\
$AHtHuY<sh(B")
(qdl "sa1" "\
$AHvXmj}(B")
(qdl "sa3" "\
$AHvHw(B")
(qdl "sa4" "\
$AHxX&k[l*(B")
(qdl "sai1" "\
$AHyHzH{K<`g(B")
(qdl "sai4" "\
$AH{H|(B")
(qdl "san1" "\
$AH}H~k'(B")
(qdl "san3" "\
$AI!I"bLtVv1(B")
(qdl "san4" "\
$AI"(B")
(qdl "sang1" "\
$AI#I%(B")
(qdl "sang3" "\
$AI$^zm_r*(B")
(qdl "sang4" "\
$AI%(B")
(qdl "sao1" "\
$AI&I'gRgXk}v~(B")
(qdl "sao3" "\
$AI(I)(B")
(qdl "sao4" "\
$AI(IR\#k}p~(B")
(qdl "se4" "\
$AH{I*I+I,XDo$p#(B")
(qdl "sen1" "\
$AI-(B")
(qdl "seng1" "\
$AI.(B")
(qdl "sha1" "\
$AI/I0I1I2I3I4I7I<j}o!(B\
$ApptDvh(B")
(qdl "sha3" "\
$AI5(B")
(qdl "sha4" "\
$AI3I6I7OC_~`Dl&v.(B")
(qdl "shai1" "\
$AI8u'(B")
(qdl "shai3" "\
$AI+(B")
(qdl "shai4" "\
$AI9(B")
(qdl "shan1" "\
$AI:I;I<I=I>I?I@IHU$[o(B\
$A\Odzf)k~nLt.uGwT(B")
(qdl "shan3" "\
$A2t5'IAIB(B")
(qdl "shan4" "\
$A5%5'I;ICIDIEIFIGIHII(B\
$AX_Z([7fSfslxnLp^s5w-(B")
(qdl "shang1" "\
$AIJIKILL@idlXu|(B")
(qdl "shang3" "\
$AIMINIO[p(B")
(qdl "shang4" "\
$AIOIPg4(B")
(qdl "shang5" "\
$AIQ(B")
(qdl "shao1" "\
$AGJIRISITIUrYsbt9(B")
(qdl "shao2" "\
$AIVIWIX\fh<(B")
(qdl "shao3" "\
$AIY(B")
(qdl "shao4" "\
$AISITIYIZI[I\UY[?d{(B")
(qdl "she1" "\
$AI]I^b&n4(B")
(qdl "she2" "\
$AI_I`U[Y\(B")
(qdl "she3" "\
$AIa(B")
(qdl "she4" "\
$AIaIbIcIdIeIfIgIhXGd\(B\
$Al(wj(B")
(qdl "shei2" "\
$AK-(B")
(qdl "shen1" "\
$A2NIiIjIkIlImInIoIpZ7(B\
$A]7tV(B")
(qdl "shen2" "\
$AIqIuJ2(B")
(qdl "shen3" "\
$AIrIsItZE_SdIor(B")
(qdl "shen4" "\
$AIuIvIwIx]Xi)kOrW(B")
(qdl "sheng1" "\
$AIyIzI{I|I}J$sO(B")
(qdl "sheng2" "\
$AI~dE(B")
(qdl "sheng3" "\
$AJ!mr(B")
(qdl "sheng4" "\
$A3KJ"J#J$J%aSjI(B")
(qdl "shi1" "\
$AJ&J'J(J)J*J+J,J-Pj]i(B\
$Au'vu(B")
(qdl "shi2" "\
$AJ.J/J0J1J2J3J4J5J6[u(B\
$A]*lBve(B")
(qdl "shi3" "\
$AJ7J8J9J:J;J<u9(B")
(qdl "shi4" "\
$AJ=J>J?J@JAJBJCJDJEJF(B\
$AJGJHJIJJJKJLJMJNJOJP(B\
$AJQJRJSJTKFVEZV]*_1ix(B\
$Aj[nfs'sBs_(B")
(qdl "shi5" "\
$A3WV3(B")
(qdl "shou1" "\
$AJU(B")
(qdl "shou2" "\
$AJl(B")
(qdl "shou3" "\
$AJVJWJXt<(B")
(qdl "shou4" "\
$AJYJZJ[J\J]J^awg7(B")
(qdl "shu1" "\
$AJ_J`JaJbJcJdJeJfJgJh(B\
$AJiY?]D^sf-g#k(l/qb(B")
(qdl "shu2" "\
$AJjJkJl[Sox(B")
(qdl "shu3" "\
$AJmJnJoJpJqJrJsJtJ}(B")
(qdl "shu4" "\
$AJuJvJwJxJyJzJ{J|J}J~(B\
$AK!SaX-cpdxkr(B")
(qdl "shua1" "\
$AK"`'(B")
(qdl "shua3" "\
$AK#(B")
(qdl "shua4" "\
$AK"(B")
(qdl "shuai1" "\
$AK$K%(B")
(qdl "shuai3" "\
$AK&(B")
(qdl "shuai4" "\
$ABJK's0(B")
(qdl "shuan1" "\
$AK(K)cE(B")
(qdl "shuan4" "\
$AdL(B")
(qdl "shuang1" "\
$AK*K+cqfW(B")
(qdl "shuang3" "\
$AK,(B")
(qdl "shui2" "\
$AK-(B")
(qdl "shui3" "\
$AK.(B")
(qdl "shui4" "\
$AK/K0K5(B")
(qdl "shun3" "\
$AK1(B")
(qdl "shun4" "\
$AK2K3K4(B")
(qdl "shuo1" "\
$AK5(B")
(qdl "shuo4" "\
$AJ}K6K7K8]t^weyiCne(B")
(qdl "si1" "\
$AK9K:K;K<K=K>K?XK[L_P(B\
$AdygAoHp8rO(B")
(qdl "si3" "\
$AK@(B")
(qdl "si4" "\
$AJ3KAKBKCKDKEKFKGKHY9(B\
$AYncactf&falkqjsS(B")
(qdl "si5" "\
$A2^(B")
(qdl "song1" "\
$AKIZ!]?aBaTbldA(B")
(qdl "song3" "\
$AKJKKc$q5(B")
(qdl "song4" "\
$AKLKMKNKOKP(B")
(qdl "sou1" "\
$AKQKR`2bHdQl,oKrt(B")
(qdl "sou3" "\
$AKS[E^4`Un$(B")
(qdl "sou4" "\
$AKSKT(B")
(qdl "su1" "\
$AKUKVvU(B")
(qdl "su2" "\
$AKW(B")
(qdl "su4" "\
$AKXKYKZK[K\K]K^K_K`Ku(B\
$AYmZU]x`<c:d3syv"(B")
(qdl "suan1" "\
$AKab!(B")
(qdl "suan4" "\
$AKbKc(B")
(qdl "sui1" "\
$ADrKd]4e!mun!(B")
(qdl "sui2" "\
$AKeKfKgKl(B")
(qdl "sui3" "\
$AKh(B")
(qdl "sui4" "\
$AKiKjKkKlKmKnZGedl](B")
(qdl "sun1" "\
$AKo]%axb8(B")
(qdl "sun3" "\
$AKpKqi>v@(B")
(qdl "suo1" "\
$AI/KrKsKtKu`B`Jf6hxj}(B\
$Am|tH(B")
(qdl "suo3" "\
$AKvKwKxKy_o(B")
(qdl "ta1" "\
$AKzK{K|K}L$dbe]nhuA(B")
(qdl "ta3" "\
$AK~L!w#(B")
(qdl "ta4" "\
$AL"L#L$MX`*cKdpi=m3(B")
(qdl "tai1" "\
$AL%L&L((B")
(qdl "tai2" "\
$AL&L'L(["^7fflFuLvX(B")
(qdl "tai3" "\
$A_>(B")
(qdl "tai4" "\
$AL)L*L+L,L-kDnQ(B")
(qdl "tan1" "\
$AL.L/L0L1L2(B")
(qdl "tan2" "\
$A5/L3L4L5L6L7L8[0e#j<(B\
$AoDobq{(B")
(qdl "tan3" "\
$AL9L:L;l~nc(B")
(qdl "tan4" "\
$AL<L=L>L?(B")
(qdl "tang1" "\
$AL@LKo&o[qmtJ(B")
(qdl "tang2" "\
$ALALBLCLDLELFLGb<dgh)(B\
$AiLo[s%s+u1(B")
(qdl "tang3" "\
$ALHLILJYN`{(B")
(qdl "tang4" "\
$ALKLL(B")
(qdl "tao1" "\
$ALMLNLOLP_6h:lbwR(B")
(qdl "tao2" "\
$ALQLRLSLTLUX;_{d,(B")
(qdl "tao3" "\
$ALV(B")
(qdl "tao4" "\
$ALW(B")
(qdl "te4" "\
$ALX_/l}m+o+(B")
(qdl "tei1" "\
$A_/(B")
(qdl "teng2" "\
$ALYLZL[L\kx(B")
(qdl "ti1" "\
$AL]L^L_L`Le(B")
(qdl "ti2" "\
$ALaLbLcLd\hg0g>pCu.(B")
(qdl "ti3" "\
$ALe(B")
(qdl "ti4" "\
$ALfLgLhLiLjLkYCc)eQg0(B\
$AqS(B")
(qdl "tian1" "\
$ALlLm(B")
(qdl "tian2" "\
$A5hLnLoLpLqcYn1nd(B")
(qdl "tian3" "\
$ALrLscCie(B")
(qdl "tian4" "\
$A^](B")
(qdl "tiao1" "\
$ALtY,lv(B")
(qdl "tiao2" "\
$A5wLuLv\frhsTv6vfwX(B")
(qdl "tiao3" "\
$ALtq;(B")
(qdl "tiao4" "\
$ALwLxtP(B")
(qdl "tie1" "\
$ALyL{]F(B")
(qdl "tie3" "\
$ALzL{(B")
(qdl "tie4" "\
$AL{wQ(B")
(qdl "ting1" "\
$AL|L}L~M!(B")
(qdl "ting2" "\
$AM"M#M$M%\p]cfCrQv*(B")
(qdl "ting3" "\
$AM&M'hhn.nz(B")
(qdl "ting4" "\
$Ahh(B")
(qdl "tong1" "\
$A62M(`L(B")
(qdl "tong2" "\
$A61M)M*M+M,M-M.M/Y!YZ(B\
$A[m\ma<d|mE(B")
(qdl "tong3" "\
$A61M0M1M2M3(B")
(qdl "tong4" "\
$AM(M,M4bz(B")
(qdl "tou1" "\
$AM5(B")
(qdl "tou2" "\
$AM6M7w;(B")
(qdl "tou3" "\
$AnW(B")
(qdl "tou4" "\
$AM8(B")
(qdl "tu1" "\
$AM9M:M;(B")
(qdl "tu2" "\
$AM<M=M>M?M@]1]Ku)(B")
(qdl "tu3" "\
$AMAMBnJ(B")
(qdl "tu4" "\
$AMBMC\"]K(B")
(qdl "tuan1" "\
$AMD(B")
(qdl "tuan2" "\
$AME^R(B")
(qdl "tuan3" "\
$An6(B")
(qdl "tuan4" "\
$Aeh(B")
(qdl "tui1" "\
$AMF_/(B")
(qdl "tui2" "\
$AMG(B")
(qdl "tui3" "\
$AMH(B")
(qdl "tui4" "\
$AMIMJMKlU(B")
(qdl "tun1" "\
$AMLjU(B")
(qdl "tun2" "\
$A6ZMMMNb=k`(B")
(qdl "tun3" "\
$AY[(B")
(qdl "tun4" "\
$AMJ(B")
(qdl "tuo1" "\
$AMOMPMQX1(B")
(qdl "tuo2" "\
$A6fMRMSMTMUY"[gc{h^iR(B\
$AmHnhu"uIv>(B")
(qdl "tuo3" "\
$AMVMWbU(B")
(qdl "tuo4" "\
$AFGMXMYhXsj(B")
(qdl "wa1" "\
$A0<MZM[M\M]f4(B")
(qdl "wa2" "\
$AM^(B")
(qdl "wa3" "\
$AM_Xt(B")
(qdl "wa4" "\
$AM_M`kp(B")
(qdl "wa5" "\
$AM[(B")
(qdl "wai1" "\
$AMa(B")
(qdl "wai3" "\
$AaK(B")
(qdl "wai4" "\
$AMb(B")
(qdl "wan1" "\
$AMcMdMeX`rj(B")
(qdl "wan2" "\
$AMfMgMhMiMj\9f}(B")
(qdl "wan3" "\
$ACdMkMlMmMnMoMpMq]8]R(B\
$Ag:g~kdn5(B")
(qdl "wan4" "\
$AB{MrMs(B")
(qdl "wang1" "\
$AMt^L(B")
(qdl "wang2" "\
$AC"MuMvM|(B")
(qdl "wang3" "\
$AMwMxMyXhc/i~wM(B")
(qdl "wang4" "\
$AMuMyMzM{M|M}(B")
(qdl "wei1" "\
$AM~N!N"N#N.N/YKZq]Z^1(B\
$AaKeTlP(B")
(qdl "wei2" "\
$AN$N%N&N'N(N)N*N+N,[W(B\
$A`m`xa!aMcGcmd6(B")
(qdl "wei3" "\
$AN(N-N.N/N0N1N2N3ZCZs(B\
$Ab+d"f8gbh8l?ptt:v[(B")
(qdl "wei4" "\
$AN*N4N5N6N7N8N9N:N;N<(B\
$AN=N>N?N@REb,j&(B")
(qdl "wen1" "\
$ANANB(B")
(qdl "wen2" "\
$ANCNDNENFcSh7v)(B")
(qdl "wen3" "\
$ANGNHNIXX(B")
(qdl "wen4" "\
$ANFNJckh7(B")
(qdl "weng1" "\
$ANKNL(B")
(qdl "weng3" "\
$A]n(B")
(qdl "weng4" "\
$ANM^3(B")
(qdl "wo1" "\
$ANNNONPNQYA]+`8(B")
(qdl "wo2" "\
$AE6(B")
(qdl "wo3" "\
$ANR(B")
(qdl "wo4" "\
$AE6NSNTNUNVa"dWk?mRv;(B")
(qdl "wu1" "\
$A6qNWNXNYNZN[N\N]X#Zy(B\
$A[Xl6(B")
(qdl "wu2" "\
$AMvN^N_N`NaNbNcNf_md4(B\
$ArZwy(B")
(qdl "wu3" "\
$ANdNeNfNgNhNiNjXubPbd(B\
$AbheCe|jupD(B")
(qdl "wu4" "\
$A6qNZNkNlNmNnNoNpNqNr(B\
$ANsX#Zc\Le;fDfph;lIpM(B\
$ApmvH(B")
(qdl "xi1" "\
$A@0F\NtNuNvNwNxNyNzN{(B\
$AN|N}N~O!O"O#O$O%O&O'(B\
$AO(O)O*O+O,YRYb[-\g]>(B\
$A^I_qd;d@fRiXjXl$l(ld(B\
$Ap*q6ras#s,t8tKtQtbu5(B\
$Auhw{(B")
(qdl "xi2" "\
$AO-O.O/O0O1Ztjj(B")
(qdl "xi3" "\
$AO2O3O4]_]{aceogtl{(B")
(qdl "xi4" "\
$AO5O6O7O8b>cRlyt*(B")
(qdl "xia1" "\
$AO9O:_H(B")
(qdl "xia2" "\
$AO;O<O=O>O?O@OAareZh&(B\
$AhTmLp}wo(B")
(qdl "xia4" "\
$A;#OBOCODOEsA(B")
(qdl "xian1" "\
$AOFOGOHOIOJOK]2e_k/ll(B\
$AtLu#uQ(B")
(qdl "xian2" "\
$AOLOMONOOOPOQOROSf5pB(B\
$Apo(B")
(qdl "xian3" "\
$AO3O4OJOTOUY~^:a}l^r9(B\
$AsZuP(B")
(qdl "xian4" "\
$A<{OVOWOXOYOZO[O\O]O^(B\
$AO_\Ha-v1(B")
(qdl "xiang1" "\
$AO`OaObOcOdOeOfOg\<]Y(B\
$Afxg=(B")
(qdl "xiang2" "\
$A=5OhOiOjbT(B")
(qdl "xiang3" "\
$AOkOlOmbCv_wO(B")
(qdl "xiang4" "\
$AO`OnOoOpOqOrOss-(B")
(qdl "xiao1" "\
$AOtOuOvOwOxOyOzO{O|P$(B\
$A_XdlePfgg/hIhUrYsowL(B")
(qdl "xiao2" "\
$AO}aE(B")
(qdl "xiao3" "\
$AO~P!sc(B")
(qdl "xiao4" "\
$AP"P#P$P%P&P'(B")
(qdl "xie1" "\
$AP(P)P*P+(B")
(qdl "xie2" "\
$AP,P-P.P/P0P1P2P3R6YI(B\
$A[D_"gSr!(B")
(qdl "xie3" "\
$AP4Q*(B")
(qdl "xie4" "\
$A=bFuP4P5P6P7P8P9P:P;(B\
$AP<Yt[F^/b3b]dMe,ebg%(B\
$Ai?iGus(B")
(qdl "xin1" "\
$AP=P>P?P@PAPBPCPD\0j?(B\
$Al'vN(B")
(qdl "xin2" "\
$AQ0ob(B")
(qdl "xin4" "\
$AP>PEPFX6(B")
(qdl "xing1" "\
$APGPHPIPJPK(B")
(qdl "xing2" "\
$APLPMPNPOPPZj\~b<mJ(B")
(qdl "xing3" "\
$AJ!PQ_)(B")
(qdl "xing4" "\
$APKPRPSPTPU\tc,(B")
(qdl "xiong1" "\
$APVPWPXPYPZ\:(B")
(qdl "xiong2" "\
$AP[P\(B")
(qdl "xiu1" "\
$AP]P^P__]bJbSp<uww[(B")
(qdl "xiu3" "\
$AK^P`(B")
(qdl "xiu4" "\
$A3tK^PaPbPcPdPea6de(B")
(qdl "xu1" "\
$APfPgPhPiPjPkSu[Wgom9(B\
$Amlqc(B")
(qdl "xu2" "\
$APl(B")
(qdl "xu3" "\
$APmZ<d0hrtZu/(B")
(qdl "xu4" "\
$APnPoPpPqPrPsPtPuPvPw(B\
$APx[Cd*dSlc(B")
(qdl "xu5" "\
$A^#(B")
(qdl "xuan1" "\
$APyPzP{YXZN]f^ojQlS(B")
(qdl "xuan2" "\
$AP|P}P~dvh/pg(B")
(qdl "xuan3" "\
$AQ!Q"(B")
(qdl "xuan4" "\
$AH/P}Q#Q$cydVi8lEm[ng(B\
$Ao`(B")
(qdl "xue1" "\
$AOwQ%Q&(B")
(qdl "xue2" "\
$AQ'Q(`em4u=(B")
(qdl "xue3" "\
$AQ)w((B")
(qdl "xue4" "\
$AQ*ZJ(B")
(qdl "xun1" "\
$A;gQ+Q,[w^9b4jVq?u8(B")
(qdl "xun2" "\
$AQ-Q.Q/Q0Q1Q2[(\wa>b~(B\
$Ad-d1v`(B")
(qdl "xun4" "\
$A?#Q,Q3Q4Q5Q6Q7Q8Yc^&(B\
$Aa_(B")
(qdl "ya1" "\
$AQ9Q:Q;Q<Q=Q>QEQF[khb(B")
(qdl "ya2" "\
$AQ?Q@QAQBQCQDXsa,gpm}(B")
(qdl "ya3" "\
$AF%GFQEpiqb(B")
(qdl "ya4" "\
$AQ9QGQHT~^keBf+k2m<(B")
(qdl "ya5" "\
$AQ=(B")
(qdl "yan1" "\
$AQIQJQKQLQMQ`Rs[3]NaC(B\
$Ab{cUdNfLkYkg(B")
(qdl "yan2" "\
$AG&QNQOQPQQQRQSQTQUQV(B\
$AQWQXZg\>cFe{i\s[(B")
(qdl "yan3" "\
$AQYQZQ[Q\Q]XIX_Y2YHYp(B\
$A[1g|n;wJwzw|(B")
(qdl "yan4" "\
$AQJQPQXQ^Q_Q`QaQbQcQd(B\
$AQeQfQgQhQiXMZ]dYjLlM(B\
$Au&wP(B")
(qdl "yang1" "\
$AQjQkQlQmcsw1(B")
(qdl "yang2" "\
$AQnQoQpQqQrQsQta`l>lH(B\
$ArU(B")
(qdl "yang3" "\
$AQuQvQwQx(B")
(qdl "yang4" "\
$AQyQzbslHm&w1(B")
(qdl "yao1" "\
$AQ{Q|Q}R*T<X2_:g[(B")
(qdl "yao2" "\
$A=DLUQ~R!R"R#R$R%R&X3(B\
$AafgriwkHo"tmw%(B")
(qdl "yao3" "\
$AR'R(aJhCq:(B")
(qdl "yao4" "\
$AE1R)R*R+T?jWpN(B")
(qdl "ye1" "\
$AR,R-R.R4(B")
(qdl "ye2" "\
$AP0R.R/^^nt(B")
(qdl "ye3" "\
$AR0R1R2(B")
(qdl "ye4" "\
$A;)QJR3R4R5R6R7R8R9R:(B\
$AW'XLZKZ~jJlG(B")
(qdl "yi1" "\
$AR;R<R=R>R?R@RARBRN_^(B\
$A`fb"dtl%wp(B")
(qdl "yi2" "\
$AI_RCRDRERFRGRHRIRJRK(B\
$ARLRMZ1[]\h_WaZbBbyeF(B\
$Aj]mtpj(B")
(qdl "yi3" "\
$A6jN2RBRNRORPRQRRRSRT(B\
$A\SeFl=nFt/t}(B")
(qdl "yi4" "\
$A0,RBRURVRWRXRYRZR[R\(B\
$AR]R^R_R`RaRbRcRdReRf(B\
$ARgRhRiRjRkRlRmRnRoXW(B\
$AXfXnX}Y+[|\2^2^D^H^Z(B\
$A_._=`I`fa;bxc(fdgKil(B\
$AislZoWonpyq/q4rft`th(B")
(qdl "yin1" "\
$AQLRpRqRrRsRtRuRv\'`3(B\
$Ad&dNk3nw(B")
(qdl "yin2" "\
$ARwRxRyRz[4[_[sa~b9v/(B\
$Av8(B")
(qdl "yin3" "\
$ARsR{R|R}R~_Eq+r>(B")
(qdl "yin4" "\
$ARqR{S!X7\aq?(B")
(qdl "ying1" "\
$AS"S#S$S%S&S']:^|`Sb_(B\
$Agxh,pPs?(B")
(qdl "ying2" "\
$AS(S)S*S+S,S-S.S/Yx\c(B\
$A\~]S]vd^dke-i:(B")
(qdl "ying3" "\
$AS0S1[+q(r#(B")
(qdl "ying4" "\
$AS&S2S3kt(B")
(qdl "yo1" "\
$AS4S}`!(B")
(qdl "yo5" "\
$AS4(B")
(qdl "yong1" "\
$AS5S6S7S8S9S:[U\-c<g_(B\
$Ao^w+wS(B")
(qdl "yong2" "\
$A`/(B")
(qdl "yong3" "\
$AS;S<S=S>S?S@SASBY8p.(B")
(qdl "yong4" "\
$AS6SC(B")
(qdl "you1" "\
$ASDSESFSGX|_O(B")
(qdl "you2" "\
$ASHSISJSKSLSMSN]/]5^L(B\
$AhVi`p`rDrvrxtmvO(B")
(qdl "you3" "\
$ASOSPSQXU],k;npwn(B")
(qdl "you4" "\
$ASPSRSSSTSUSVSWY'`se6(B\
$AhVrJwx(B")
(qdl "yu1" "\
$ASXSYSufzl6pv(B")
(qdl "yu2" "\
$ASZS[S\S]S^S_S`SaSbSc(B\
$ASdSeSfSgShSiSkX.ZD]G(B\
$A^maNa|bEf%h$jlkil#q>(B\
$ArusDt't(v'(B")
(qdl "yu3" "\
$AShSjSkSlSmSnSoSpXqY6(B\
$A`t`vbWpuqAv9(B")
(qdl "yu4" "\
$A9HN5N>SjSkSoSqSrSsSt(B\
$ASuSvSwSxSySzS{S|S}S~(B\
$AT!T"T#T$T%T&V`X9ZM]R(B\
$A]wb@cPewe}jElOlYl[m2(B\
$AnZpApVrb(B")
(qdl "yuan1" "\
$AT'T(T)msp0sn(B")
(qdl "yuan2" "\
$AT*T+T,T-T.T/T0T1T2T3(B\
$AT4T5\+\>`wcdfBiZk<s"(B\
$Av=(B")
(qdl "yuan3" "\
$AT6(B")
(qdl "yuan4" "\
$AT7T8T9T:[y^rfBh%(B")
(qdl "yue1" "\
$AT;T<(B")
(qdl "yue4" "\
$A@VK5T=T>T?T@TATBTCTD(B\
$AY_e.h]iPk>na(B")
(qdl "yun1" "\
$ATNk5(B")
(qdl "yun2" "\
$AT1TETFTGTH\?g!j@s^(B")
(qdl "yun3" "\
$ATITJaqif(B")
(qdl "yun4" "\
$A>yT1TKTLTMTNTOTP[)c"(B\
$Ac3h9lY(B")
(qdl "za1" "\
$ATQTz^Y_F(B")
(qdl "za2" "\
$ATRTST[(B")
(qdl "za3" "\
$AU&(B")
(qdl "zai1" "\
$ATTTUTVg^(B")
(qdl "zai3" "\
$ATWTXWPaL(B")
(qdl "zai4" "\
$ATXTYTZ(B")
(qdl "zan1" "\
$At"tX(B")
(qdl "zan2" "\
$AT[(B")
(qdl "zan3" "\
$AT\^YjCtu(B")
(qdl "zan4" "\
$AT]T^h6vI(B")
(qdl "zan5" "\
$AT[(B")
(qdl "zang1" "\
$AT_U`j0(B")
(qdl "zang3" "\
$Af`(B")
(qdl "zang4" "\
$A2XT`Ta^J(B")
(qdl "zao1" "\
$ATbTc(B")
(qdl "zao2" "\
$ATd(B")
(qdl "zao3" "\
$ATeTfTgThTigX(B")
(qdl "zao4" "\
$ATjTkTlTmTnTo_p(B")
(qdl "ze2" "\
$ATpTqTrTsU&XS_u`}eEsP(B\
$Aset7(B")
(qdl "ze4" "\
$A2`XFj>(B")
(qdl "zei2" "\
$ATt(B")
(qdl "zen3" "\
$ATu(B")
(qdl "zen4" "\
$AZZ(B")
(qdl "zeng1" "\
$ATvTwTxgUn@(B")
(qdl "zeng4" "\
$ATyW[gUj5o-(B")
(qdl "zha1" "\
$A2iTzT{T|U&^j_8_ni+w~(B")
(qdl "zha2" "\
$ATzT}T~U!U"U(`)(B")
(qdl "zha3" "\
$AU#mD(B")
(qdl "zha4" "\
$A@/U$U%U&U'U(U)Wu_8_e(B\
$ApdrF(B")
(qdl "zhai1" "\
$A2`U*U+(B")
(qdl "zhai2" "\
$A5TTqU,(B")
(qdl "zhai3" "\
$AU-(B")
(qdl "zhai4" "\
$A<@U.U/mNq)(B")
(qdl "zhan1" "\
$AU0U1U2U3U4U<Z^l9(B")
(qdl "zhan3" "\
$AU5U6U7U8U9^x(B")
(qdl "zhan4" "\
$A2|U:U;U<U=U>U?U@(B")
(qdl "zhang1" "\
$AUAUBUCUDUE[5b/fQh0s/(B")
(qdl "zhang3" "\
$A3$UFUGXk(B")
(qdl "zhang4" "\
$AUGUHUIUJUKULUMUNUOa$(B\
$AaV(B")
(qdl "zhao1" "\
$A3/30UPUQWE_znH(B")
(qdl "zhao2" "\
$AWE(B")
(qdl "zhao3" "\
$AURUSW&(B")
(qdl "zhao4" "\
$AUTUUUVUWUXUYZ/h~sI(B")
(qdl "zhe1" "\
$AUZU[rX(B")
(qdl "zhe2" "\
$AU[U\U]U^ZX_!i|m]rX(B")
(qdl "zhe3" "\
$AU_U`q^tw(B")
(qdl "zhe4" "\
$AUaUbUchOpQ(B")
(qdl "zhe5" "\
$AWE(B")
(qdl "zhei4" "\
$AUb(B")
(qdl "zhen1" "\
$AUdUeUfUgUhUiUjUkUl]h(B\
$Ad%dZhei)i;kSlusp(B")
(qdl "zhen3" "\
$AUmUnUogGitn3p!(B")
(qdl "zhen4" "\
$AUpUqUrUs[Zjbk^p2(B")
(qdl "zheng1" "\
$A6!UtUuUvUwUxUyUzU}V"(B\
$Aa?agn[o#s]vk(B")
(qdl "zheng3" "\
$AU{U|(B")
(qdl "zheng4" "\
$AUuUzU}U~V!V"V#V$Z:o#(B")
(qdl "zhi1" "\
$AJOV%V&V'V(V)V*V+V,V-(B\
$AV.V/V8V;V@X4hYkUls(B")
(qdl "zhi2" "\
$AV0V1V2V3V4V5V6V8[z^}(B\
$AtjuEu\(B")
(qdl "zhi3" "\
$AV7V8V9V:V;V<V=\Fagek(B\
$AhWirlmmiu%(B")
(qdl "zhi4" "\
$AJ6V*V>V?V@VAVBVCVDVE(B\
$AVFVGVHVIVJVKVLVMVNVO(B\
$AZl[$`ybeeifohNhdiyj^(B\
$Akyotp:pkrNuYutv#(B")
(qdl "zhong1" "\
$AVPVQVRVSVTVUbloqs.t1(B")
(qdl "zhong3" "\
$AVVVWZ#u`(B")
(qdl "zhong4" "\
$AVPVVVXVYVZ(B")
(qdl "zhou1" "\
$AV[V\V]V^V_V`_z(B")
(qdl "zhou2" "\
$AVaf(mX(B")
(qdl "zhou3" "\
$AVbVc(B")
(qdl "zhou4" "\
$AVaVdVeVfVgVh]'f{g'kP(B\
$At&tmt|(B")
(qdl "zhu1" "\
$AViVjVkVlVmVnVoY*[%\o(B\
$Ad(dsiFiMny(B")
(qdl "zhu2" "\
$AJuVpVqVrV~pqsCt6un(B")
(qdl "zhu3" "\
$AJtVsVtVuVvVwd>qRwf(B")
(qdl "zhu4" "\
$AVxVyVzV{V|V}V~W!W"W#(B\
$AW$Xy\QhLlDpfsgtc(B")
(qdl "zhua1" "\
$ANNW%(B")
(qdl "zhua3" "\
$AW&(B")
(qdl "zhuai1" "\
$AW'(B")
(qdl "zhuai3" "\
$AW*(B")
(qdl "zhuai4" "\
$AR7W'`\(B")
(qdl "zhuan1" "\
$AW(W)r'(B")
(qdl "zhuan3" "\
$AW*(B")
(qdl "zhuan4" "\
$A4+W*W+W,W-_ybMcg(B")
(qdl "zhuang1" "\
$AW.W/W0W1(B")
(qdl "zhuang3" "\
$A^J(B")
(qdl "zhuang4" "\
$A41W2W3W4YWm0(B")
(qdl "zhui1" "\
$AW5W6W7fmv?(B")
(qdl "zhui4" "\
$AW8W9W:c7gD(B")
(qdl "zhun1" "\
$AMMW;kFq8(B")
(qdl "zhun3" "\
$AW<(B")
(qdl "zhuo1" "\
$AW=W>W?W@Y>dClL(B")
(qdl "zhuo2" "\
$A=IVxWAWBWCWDWEWFWGZB(B\
$A_*d7e*lzm=om(B")
(qdl "zi1" "\
$AV(WHWIWJWKWLWMWNWPZQ(B\
$A_ZaQf\g;j"j_oEtRttu~(B\
$Av$v7vvwZ(B")
(qdl "zi3" "\
$AWOWPWQWRWS\kf"hwovqh(B\
$AsJv$(B")
(qdl "zi4" "\
$AWTWUWVm'mv(B")
(qdl "zong1" "\
$AWWWXWYWZW[hHkj(B")
(qdl "zong3" "\
$AW\YL(B")
(qdl "zong4" "\
$AW]tU(B")
(qdl "zou1" "\
$AW^ZAZn[8fcvm(B")
(qdl "zou3" "\
$AW_(B")
(qdl "zou4" "\
$AW`Wa(B")
(qdl "zu1" "\
$AWb]O(B")
(qdl "zu2" "\
$AWcWdWeo_(B")
(qdl "zu3" "\
$AWfWgWhWiY^(B")
(qdl "zuan1" "\
$AWjur(B")
(qdl "zuan3" "\
$AWkgZ(B")
(qdl "zuan4" "\
$AW,Wj_,(B")
(qdl "zui1" "\
$A6Q(B")
(qdl "zui3" "\
$A>WWlu~(B")
(qdl "zui4" "\
$AWmWnWo^)(B")
(qdl "zun1" "\
$AWpWqiWw.(B")
(qdl "zun3" "\
$A_$(B")
(qdl "zuo1" "\
$AWw`\(B")
(qdl "zuo2" "\
$AWAWrWwsP(B")
(qdl "zuo3" "\
$A4iWsWt(B")
(qdl "zuo4" "\
$ATdWuWvWwWxWyZh_rbtkQ(B\
$Alqu!(B")
