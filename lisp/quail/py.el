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
;;	Original table is from cxterm/dict/tit/PY.tit.
;; 92.6.24  modified for Mule Ver.0.9.5 by K.Handa <handa@etl.go.jp>
;;	To cope with new version of quail.

;; # HANZI input table for cxterm
;; # To be used by cxterm, convert me to .cit format first
;; # .cit version 1
;; ENCODE:	GB
;; MULTICHOICE:	YES
;; PROMPT:	$A::WVJdHk!KF4Rt!K(B 
;; #
;; COMMENT	$AF4Rt7=08(B
;; COMMENT
;; COMMENT $AP!P4S"NDWVD84z1m!8F4Rt!97{:E#,(B "u(yu) $ATrSC(B u: $A1mJ>!C(B
;; # define keys
;; VALIDINPUTKEY:	:abcdefghijklmnopqrstuvwxyz
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
 "py" "$AF4Rt(B" nil 
 "$AP!P4S"NDWVD84z1m!8F4Rt!97{:E#,(B \"u(yu) $ATrSC(B u: $A1mJ>(B"
 *quail-mode-rich-map* nil nil nil nil t)

(defmacro qdl (key str)
  (list 'quail-defrule key (list 'string-to-char-list str)))

(qdl "a" "\
$A0!0":G_9kgo9`D(B")
(qdl "ai" "\
$A0#0$0%0&0'^_oM0(0)4t(B\
$A0*0+`Hv00,0-0.0/`IfH(B\
$Ah(jSmA(B")
(qdl "an" "\
$A0001023'9cZObVhqpF03(B\
$A[{^no'0405060708amwv(B")
(qdl "ang" "\
$A090:0;(B")
(qdl "ao" "\
$A0<0>0=0?Oy`;bZe[iaqz(B\
$Ar|w!wi0@^VfA0A0B0C0D(B\
$A[ja.fqvK(B")
(qdl "ba" "\
$A0E0F0G0H0I0J0K0L0Ma1(B\
$AtN0N0O\X]CwI0P0QnY0R(B\
$A0S0T0U0Ve1vQ(B")
(qdl "bai" "\
$Aj~0W0X0Y0Z0[2.^c0\0](B\
$A0^_B(B")
(qdl "ban" "\
$A0_0`0a0b0c0dq#q-0e0f(B\
$AZf[`nSt20g0h0i0j0k0l(B\
$A0m(B")
(qdl "bang" "\
$A0n0o0pd:0q0r0s0t0u0v(B\
$A0w0x0y]r(B")
(qdl "bao" "\
$A0z0{0|0}0~EZf_lRv51!(B\
$A1"1#1$1%1&]ap1qY1'1((B\
$A1)1*1+1,EYFXFYu@(B")
(qdl "bei" "\
$A1-1.1/1013Zi[}]IpG11(B\
$A121415161718191:1;XC(B\
$AZ}]mc#mUqXvMw91[_B(B")
(qdl "ben" "\
$A1<jZo<1=1>[N1?:;[P(B")
(qdl "beng" "\
$A1@1A`T1B0v1C1D1Ej4(B")
(qdl "bi" "\
$A1F1G])1H1I1J1KX0YB_A(B\
$Ae~out01L1M1N1O1P1Q1R(B\
$A1S1T1U1V1W1X1Y1Z1[1\(B\
$A1]7wCXCZ[}\E\j]I^5_Y(B\
$AaybXc9dde(evf>fTh5jZ(B\
$An/niqTsYskswtEuOwB(B")
(qdl "bian" "\
$A1^1_1`lTm>rysVv}1a1b(B\
$AXRm\q9q[1c1d1e1f1g1h(B\
$A1i[M\PbmcjgB(B")
(qdl "biao" "\
$A1j1k1lIWfth<l)l-l.oZ(B\
$Aopq&wT1mf;qQw'(B")
(qdl "bie" "\
$A1n1o1q1pu?(B")
(qdl "bin" "\
$A1r1s1t1u1vYOaYgMgciD(B\
$AoY1wikkwwFw^(B")
(qdl "bing" "\
$A1x1y2"iD1z1{1|1}1~FA(B\
$AYwZ{2!^p(B")
(qdl "bo" "\
$A0c0~2#2$2%2&2'2(bDu@(B\
$A0X0Y1!2)2*2+2,2-2.2/(B\
$A202122232425FGXCYqmg(B\
$An`p>u[t$uKi^j~k"27`#(B")
(qdl "bu" "\
$AeMjNn_2;u31$26272829(B\
$A_22:2<2=2>2?2@FRj3nP(B")
(qdl "ca" "\
$A2A2p`jme(B")
(qdl "cai" "\
$A2B2C2D2E2F2G2H2I2J2K(B\
$A2L(B")
(qdl "can" "\
$A2M2Nfn2O2P2Q2Rwu2S2t(B\
$Aenh2tS(B")
(qdl "cang" "\
$A2T2U2V2WXw2X(B")
(qdl "cao" "\
$A2Y2Z2[2\`Pdns)t=2](B")
(qdl "ce" "\
$A2^2_2`2a2bb|(B")
(qdl "cen" "\
$A2Na/d9(B")
(qdl "ceng" "\
$A`a2cTx2d(B")
(qdl "cha" "\
$A2e2f2j2nT{`jbGh>oJ2g(B\
$A2h2i2k2lb*i+i6i_ooqC(B\
$A2m2oI2cbf1(B")
(qdl "chai" "\
$A2n2pnN2q2rY-p{r2(B")
(qdl "chan" "\
$A2s2tjh2u2v2w2x5%b\d}(B\
$Ae$enf?lxobs8up2y2z2{(B\
$AYfZF][fv2|bceq(B")
(qdl "chang" "\
$A2}2~Xv]EcQf=vp3!3"3#(B\
$A3$3%3&IQLH\IadfO3'3((B\
$Ac.jFk)3)3*3+[Kbj(B")
(qdl "chao" "\
$A3,3-3.334B=KbwlL3/30(B\
$A3132jK34qi(B")
(qdl "che" "\
$A35m:363_3738393:[e(B")
(qdl "chen" "\
$A3;^S`Ah!3<3=3>3?3@3A(B\
$A3B3HIrZHe7mW3C3D3F3S(B\
$AZ_i4v3Xw(B")
(qdl "cheng" "\
$A3E3F3S`ah_n*nurI3G3H(B\
$A3I3J3K3L3M3N3O3PJ"X)(B\
$A[thGksnqqNu(3Q3R(B")
(qdl "chi" "\
$A3T3U_j`MfJmwp7r?s$sW(B\
$AwN3V3W3X3Y3Z3[[f\/\](B\
$AsxuX3\3]3^3_q]ty3`3a(B\
$A3b3cYQ_3`4a\bAk7q!(B")
(qdl "chong" "\
$A3d3eS?\{bgc?t)t>3f3g(B\
$AVVVX3ho%(B")
(qdl "chou" "\
$A3iq,3j3k3l3m3n3o3p3q(B\
$AY1`|c0vE3r3s3t(B")
(qdl "chu" "\
$A3u3viK3w3x3y3z3{3|3}(B\
$A[;r\ui3~4!4"4&hFhzqR(B\
$A4#4$4%PsX!bpc@g)wm(B")
(qdl "chuai" "\
$A4'^u`(`\kzu_(B")
(qdl "chuan" "\
$A4(4)g]k04*4+4,eWt-4-(B\
$Ab64.nK(B")
(qdl "chuang" "\
$A4/4044414243bk(B")
(qdl "chui" "\
$A4546474849W5Zoi"i3(B")
(qdl "chun" "\
$A4:4;rm4<4=4>4?];pH4@(B")
(qdl "chuo" "\
$A4AuV4B`(j!v:(B")
(qdl "ci" "\
$A2n4C4L_Z4D4E4F4G4H4I(B\
$A4JWH\kltpKtY4K4M4NKE(B")
(qdl "cong" "\
$A4O4P4Q4R4S\Jfuh.hH4T(B\
$AdHg}(B")
(qdl "cou" "\
$A4Ui(j#km(B")
(qdl "cu" "\
$A4Va^ic4W4X4YWd]}b'u!(B\
$Au>um(B")
(qdl "cuan" "\
$A4ZY`_%oiT\4[4\l`(B")
(qdl "cui" "\
$A4]4^4_K%iAv?h-4`4a4b(B\
$A4c4d]M_}c2k%(B")
(qdl "cun" "\
$A4eqe4f6Wbb4g(B")
(qdl "cuo" "\
$A4h4i4jucaOospnp{u:kb(B\
$A4k4l4mXHo1(B")
(qdl "da" "\
$A4n4p^G_U`*qW4o4q4rbr(B\
$Af'm3sNw0w24sK~pc(B")
(qdl "dai" "\
$A4t4}_>4u4v4~4s4w4x4y(B\
$A4z4{4|5!\$_0a7eJffg*(B\
$Agiwl(B")
(qdl "dan" "\
$A5"5#5$5%5&YYiimqpwqu(B\
$Asl5'5(jfpc5)5*5+5,5-(B\
$A5.5/50J/]L`"e#(B")
(qdl "dang" "\
$A51nuqI5253ZT5455[J]P(B\
$Ae4m8(B")
(qdl "dao" "\
$A56_6bak.5758595:5;5<(B\
$A5=5>5?5@5A`|lbtn(B")
(qdl "de" "\
$A5B5Co=5D5W5X(B")
(qdl "dei" "\
$A5C(B")
(qdl "deng" "\
$A5E5F5G`bt#5Hj-3N5I5J(B\
$A5KaXmcok(B")
(qdl "di" "\
$A5L5M5NLaX5`VoatF5D5O(B\
$A5P5Q5R5S5T5UYa]6jk5V(B\
$A5WZ.[![fh\mFw>5X5Y5Z(B\
$A5[5\5]5^ZPf7g0i&mZm{(B")
(qdl "dia" "\
$A`G(B")
(qdl "dian" "\
$A5_5`5aa[q25b5c5dX<uZ(B\
$A5e5f5g5h5i5j5k5l5m5n(B\
$AZg[cghndq0t!(B")
(qdl "diao" "\
$A5o5p5q5r5suuvtDq5t5u(B\
$A5v5wnvo"(B")
(qdl "die" "\
$A5x5yuZ5z5{5|5}5~X}[l(B\
$A\&^i`)k:p,qsu^vx(B")
(qdl "ding" "\
$A6!6"6#6$Xjg`n.p[qttz(B\
$A6%6&6'6(6)`$kkmVnz(B")
(qdl "diu" "\
$A6*n{(B")
(qdl "dong" "\
$A6+6,_Ka4k1p46-6.mO6/(B\
$A6061626364[ma<kKkX(B")
(qdl "dou" "\
$A656<]zs{666768r=696:(B\
$A6;6Aq<(B")
(qdl "du" "\
$A6<6=`=6>6?6@6A6YdBh|(B\
$Ak9wGwr6B6C6D6GsF6E6F(B\
$A6H6I6J\6s<(B")
(qdl "duan" "\
$A6K6L6M6N6O6Pi2lQs}(B")
(qdl "dui" "\
$A6Q6R6S6T6Xm!m-mTof(B")
(qdl "dun" "\
$A6U6V6W6Xmbofmou;6Y6Z(B\
$A6[6\6]cgl@m;(B")
(qdl "duo" "\
$A6^6_6`_MqV6H6anlub6b(B\
$A6c6d_ag66e6f6g6h6iMT(B\
$Acuh^(B")
(qdl "e" "\
$A0"emf96j6k6l6m6n6o6p(B\
$AE6]-o06q6r6s6t6u6vX,(B\
$AZL[Q\C]`_@c5cUinkqoI(B\
$ApJr&vy(B")
(qdl "ei" "\
$AZ@(B")
(qdl "en" "\
$A6w]l^t(B")
(qdl "er" "\
$A6x6yp9v\6z6{6|6}eGgm(B\
$Ano6~7!Y&(B")
(qdl "fa" "\
$A7"7#7$7%7&7'[R7(m@7)(B")
(qdl "fan" "\
$A7*7+7,7-^,a&7.7/7071(B\
$A72737:^@l\ul74757677(B\
$A7879hsn2(B")
(qdl "fang" "\
$A7;7<7=7AZzhJnU7>7?7@(B\
$AvP7B7C7Da]t37E(B")
(qdl "fei" "\
$A7F7G7H7Iezg3lircv-vn(B\
$A7JdGkh7K7Lc-i<l3sutd(B\
$A7M7N7O7P7Q\@atoPpr(B")
(qdl "fen" "\
$A7R7S7T7U7V7Wgc7X7Y7Z(B\
$Ah{ww7[7\7]7^7_7`YGe/(B\
$Avw(B")
(qdl "feng" "\
$A7a7b7c7d7e7f7g7h7i[:(B\
$A]Wccm?7j7k7l7m_t7n7o(B\
$AY:(B")
(qdl "fo" "\
$A7p(B")
(qdl "fou" "\
$A7qs>(B")
(qdl "fu" "\
$A7r7s7t7u_;o{touCuF7p(B\
$A7v7w7x7y7z7{7|7}7~8!(B\
$A8"8#8$8%YkYl[.\=\@\^(B\
$A\r]3]Ja%bveufZg&g(hu(B\
$AlpmImjn7r6r]rp8&8'8((B\
$A8)8*8+8,8-8.8/88^Tdf(B\
$Amk808182838485868789(B\
$A8:8;8<8=8>8?8@fbjgp%(B\
$ArsvVv{(B")
(qdl "ga" "\
$A8B8l<P?'Y$j88AT~fYnE(B\
$AfX^N(B")
(qdl "gai" "\
$A8CZk[rj`8D8E8F8G8H=f(B\
$AX$j.(B")
(qdl "gan" "\
$A8I8J8K8L8M8NG,[a\U^O(B\
$Acom7pat{8O8P8Q8R_&dw(B\
$AiO8SdFg$j:(B")
(qdl "gang" "\
$A8T8U8V8W8X8Y8\?8n88Z(B\
$A8[m0s`(B")
(qdl "gao" "\
$A8]8^8_8`8a8bX:i@8c8d(B\
$A8e^;gIiBj=8fZ>[,o/(B")
(qdl "ge" "\
$A8g8h8i8j8k8l8m8n8q?)(B\
$ARYXn[Yf|qK8o8p8r8s8t(B\
$AX*\*`Ck!kuoSr"w@8G8v(B\
$A8w:O[At48umQr4(B")
(qdl "gei" "\
$A8x(B")
(qdl "gen" "\
$A8y8z_gt^X(]"(B")
(qdl "geng" "\
$A8{8|8}8~bY9!9"9#>1_l(B\
$Ag.va(B")
(qdl "gong" "\
$A9$9%9&9'9(9)9*9+9,9-(B\
$A92:lkEr<v!9.9/90gn91(B")
(qdl "gou" "\
$A939495>dX~gCh[stw896(B\
$A97a8sQ98999:9;Z8e\fE(B\
$Ajml0(B")
(qdl "gu" "\
$A9<9=9>9?9@9A9B9C9G]T(B\
$A_Iiol1p3rAt~u}9D9E9F(B\
$A9H9I<VXEZ,cijtk{n-n9(B\
$An\p@w=9J9K9L9MaDhtjv(B\
$Ao@psvq(B")
(qdl "gua" "\
$A9N9O@(_IhikRp;9P9Q9R(B\
$A9SXTZ4(B")
(qdl "guai" "\
$A9T^b9U9V(B")
(qdl "guan" "\
$A9W9X9Y9Z9[BZYD]8qfw$(B\
$A9\9]9^9_9`9a^hdJnBpY(B")
(qdl "guang" "\
$A9b_[hfkW9can9d(B")
(qdl "gui" "\
$A9e9f9g9h9i9j9k?~f#p'(B\
$AvY9l9m9n9oXPbQe3jPs~(B\
$A9p9q9r9s9tH2X[hmjAw,(B")
(qdl "gun" "\
$A9u9vYrg5m^vg9w(B")
(qdl "guo" "\
$A9x9y9}NP[v_CaFqxre9z(B\
$AYe^b`~k=9{9|b#i$rd(B")
(qdl "ha" "\
$A9~n~8rO:(B")
(qdl "hai" "\
$A:Y?H`K:!:";9:#k\u0:$(B\
$A:%:&:'(B")
(qdl "han" "\
$A:(:)q|r@w}:*:+:,:-:.(B\
$A:/:9ZujOlJ:0:1c[:2:3(B\
$A:4:5:6:7:8::]U^~e+r%(B")
(qdl "hang" "\
$A:;:<:=?TPPg,gqq~Oocl(B")
(qdl "hao" "\
$A]o^6`c:>:?:@:A:E:Q`F(B\
$Ae)r::B:C8d:D:Fe0j;p)(B\
$Ar+(B")
(qdl "he" "\
$A:G:HZ-`@:I:J:K:L:M:N(B\
$A:O:P:Q:R:S:T[@cXf|jB(B\
$AnAr"rBtg:U:V:W:XOE[V(B")
(qdl "hei" "\
$A:Y:Z`K(B")
(qdl "hen" "\
$A:[:\:]:^(B")
(qdl "heng" "\
$A:_:`:a:b:cPP^?gqhl(B")
(qdl "hng" "\
$A:_(B")
(qdl "hong" "\
$A:d:e:fYj^0:g:h:i:j:k(B\
$A:lYd]&^.cHc|Z'(B")
(qdl "hou" "\
$A:m:n:opzsstWw?:p:q:r(B\
$A:s\)aaeKvW(B")
(qdl "hu" "\
$A:t:u:v:}O7_|c1doiulC(B\
$A:K:M:w:x:y:z:{:|:~;!(B\
$A`qb)iNl2lNp@pIu-uzw=(B\
$A;";#d0gz;$;%;&;'Y|a2(B\
$Abolflhlop-pWsK(B")
(qdl "hua" "\
$A;(;);*;/m9;+;,;.;mfh(B\
$An|;-;0hk(B")
(qdl "huai" "\
$A;1;2;3;4uW;5;.(B")
(qdl "huan" "\
$A;6b5;7;8;9[(]H`wd!e>(B\
$AgYoLw_;:;;;<;=;>;?;@(B\
$A;A;B;C[<_'d=dqeUvi(B")
(qdl "huang" "\
$A;D;EkA;F;G;H;I;J;K;L(B\
$A;MZraedRdjeXh+q%s(sr(B\
$Av|;N;O;P;Q(B")
(qdl "hui" "\
$A6i;R;S;T;U;VZ6_TcDgu(B\
$AjMr3wb;2;W;X\nd';Y;Z(B\
$A;[;\;];^;_;`;a;b;c;d(B\
$A;e;f@#\v^%_\`9d+egg@(B\
$Ahmm#s3(B")
(qdl "hun" "\
$A;g;h;icT;j;k;lbFguZ;(B\
$Adc(B")
(qdl "huo" "\
$A;mXe_+oAqk:M;n;o;pb7(B\
$AnX;q;r;s;t;u;v^=`kol(B\
$As6(B")
(qdl "ji" "\
$A;w;x;y;z;{;|;};~<!<"(B\
$A<#<$<%<&<'<(<)<8FZFd(B\
$AFfX"X@X^[T\8_4_R_sel(B\
$Ag\gajejwl4m6n?ozsGuR(B\
$A8o<*<+<,<-<.</<0<1<2(B\
$A<3<4<5<6<9=eX=Y%Z5]p(B\
$A^*a'aUi.ijj+q$sE8x<7(B\
$A<:<C<M^aj*r1wd<;<<<=(B\
$A<><?<@<A<B<D<E<F<G<H(B\
$A<I<J<K<LFkO5YJ\A\y_b(B\
$Ad)fwjip"t_uUv+v]vjwY(B")
(qdl "jia" "\
$A<N<O<P<Q<R<SGQP.Y$]g(B\
$Ad$eHgloXphsUtBuJ<T<U(B\
$A[#j)m"nrqJrL<V<W<X<Y(B\
$A=A=B=C=D=E=F=G=H=I=J(B\
$A=KXEY.^Xa5ahdPk8kNp((B\
$Ap}<Z<[<\<]<^(B")
(qdl "jian" "\
$A<_<`<a<b<c<d<e<f<g<h(B\
$A<i<j=%=&G3]Q]s^vdUgL(B\
$Aj'jypOvdw5<k<l<m<n<o(B\
$A<p<q<r<s<t<uZY`ne?e@(B\
$AhEj/mzo5qPsHteuB<v<w(B\
$A<x<y<z<{<|<}<~=!="=#(B\
$A=$='=(YTZIi%jpk&klu](B")
(qdl "jiang" "\
$A=)=*=+=,=-=.\|gVmdtx(B\
$A=/=0=1=2qp:g=3=4=5G?(B\
$Ad.g-jqt](B")
(qdl "jiao" "\
$A=6=7=8=9=:=;=<===>=?(B\
$A=LYU\4\zf/pTrTuSv^=@(B\
$A=Ca==A=B=D=E=F=G=H=I(B\
$A=J=KY.^XahdPk8p(=M=N(B\
$A=O=P=Q>uP#`]u4(B")
(qdl "jie" "\
$A=R=S=T=U=V=W=Z=a?,`.(B\
$A`5p\=X=Y=[=\=]=^=_=`(B\
$AYJZ&Z5^Wf<f]hnmYr!tI(B\
$AvZ=b=c<[=d=e=f=g=h=i(B\
$A=j=k=lr;w:<R(B")
(qdl "jin" "\
$A=m=n=o=p=q=r=s={qFqf(B\
$A=t=u=v=w>!Za]@bKb[h*(B\
$AiH=x=y=z=|=}=~>"]#`d(B\
$Af!gFjajn(B")
(qdl "jing" "\
$A>#>$>%>&>'>(>)>*>+>,(B\
$A>-]<c~kfl:>.>/>0>1XY(B\
$AYSZec=kB>">2>3>4>5>6(B\
$A>7>8>9>:>;b0eIerf:kV(B\
$Av&(B")
(qdl "jiong" "\
$Alg><>=eDjA(B")
(qdl "jiu" "\
$A>>>?>@`1cNp/tqw]>A>B(B\
$A>C>D>E>F>G>H>I>J>K>L(B\
$A>M>NYVhQhjpU(B")
(qdl "ju" "\
$A35>O>P>Q>R>S>T>]>b>c(B\
$AGR\Z^dh"i'o8qUtrvBw6(B\
$A=[>U>ViY9q>W>X>Y>Z\l(B\
$Ah[i7uav4>[>\>^>_>`>a(B\
$A>d>e>f>gYFZ*\Deaepi0(B\
$Ajxl+nRq@u6vD(B")
(qdl "juan" "\
$A>h>i>jH&d8nCoT>moC>k(B\
$A>l>n?![2azhpvA(B")
(qdl "jue" "\
$A>o`5`Y=@=E=G>p>q>r>s(B\
$A>t>u>v>w>xXJXcZ\[G^'(B\
$A`eaHb1f^gehviSl_ocuj(B\
$Au{(B")
(qdl "jun" "\
$A9j>y>z>{>|>}qds^we>~(B\
$A?!?"?#?$?%^\(B")
(qdl "ka" "\
$A?&?'_G?(?)X{kL(B")
(qdl "kai" "\
$A?*?+o4?,?-?.X\[n]\b}(B\
$AnxoGbi(B")
(qdl "kan" "\
$A?/?0?1?4j,mh<w?2?3Y)(B\
$A](c[G6n+(B")
(qdl "kang" "\
$A?5?6?7cJ?8?9?:?;XxnV(B")
(qdl "kao" "\
$Aej?<?=?>h`??j{nm(B")
(qdl "ke" "\
$A:G?@?A?B?C?D?E?F`>gf(B\
$Aipn'n]o}pbq=r$rrwA?G(B\
$A?H?I?Ja3?K?L?M?Nc!d[(B\
$Aflg<k4o>rB(B")
(qdl "ken" "\
$A?O?P?Q?Rv8qL(B")
(qdl "keng" "\
$A?S?To,(B")
(qdl "kong" "\
$A?UYEaGsm?V?W?X(B")
(qdl "kou" "\
$A?Y\Rmn?Z?[?\^"_5sX(B")
(qdl "ku" "\
$A?]?^?_XZ\%w<?`?a?b?c(B\
$A`7g+(B")
(qdl "kua" "\
$A?d?eY(?f?g?h(B")
(qdl "kuai" "\
$AXa;a?i?j?k?l[&_`avd+(B\
$AkZ(B")
(qdl "kuan" "\
$A?mwE?n(B")
(qdl "kuang" "\
$A?o?p?rZ2_Q?qZ?^E?s?t(B\
$A?u?vZw[[f~j\(B")
(qdl "kui" "\
$A?w?x?y?zc&?{?|?}X8Yg(B\
$AZs^q`-eSjRn%rq?~uM@!(B\
$A@"@#XQ]^`0c4qysq(B")
(qdl "kun" "\
$A@$@%g{o?u+vowU@&c'cM(B\
$A@'(B")
(qdl "kuo" "\
$A@(@)@*@+JJhirR(B")
(qdl "la" "\
$A@,@-@.@2eej9mG@/@0@1(B\
$ABdX]px@6(B")
(qdl "lai" "\
$A@3@4aAabd5o*@5d~jcmy(B\
$Aq.t%(B")
(qdl "lan" "\
$A@6@7@8@9@:@;@<@=@>a0(B\
$Al5ogq\@?@@@A@Bdmi-n=(B\
$A@C@D(B")
(qdl "lang" "\
$A`%@E@F@G@H@IcOo6o|rk(B\
$A@J@K]9]u(B")
(qdl "lao" "\
$A@L@M@N_ka@o)plu2@O@P(B\
$A@QAJhann@R@S@TBdBgql(B")
(qdl "le" "\
$A@_@U@VXl_7cnw&AK(B")
(qdl "lei" "\
$A@U@^@W@X@[YzfPgPi[@Y(B\
$A@Z@\@]Z3qg@_@`@au*`O(B")
(qdl "leng" "\
$A@b@c\(@dc6(B")
(qdl "li" "\
$AA(@e@f@g@h@i@j@k@l@v(B\
$AA']q^<`,fKfjgJn>p?r[(B\
$As;vbws@m@n@o@p@qY5c&(B\
$Ae"eNf2o.u7w/@r@s@t@u(B\
$A@w@x@y@z@{@|@}@~A!A"(B\
$AA#A$A%A&X*Y3[*[^\B]0(B\
$A^:_?`&a{d`h@h]ivlemB(B\
$An:p]p_rCsRsvtOuHv((B")
(qdl "lia" "\
$AA)(B")
(qdl "lian" "\
$AA*A+A,A-A.A/A0A1^Fe%(B\
$Al!qMs9vcA2A3]|gvqOA4(B\
$AA5A6A7dri,ig(B")
(qdl "liang" "\
$AA8A9A:A;A<A?\.]9i#uT(B\
$AA)A=wKA>A@AAABv&(B")
(qdl "liao" "\
$AACALADAEAFAGAHAI`Zb2(B\
$Ae<gTpSAJAK^$nIAMANAO(B\
$A^M(B")
(qdl "lie" "\
$A_VAQAPARASATY}[x^fd#(B\
$Atsuqw`(B")
(qdl "lin" "\
$AAUAVAWAXAYAZA[A\CX_x(B\
$AaWe`j%n,tTwkA]b^cAi](B\
$AA^A_]~l"uo(B")
(qdl "ling" "\
$AA`@bAaAbAcAdAeAfAgAh(B\
$AAiAjAn[9\_`rcvg1hZhy(B\
$Aj2qvrHtavlAkAlAm_J(B")
(qdl "liu" "\
$AAolVApAqArAsAtAuAvAw(B\
$Ad/e^frl<oVvLAxg8o3Ay(B\
$AB5B=pR(B")
(qdl "lo" "\
$A?)(B")
(qdl "long" "\
$AB!AzA{A|A}A~\WcqgghP(B\
$AkJmCq*B"B#B$[bE*(B")
(qdl "lou" "\
$AB'B%B&YM]d`6qorwwCB((B\
$AaPB)B*B6oNp|(B")
(qdl "lu" "\
$A_#``B+B,B-B.B/[dcrhS(B\
$AiqkMp5t5vTB0B1B2B3iV(B\
$AoeAyB4B5B6B7B8B9B:B;(B\
$AB<B=B>BL^$dKdueVh4i{(B\
$Aj$pXs|k*(B")
(qdl "lu:" "\
$AB@BABBBCBDBEBFYM^[kv(B\
$AoyqZBGBHBIBJBKBLB?cL(B\
$Ai5(B")
(qdl "luan" "\
$ABMBNBOBPYuf.hop=vGBQ(B\
$ABR(B")
(qdl "lue" "\
$ABSBTo2(B")
(qdl "lun" "\
$ABUBVBWBXBYBZB[`p(B")
(qdl "luo" "\
$AB^Bd^[B\B]B_B`BaBbb$(B\
$Ai!kao]BcY@Yyq'?)@SBe(B\
$ABfBg\}^{cxdpgsmQvC(B")
(qdl "m" "\
$A_<(B")
(qdl "ma" "\
$ABhBiBlD&D(fVBps!BjBk(B\
$ABmaoBn_ih?BoC4(B")
(qdl "mai" "\
$ABqv2Br]$BsBtBuBv[=(B")
(qdl "man" "\
$Ar)BqBwBxByB{C!w)w4Bz(B\
$Ar}B|B}B~\,a#gOlWo\(B")
(qdl "mang" "\
$AC"C#C$C%C&ZxmKC'd]r~(B")
(qdl "mao" "\
$AC(C)C*C+C,\bjsl8rzs1(B\
$AwVC-C.a9cwjDC/C0C1C2(B\
$AC3Ysh#k#m.n&(B")
(qdl "me" "\
$AC4wa(B")
(qdl "mei" "\
$AC5C6C7C8C9C:C;C<C=CS(B\
$A].aRb-dXi9oQpLC>C?C@(B\
$Ad<CACBCCCDCUqGwH(B")
(qdl "men" "\
$ACFCE^QnMlKm/CG(B")
(qdl "meng" "\
$ACIC%CHCJCK]y^+k|mfr5(B\
$At?CLCM[BcBrls7t;CNCO(B")
(qdl "mi" "\
$ACP_dCQCRCSCTCUCV^Bb((B\
$AlrwcwgCWXBetk_tMCXCY(B\
$ACZC[C\C]ZW`Wche5ti(B")
(qdl "mian" "\
$AC^C_C`CaCbCcCdCecfdE(B\
$AdOkommv<Cf(B")
(qdl "miao" "\
$A_wCgChCipECjCkClecg?(B\
$AhBm5mpCmCngQ(B")
(qdl "mie" "\
$AX?_cCoCps:sz(B")
(qdl "min" "\
$ACq\ea:gEgdgkCrCsCtCu(B\
$ACvcIc}m*v<w*(B")
(qdl "ming" "\
$ACKCwCxCyCzC{Z$\xdijT(B\
$An(u$C|(B")
(qdl "miu" "\
$AC}gQ(B")
(qdl "mo" "\
$AC~D!D"D#D$D%D&D'N^ZS(B\
$AbIfFwaD(:Q:YBvC0C;D)(B\
$AD*D+D,D-D.D/D0Mr\T]k(B\
$AiboRowq"qruvux(B")
(qdl "mou" "\
$A_hD1D2Y0gQmxrVvJD3(B")
(qdl "mu" "\
$AD#k$@QD4D5D6D7D8D2D9(B\
$AD:D;D<D=D>D?D@DADBXo(B\
$A[i\Ycenb(B")
(qdl "n" "\
$A_m`E(B")
(qdl "na" "\
$ADGDODCoUDDDEDFDHDIDX(B\
$A^`kGqD(B")
(qdl "nai" "\
$ADDDJDKDL\5DMDNX>Y&]A(B\
$AhM(B")
(qdl "nan" "\
$A`n`oDODPDQ`+i*knrotv(B")
(qdl "nang" "\
$ADR`lbN_-jY(B")
(qdl "nao" "\
$AX+DSE,_Nb.mPnsrMDTDU(B\
$A[qh'DVDW(B")
(qdl "ne" "\
$ADDDEDXZ+(B")
(qdl "nei" "\
$ADDDYDGDZ(B")
(qdl "nen" "\
$AD[m%(B")
(qdl "neng" "\
$AD\(B")
(qdl "ng" "\
$A_m`E(B")
(qdl "ni" "\
$AD]DXD^D_D`Da[hb%bunj(B\
$AvrDbDcl;lrDdDeDfDgDr(B\
$AY#jGm+m~(B")
(qdl "nian" "\
$ADhDiDjU3p$vSvsDkDlDm(B\
$Ai}DnDpX%[~(B")
(qdl "niang" "\
$ADoDp(B")
(qdl "niao" "\
$ADq\`fUtADgDrke(B")
(qdl "nie" "\
$ADsDtDuDvDwDxDyX?Zm^A(B\
$A`?r(t+uf(B")
(qdl "nin" "\
$ADzm%(B")
(qdl "ning" "\
$AD{D|D}D~E!\Q_Le8qwE"(B\
$AXz(B")
(qdl "niu" "\
$Af$E#E$E%E&apbn^V(B")
(qdl "nong" "\
$AE'E(E)Y/_fE*(B")
(qdl "nou" "\
$Aqq(B")
(qdl "nu" "\
$AE+f[feE,esf@E-(B")
(qdl "nu:" "\
$AE.nOm$t,(B")
(qdl "nuan" "\
$AE/(B")
(qdl "nue" "\
$AE0E1(B")
(qdl "nuo" "\
$ADHE2YPE3E4E5^y_vo;(B")
(qdl "o" "\
$A`8`^E6(B")
(qdl "ou" "\
$AE7E8E9E=GxZ)j1E:E;E<(B\
$Aqnbf(B")
(qdl "pa" "\
$A0GE>E?EI]b0RE@hKnYsa(B\
$AEAEBEC(B")
(qdl "pai" "\
$AEDEEEFEGY=FHEHEI]e__(B")
(qdl "pan" "\
$A0b7,EJEK0cELEMEVc]s4(B\
$AugENEOEPEQ^UczqHqa(B")
(qdl "pang" "\
$A0rERdh0uESETa]eLs&EU(B\
$AEV(B")
(qdl "pao" "\
$AEWEZE]kcEXEYE[E\^Kas(B\
$AbRpe(B")
(qdl "pei" "\
$AE^E_u,E`EaEbEcoBEdEe(B\
$AEf`N`zl7v,(B")
(qdl "pen" "\
$AEgEhdT(B")
(qdl "peng" "\
$AEiEjEkEl`XbqEmEnEoEp(B\
$AEqErEsEt\!s2EuEv(B")
(qdl "pi" "\
$A1Y;5EwExEyEzE{E|X'Z|(B\
$A`hg"nkE}E~F!F"F#F$Zi(B\
$AZp[/[}\1\EhAn<qTr7rg(B\
$Auy7qF%F&Xr[\_(_AbOq1(B\
$AqbF'F(F)dDfGj6n"(B")
(qdl "pian" "\
$A1bF*F+F,jztf1cfigBk](B\
$AudZRF-(B")
(qdl "piao" "\
$AF.F/XbgNs*F0FSfN]3ih(B\
$An)F1`Qft(B")
(qdl "pie" "\
$AF2F3k-X/\V(B")
(qdl "pin" "\
$AF4^Uf0F5F6F;fIr-F7i/(B\
$AF8jr(B")
(qdl "ping" "\
$AF9Y7f37kF:F;F<F=F>F?(B\
$AF@FAhRvR(B")
(qdl "po" "\
$A24FBFCFDFSZicxj7nG71(B\
$AFE[6p+XOn^sMFFFGFHFI(B\
$Agj(B")
(qdl "pou" "\
$AFJYv^e(B")
(qdl "pu" "\
$AFKFLFM`[8,FNFOFPFQYi(B\
$Ae'h1od1$FRFSFTFUFVFW(B\
$Ad_k+ohuk1)FXFY(B")
(qdl "qi" "\
$A<)FZF[F\F]F^F_F`FaFb(B\
$AFc]B`RhgiJl%uhFdFeFf(B\
$AFgFhFiFjFkFlFmFnFoXA(B\
$AY9[_\N\y]=^-a*d?fkgw(B\
$AgyjHlwq}rSr`tkw"wh;|(B\
$AFpFqFrFsFt\;a(g2h=tl(B\
$AFuFvFwFxFyFzF{F|F}X=(B\
$A]]c`m,mS(B")
(qdl "qia" "\
$AF~Y$]VqJ?(G!G"wD(B")
(qdl "qian" "\
$AG#G$G%G&G'G(G)G*G+Y](B\
$AZd\7a)c%e9e:e=m)G,G-(B\
$AG.G/G0G1]!^gjynTr/si(B\
$Aw\G2G3G4gWkIG5G6G7G8(B\
$AOKY;\M\gc;h}(B")
(qdl "qiang" "\
$A=+G9G:G;G<G@c^j(o:oO(B\
$Aojr^uDG=G>G?fMiIq_tG(B\
$AlA(B")
(qdl "qiao" "\
$AGAGBGCGDH8XdgXmMuN=6(B\
$AGEGFGGGHGLZ[\qa=c>iT(B\
$Aw3GIc8?GGJGKGMGNGOZ=(B")
(qdl "qie" "\
$AGPGQY$GRFvGSGT['c+c;(B\
$Af*j|oFsftr(B")
(qdl "qin" "\
$AGUGVGWt@GXGYGZG[G\G](B\
$A\K`:`_b[dZiUo7qfq{r{(B\
$AG^G_^l_D(B")
(qdl "qing" "\
$AG`GaGbGcGdGe`ur_vkGf(B\
$AGgGhGiiQwtGjGk\\v%GW(B\
$AGlm`s@sdtl(B")
(qdl "qiong" "\
$AGmGnZv\dq7rKsLu<vF(B")
(qdl "qiu" "\
$A9jGoGpGqdPi1rGvz3pGr(B\
$AGsGtGuGvY4[OaleOeYjd(B\
$Ar0rxtCw|t\(B")
(qdl "qu" "\
$AGwGxGyGzG{G|G}Z0a+jo(B\
$AlnrPtpwqG~[>^!^>aih3(B\
$Ak,kTmap6q3s=vDH!H"H#(B\
$A\DH$H%cVPg(B")
(qdl "quan" "\
$AH&c*H'H(H)H*H+H,H-Z9(B\
$A\uizn}ris\w\H.g9n0H/(B\
$AH0(B")
(qdl "que" "\
$AH1H2cZH3H4H5H6H7H8cW(B\
$Am((B")
(qdl "qun" "\
$AeRH9H:we(B")
(qdl "ran" "\
$AH;H<rEwWH=H>\[(B")
(qdl "rang" "\
$AHBH?l|p&H@HAHC(B")
(qdl "rao" "\
$AHD\if,hcHEHF(B")
(qdl "re" "\
$AHGHt_vHH(B")
(qdl "ren" "\
$AHIHJHKHNHL\so~HMHOHP(B\
$AHQHRXp]Xb?imqE(B")
(qdl "reng" "\
$AHSHT(B")
(qdl "ri" "\
$AHU(B")
(qdl "rong" "\
$AHVHWHXHYHZH[H\H]H^aI(B\
$AauiEk@rnH_(B")
(qdl "rou" "\
$AH`Hat[uew7Hb(B")
(qdl "ru" "\
$AHcHdHeHfHg^8`ie&o(q`(B\
$Ar,HhHiHjHkHl]jd2dagH(B")
(qdl "ruan" "\
$AHmHnkC(B")
(qdl "rui" "\
$A^(HoHpHq\GhDn#r8(B")
(qdl "run" "\
$AHrHs(B")
(qdl "ruo" "\
$AHtHuY<sh(B")
(qdl "sa" "\
$AHvXmj}HwHxX&k[l*(B")
(qdl "sai" "\
$AHyHzH{K<`gH|(B")
(qdl "san" "\
$AH}H~k'I!I"bLtVv1(B")
(qdl "sang" "\
$AI#I%I$^zm_r*(B")
(qdl "sao" "\
$AI&I'gRgXk}v~I(I)IR\#(B\
$Ap~(B")
(qdl "se" "\
$AH{I*I+I,XDo$p#(B")
(qdl "sen" "\
$AI-(B")
(qdl "seng" "\
$AI.(B")
(qdl "sha" "\
$AI/I0I1I2I3I4I7I<j}o!(B\
$ApptDvhI5I6OC_~`Dl&v.(B")
(qdl "shai" "\
$AI8u'I+I9(B")
(qdl "shan" "\
$AI:I;I<I=I>I?I@IHU$[o(B\
$A\Odzf)k~nLt.uGwT2t5'(B\
$AIAIB5%ICIDIEIFIGIIX_(B\
$AZ([7fSfslxp^s5w-(B")
(qdl "shang" "\
$AIJIKILL@idlXu|IMINIO(B\
$A[pIPg4IQ(B")
(qdl "shao" "\
$AGJIRISITIUrYsbt9IVIW(B\
$AIX\fh<IYIZI[I\UY[?d{(B")
(qdl "she" "\
$AI]I^b&n4I_I`U[Y\IaIb(B\
$AIcIdIeIfIgIhXGd\l(wj(B")
(qdl "shei" "\
$AK-(B")
(qdl "shen" "\
$A2NIiIjIkIlImInIoIpZ7(B\
$A]7tVIqIuJ2IrIsItZE_S(B\
$AdIorIvIwIx]Xi)kOrW(B")
(qdl "sheng" "\
$AIyIzI{I|I}J$sOI~dEJ!(B\
$Amr3KJ"J#J%aSjI(B")
(qdl "shi" "\
$AJ&J'J(J)J*J+J,J-Pj]i(B\
$Au'vuJ.J/J0J1J2J3J4J5(B\
$AJ6[u]*lBveJ7J8J9J:J;(B\
$AJ<u9J=J>J?J@JAJBJCJD(B\
$AJEJFJGJHJIJJJKJLJMJN(B\
$AJOJPJQJRJSJTKFVEZV_1(B\
$Aixj[nfs'sBs_3WV3(B")
(qdl "shou" "\
$AJUJlJVJWJXt<JYJZJ[J\(B\
$AJ]J^awg7(B")
(qdl "shu" "\
$AJ_J`JaJbJcJdJeJfJgJh(B\
$AJiY?]D^sf-g#k(l/qbJj(B\
$AJkJl[SoxJmJnJoJpJqJr(B\
$AJsJtJ}JuJvJwJxJyJzJ{(B\
$AJ|J~K!SaX-cpdxkr(B")
(qdl "shua" "\
$AK"`'K#(B")
(qdl "shuai" "\
$AK$K%K&BJK's0(B")
(qdl "shuan" "\
$AK(K)cEdL(B")
(qdl "shuang" "\
$AK*K+cqfWK,(B")
(qdl "shui" "\
$AK-K.K/K0K5(B")
(qdl "shun" "\
$AK1K2K3K4(B")
(qdl "shuo" "\
$AK5J}K6K7K8]t^weyiCne(B")
(qdl "si" "\
$AK9K:K;K<K=K>K?XK[L_P(B\
$AdygAoHp8rOK@J3KAKBKC(B\
$AKDKEKFKGKHY9Yncactf&(B\
$AfalkqjsS2^(B")
(qdl "song" "\
$AKIZ!]?aBaTbldAKJKKc$(B\
$Aq5KLKMKNKOKP(B")
(qdl "sou" "\
$AKQKR`2bHdQl,oKrtKS[E(B\
$A^4`Un$KT(B")
(qdl "su" "\
$AKUKVvUKWKXKYKZK[K\K](B\
$AK^K_K`KuYmZU]x`<c:d3(B\
$Asyv"(B")
(qdl "suan" "\
$AKab!KbKc(B")
(qdl "sui" "\
$ADrKd]4e!mun!KeKfKgKl(B\
$AKhKiKjKkKmKnZGedl](B")
(qdl "sun" "\
$AKo]%axb8KpKqi>v@(B")
(qdl "suo" "\
$AI/KrKsKtKu`B`Jf6hxj}(B\
$Am|tHKvKwKxKy_o(B")
(qdl "ta" "\
$AKzK{K|K}L$dbe]nhuAK~(B\
$AL!w#L"L#MX`*cKdpi=m3(B")
(qdl "tai" "\
$AL%L&L(L'["^7fflFuLvX(B\
$A_>L)L*L+L,L-kDnQ(B")
(qdl "tan" "\
$AL.L/L0L1L25/L3L4L5L6(B\
$AL7L8[0e#j<oDobq{L9L:(B\
$AL;l~ncL<L=L>L?(B")
(qdl "tang" "\
$AL@LKo&o[qmtJLALBLCLD(B\
$ALELFLGb<dgh)iLs%s+u1(B\
$ALHLILJYN`{LL(B")
(qdl "tao" "\
$ALMLNLOLP_6h:lbwRLQLR(B\
$ALSLTLUX;_{d,LVLW(B")
(qdl "te" "\
$ALX_/l}m+o+(B")
(qdl "tei" "\
$A_/(B")
(qdl "teng" "\
$ALYLZL[L\kx(B")
(qdl "ti" "\
$AL]L^L_L`LeLaLbLcLd\h(B\
$Ag0g>pCu.LfLgLhLiLjLk(B\
$AYCc)eQqS(B")
(qdl "tian" "\
$ALlLm5hLnLoLpLqcYn1nd(B\
$ALrLscCie^](B")
(qdl "tiao" "\
$ALtY,lv5wLuLv\frhsTv6(B\
$AvfwXq;LwLxtP(B")
(qdl "tie" "\
$ALyL{]FLzwQ(B")
(qdl "ting" "\
$AL|L}L~M!M"M#M$M%\p]c(B\
$AfCrQv*M&M'hhn.nz(B")
(qdl "tong" "\
$A62M(`L61M)M*M+M,M-M.(B\
$AM/Y!YZ[m\ma<d|mEM0M1(B\
$AM2M3M4bz(B")
(qdl "tou" "\
$AM5M6M7w;nWM8(B")
(qdl "tu" "\
$AM9M:M;M<M=M>M?M@]1]K(B\
$Au)MAMBnJMC\"(B")
(qdl "tuan" "\
$AMDME^Rn6eh(B")
(qdl "tui" "\
$AMF_/MGMHMIMJMKlU(B")
(qdl "tun" "\
$AMLjU6ZMMMNb=k`Y[MJ(B")
(qdl "tuo" "\
$AMOMPMQX16fMRMSMTMUY"(B\
$A[gc{h^iRmHnhu"uIv>MV(B\
$AMWbUFGMXMYhXsj(B")
(qdl "wa" "\
$A0<MZM[M\M]f4M^M_XtM`(B\
$Akp(B")
(qdl "wai" "\
$AMaaKMb(B")
(qdl "wan" "\
$AMcMdMeX`rjMfMgMhMiMj(B\
$A\9f}CdMkMlMmMnMoMpMq(B\
$A]8]Rg:g~kdn5B{MrMs(B")
(qdl "wang" "\
$AMt^LC"MuMvM|MwMxMyXh(B\
$Ac/i~wMMzM{M}(B")
(qdl "wei" "\
$AM~N!N"N#N.N/YKZq]Z^1(B\
$AaKeTlPN$N%N&N'N(N)N*(B\
$AN+N,[W`m`xa!aMcGcmd6(B\
$AN-N0N1N2N3ZCZsb+d"f8(B\
$Agbh8l?ptt:v[N4N5N6N7(B\
$AN8N9N:N;N<N=N>N?N@RE(B\
$Ab,j&(B")
(qdl "wen" "\
$ANANBNCNDNENFcSh7v)NG(B\
$ANHNIXXNJck(B")
(qdl "weng" "\
$ANKNL]nNM^3(B")
(qdl "wo" "\
$ANNNONPNQYA]+`8NRNSNT(B\
$ANUNVa"dWk?mRv;(B")
(qdl "wu" "\
$A6qNWNXNYNZN[N\N]X#Zy(B\
$A[Xl6MvN^N_N`NaNbNcNf(B\
$A_md4rZwyNdNeNgNhNiNj(B\
$AXubPbdbheCe|jupDNkNl(B\
$ANmNnNoNpNqNrNsZc\Le;(B\
$AfDfph;lIpMpmvH(B")
(qdl "xi" "\
$A@0F\NtNuNvNwNxNyNzN{(B\
$AN|N}N~O!O"O#O$O%O&O'(B\
$AO(O)O*O+O,YRYb[-\g]>(B\
$A^I_qd;d@fRiXjXl$l(ld(B\
$Ap*q6ras#s,t8tKtQtbu5(B\
$Auhw{O-O.O/O0O1ZtjjO2(B\
$AO3O4]_]{aceogtl{O5O6(B\
$AO7O8b>cRlyt*(B")
(qdl "xia" "\
$AO9O:_HO;O<O=O>O?O@OA(B\
$AareZh&hTmLp}wo;#OBOC(B\
$AODOEsA(B")
(qdl "xian" "\
$AOFOGOHOIOJOK]2e_k/ll(B\
$AtLu#uQOLOMONOOOPOQOR(B\
$AOSf5pBpoO3O4OTOUY~^:(B\
$Aa}l^r9sZuP<{OVOWOXOY(B\
$AOZO[O\O]O^O_\Ha-v1(B")
(qdl "xiang" "\
$AO`OaObOcOdOeOfOg\<]Y(B\
$Afxg==5OhOiOjbTOkOlOm(B\
$AbCv_wOOnOoOpOqOrOss-(B")
(qdl "xiao" "\
$AOtOuOvOwOxOyOzO{O|P$(B\
$A_XdlePfgg/hIhUrYsowL(B\
$AO}aEO~P!scP"P#P%P&P'(B")
(qdl "xie" "\
$AP(P)P*P+P,P-P.P/P0P1(B\
$AP2P3R6YI[D_"gSr!P4Q*(B\
$A=bFuP5P6P7P8P9P:P;P<(B\
$AYt[F^/b3b]dMe,ebg%i?(B\
$AiGus(B")
(qdl "xin" "\
$AP=P>P?P@PAPBPCPD\0j?(B\
$Al'vNQ0obPEPFX6(B")
(qdl "xing" "\
$APGPHPIPJPKPLPMPNPOPP(B\
$AZj\~b<mJJ!PQ_)PRPSPT(B\
$APU\tc,(B")
(qdl "xiong" "\
$APVPWPXPYPZ\:P[P\(B")
(qdl "xiu" "\
$AP]P^P__]bJbSp<uww[K^(B\
$AP`3tPaPbPcPdPea6de(B")
(qdl "xu" "\
$APfPgPhPiPjPkSu[Wgom9(B\
$AmlqcPlPmZ<d0hrtZu/Pn(B\
$APoPpPqPrPsPtPuPvPwPx(B\
$A[Cd*dSlc^#(B")
(qdl "xuan" "\
$APyPzP{YXZN]f^ojQlSP|(B\
$AP}P~dvh/pgQ!Q"H/Q#Q$(B\
$AcydVi8lEm[ngo`(B")
(qdl "xue" "\
$AOwQ%Q&Q'Q(`em4u=Q)w((B\
$AQ*ZJ(B")
(qdl "xun" "\
$A;gQ+Q,[w^9b4jVq?u8Q-(B\
$AQ.Q/Q0Q1Q2[(\wa>b~d-(B\
$Ad1v`?#Q3Q4Q5Q6Q7Q8Yc(B\
$A^&a_(B")
(qdl "ya" "\
$AQ9Q:Q;Q<Q=Q>QEQF[khb(B\
$AQ?Q@QAQBQCQDXsa,gpm}(B\
$AF%GFpiqbQGQHT~^keBf+(B\
$Ak2m<(B")
(qdl "yan" "\
$AQIQJQKQLQMQ`Rs[3]NaC(B\
$Ab{cUdNfLkYkgG&QNQOQP(B\
$AQQQRQSQTQUQVQWQXZg\>(B\
$AcFe{i\s[QYQZQ[Q\Q]XI(B\
$AX_Y2YHYp[1g|n;wJwzw|(B\
$AQ^Q_QaQbQcQdQeQfQgQh(B\
$AQiXMZ]dYjLlMu&wP(B")
(qdl "yang" "\
$AQjQkQlQmcsw1QnQoQpQq(B\
$AQrQsQta`l>lHrUQuQvQw(B\
$AQxQyQzbsm&(B")
(qdl "yao" "\
$AQ{Q|Q}R*T<X2_:g[=DLU(B\
$AQ~R!R"R#R$R%R&X3afgr(B\
$AiwkHo"tmw%R'R(aJhCq:(B\
$AE1R)R+T?jWpN(B")
(qdl "ye" "\
$AR,R-R.R4P0R/^^ntR0R1(B\
$AR2;)QJR3R5R6R7R8R9R:(B\
$AW'XLZKZ~jJlG(B")
(qdl "yi" "\
$AR;R<R=R>R?R@RARBRN_^(B\
$A`fb"dtl%wpI_RCRDRERF(B\
$ARGRHRIRJRKRLRMZ1[]\h(B\
$A_WaZbBbyeFj]mtpj6jN2(B\
$ARORPRQRRRSRT\Sl=nFt/(B\
$At}0,RURVRWRXRYRZR[R\(B\
$AR]R^R_R`RaRbRcRdReRf(B\
$ARgRhRiRjRkRlRmRnRoXW(B\
$AXfXnX}Y+[|\2^2^D^H^Z(B\
$A_._=`Ia;bxc(fdgKilis(B\
$AlZoWonpyq/q4rft`th(B")
(qdl "yin" "\
$AQLRpRqRrRsRtRuRv\'`3(B\
$Ad&dNk3nwRwRxRyRz[4[_(B\
$A[sa~b9v/v8R{R|R}R~_E(B\
$Aq+r>S!X7\aq?(B")
(qdl "ying" "\
$AS"S#S$S%S&S']:^|`Sb_(B\
$Agxh,pPs?S(S)S*S+S,S-(B\
$AS.S/Yx\c\~]S]vd^dke-(B\
$Ai:S0S1[+q(r#S2S3kt(B")
(qdl "yo" "\
$AS4S}`!(B")
(qdl "yong" "\
$AS5S6S7S8S9S:[U\-c<g_(B\
$Ao^w+wS`/S;S<S=S>S?S@(B\
$ASASBY8p.SC(B")
(qdl "you" "\
$ASDSESFSGX|_OSHSISJSK(B\
$ASLSMSN]/]5^LhVi`p`rD(B\
$ArvrxtmvOSOSPSQXU],k;(B\
$AnpwnSRSSSTSUSVSWY'`s(B\
$Ae6rJwx(B")
(qdl "yu" "\
$ASXSYSufzl6pvSZS[S\S](B\
$AS^S_S`SaSbScSdSeSfSg(B\
$AShSiSkX.ZD]G^maNa|bE(B\
$Af%h$jlkil#q>rusDt't((B\
$Av'SjSlSmSnSoSpXqY6`t(B\
$A`vbWpuqAv99HN5N>SqSr(B\
$ASsStSvSwSxSySzS{S|S}(B\
$AS~T!T"T#T$T%T&V`X9ZM(B\
$A]R]wb@cPewe}jElOlYl[(B\
$Am2nZpApVrb(B")
(qdl "yuan" "\
$AT'T(T)msp0snT*T+T,T-(B\
$AT.T/T0T1T2T3T4T5\+\>(B\
$A`wcdfBiZk<s"v=T6T7T8(B\
$AT9T:[y^rh%(B")
(qdl "yue" "\
$AT;T<@VK5T=T>T?T@TATB(B\
$ATCTDY_e.h]iPk>na(B")
(qdl "yun" "\
$ATNk5T1TETFTGTH\?g!j@(B\
$As^TITJaqif>yTKTLTMTO(B\
$ATP[)c"c3h9lY(B")
(qdl "za" "\
$ATQTz^Y_FTRTST[U&(B")
(qdl "zai" "\
$ATTTUTVg^TWTXWPaLTYTZ(B")
(qdl "zan" "\
$At"tXT[T\^YjCtuT]T^h6(B\
$AvI(B")
(qdl "zang" "\
$AT_U`j0f`2XT`Ta^J(B")
(qdl "zao" "\
$ATbTcTdTeTfTgThTigXTj(B\
$ATkTlTmTnTo_p(B")
(qdl "ze" "\
$ATpTqTrTsU&XS_u`}eEsP(B\
$Aset72`XFj>(B")
(qdl "zei" "\
$ATt(B")
(qdl "zen" "\
$ATuZZ(B")
(qdl "zeng" "\
$ATvTwTxgUn@TyW[j5o-(B")
(qdl "zha" "\
$A2iTzT{T|U&^j_8_ni+w~(B\
$AT}T~U!U"U(`)U#mD@/U$(B\
$AU%U'U)Wu_epdrF(B")
(qdl "zhai" "\
$A2`U*U+5TTqU,U-<@U.U/(B\
$AmNq)(B")
(qdl "zhan" "\
$AU0U1U2U3U4U<Z^l9U5U6(B\
$AU7U8U9^x2|U:U;U=U>U?(B\
$AU@(B")
(qdl "zhang" "\
$AUAUBUCUDUE[5b/fQh0s/(B\
$A3$UFUGXkUHUIUJUKULUM(B\
$AUNUOa$aV(B")
(qdl "zhao" "\
$A3/30UPUQWE_znHURUSW&(B\
$AUTUUUVUWUXUYZ/h~sI(B")
(qdl "zhe" "\
$AUZU[rXU\U]U^ZX_!i|m](B\
$AU_U`q^twUaUbUchOpQWE(B")
(qdl "zhei" "\
$AUb(B")
(qdl "zhen" "\
$AUdUeUfUgUhUiUjUkUl]h(B\
$Ad%dZhei)i;kSluspUmUn(B\
$AUogGitn3p!UpUqUrUs[Z(B\
$Ajbk^p2(B")
(qdl "zheng" "\
$A6!UtUuUvUwUxUyUzU}V"(B\
$Aa?agn[o#s]vkU{U|U~V!(B\
$AV#V$Z:(B")
(qdl "zhi" "\
$AJOV%V&V'V(V)V*V+V,V-(B\
$AV.V/V8V;V@X4hYkUlsV0(B\
$AV1V2V3V4V5V6[z^}tjuE(B\
$Au\V7V9V:V<V=\FagekhW(B\
$Airlmmiu%J6V>V?VAVBVC(B\
$AVDVEVFVGVHVIVJVKVLVM(B\
$AVNVOZl[$`ybeeifohNhd(B\
$Aiyj^kyotp:pkrNuYutv#(B")
(qdl "zhong" "\
$AVPVQVRVSVTVUbloqs.t1(B\
$AVVVWZ#u`VXVYVZ(B")
(qdl "zhou" "\
$AV[V\V]V^V_V`_zVaf(mX(B\
$AVbVcVdVeVfVgVh]'f{g'(B\
$AkPt&tmt|(B")
(qdl "zhu" "\
$AViVjVkVlVmVnVoY*[%\o(B\
$Ad(dsiFiMnyJuVpVqVrV~(B\
$ApqsCt6unJtVsVtVuVvVw(B\
$Ad>qRwfVxVyVzV{V|V}W!(B\
$AW"W#W$Xy\QhLlDpfsgtc(B")
(qdl "zhua" "\
$ANNW%W&(B")
(qdl "zhuai" "\
$AW'W*R7`\(B")
(qdl "zhuan" "\
$AW(W)r'W*4+W+W,W-_ybM(B\
$Acg(B")
(qdl "zhuang" "\
$AW.W/W0W1^J41W2W3W4YW(B\
$Am0(B")
(qdl "zhui" "\
$AW5W6W7fmv?W8W9W:c7gD(B")
(qdl "zhun" "\
$AMMW;kFq8W<(B")
(qdl "zhuo" "\
$AW=W>W?W@Y>dClL=IVxWA(B\
$AWBWCWDWEWFWGZB_*d7e*(B\
$Alzm=om(B")
(qdl "zi" "\
$AV(WHWIWJWKWLWMWNWPZQ(B\
$A_ZaQf\g;j"j_oEtRttu~(B\
$Av$v7vvwZWOWQWRWS\kf"(B\
$AhwovqhsJWTWUWVm'mv(B")
(qdl "zong" "\
$AWWWXWYWZW[hHkjW\YLW](B\
$AtU(B")
(qdl "zou" "\
$AW^ZAZn[8fcvmW_W`Wa(B")
(qdl "zu" "\
$AWb]OWcWdWeo_WfWgWhWi(B\
$AY^(B")
(qdl "zuan" "\
$AWjurWkgZW,_,(B")
(qdl "zui" "\
$A6Q>WWlu~WmWnWo^)(B")
(qdl "zun" "\
$AWpWqiWw._$(B")
(qdl "zuo" "\
$AWw`\WAWrsP4iWsWtTdWu(B\
$AWvWxWyZh_rbtkQlqu!(B")
