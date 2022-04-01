function r = function_r(RTz,RTx,RTy,RSy,RFy,RFx,LTz,LTx,LTy,LSy,LFy,LFx,RAy,RAx,RFAy,LAy,LAx,LFAy,CHz)
%FUNCTION_R
%    R = FUNCTION_R(RTZ,RTX,RTY,RSY,RFY,RFX,LTZ,LTX,LTY,LSY,LFY,LFX,RAY,RAX,RFAY,LAY,LAX,LFAY,CHZ)

%    This function was generated by the Symbolic Math Toolbox version 8.2.
%    01-May-2020 23:43:40

t2 = LFy+LSy+LTy;
t3 = cos(LTz);
t4 = sin(LTx);
t5 = sin(LTz);
t6 = sin(LTy);
t7 = cos(RTz);
t8 = sin(RTy);
t9 = cos(LTy);
t10 = cos(RTy);
t11 = sin(RTx);
t12 = sin(RTz);
t13 = cos(t2);
t14 = sin(t2);
t15 = sin(RSy);
t16 = cos(LSy);
t17 = sin(LSy);
t18 = cos(RSy);
t19 = cos(LTx);
t20 = cos(RTx);
t21 = t9.*t19.*9.6283e1;
t22 = t9.*t16.*t19.*9.5e1;
t23 = t8.*t15.*t20.*9.5e1;
t59 = t10.*t20.*9.6283e1;
t60 = t10.*t18.*t20.*9.5e1;
t61 = t6.*t17.*t19.*9.5e1;
t24 = t21+t22+t23-t59-t60-t61;
t25 = cos(LFx);
t26 = sin(LFx);
t27 = t7.*t10;
t62 = t8.*t11.*t12;
t28 = t27-t62;
t29 = t3.*t6;
t30 = t4.*t5.*t9;
t31 = t29+t30;
t32 = t16.*t31.*9.5e1;
t33 = t3.*t6.*9.6283e1;
t34 = t3.*t9;
t65 = t4.*t5.*t6;
t35 = t34-t65;
t36 = t17.*t35.*9.5e1;
t37 = t7.*t8;
t38 = t10.*t11.*t12;
t39 = t37+t38;
t40 = t4.*t5.*t9.*9.6283e1;
t63 = t15.*t28.*9.5e1;
t64 = t7.*t8.*9.6283e1;
t66 = t18.*t39.*9.5e1;
t67 = t10.*t11.*t12.*9.6283e1;
t41 = t32+t33+t36+t40-t63-t64-t66-t67;
t42 = t19.*t25;
t90 = t4.*t13.*t26;
t43 = t42-t90;
t44 = t10.*t12;
t45 = t7.*t8.*t11;
t46 = t44+t45;
t47 = t15.*t46.*9.5e1;
t48 = t5.*t6;
t71 = t3.*t4.*t9;
t49 = t48-t71;
t50 = t5.*t9;
t51 = t3.*t4.*t6;
t52 = t50+t51;
t53 = t8.*t12.*9.6283e1;
t54 = t8.*t12;
t75 = t7.*t10.*t11;
t55 = t54-t75;
t56 = t18.*t55.*9.5e1;
t57 = t3.*t4.*t9.*9.6283e1;
t72 = t16.*t49.*9.5e1;
t73 = t17.*t52.*9.5e1;
t74 = t5.*t6.*9.6283e1;
t76 = t7.*t10.*t11.*9.6283e1;
t58 = t47+t53+t56+t57-t72-t73-t74-t76+4.28e2./5.0;
t68 = t19.*t26;
t69 = t4.*t13.*t25;
t70 = t68+t69;
t77 = t3.*t13;
t128 = t4.*t5.*t14;
t78 = t77-t128;
t79 = sin(CHz);
t80 = sin(RAx);
t81 = cos(CHz);
t82 = cos(RAx);
t83 = sin(RAy);
t84 = t5.*t13;
t85 = t3.*t4.*t14;
t86 = t84+t85;
t87 = cos(RFAy);
t88 = cos(RAy);
t89 = sin(RFAy);
t91 = t5.*t43;
t135 = t3.*t14.*t26;
t92 = t91-t135;
t93 = t79.*8.3e1;
t94 = t79.*t80;
t95 = t81.*t82.*t83;
t96 = t94+t95;
t115 = t87.*t96.*9.0e1;
t116 = t79.*t80.*1.03e2;
t117 = t81.*t82.*t83.*1.03e2;
t118 = t81.*t88.*t89.*9.0e1;
t97 = t32+t33+t36+t40+t93-t115-t116-t117-t118;
t98 = t3.*t43;
t99 = t5.*t14.*t26;
t100 = t98+t99;
t101 = t81.*8.3e1;
t102 = t80.*t81;
t122 = t79.*t82.*t83;
t103 = t102-t122;
t104 = t79.*t82.*t83.*1.03e2;
t105 = t79.*t88.*t89.*9.0e1;
t121 = t80.*t81.*1.03e2;
t123 = t87.*t103.*9.0e1;
t106 = t57-t72-t73-t74+t101+t104+t105-t121-t123+2.14e2./5.0;
t107 = t4.*t25;
t108 = t13.*t19.*t26;
t109 = t107+t108;
t110 = t83.*t89.*9.0e1;
t126 = t82.*t88.*1.03e2;
t127 = t82.*t87.*t88.*9.0e1;
t111 = t21+t22-t61+t110-t126-t127+6.17e2./4.0;
t112 = t5.*t70;
t113 = t3.*t14.*t25;
t114 = t112+t113;
t119 = t3.*t70;
t154 = t5.*t14.*t25;
t120 = t119-t154;
t124 = t4.*t26;
t151 = t13.*t19.*t25;
t125 = t124-t151;
t129 = sin(LAx);
t130 = cos(LAx);
t131 = sin(LAy);
t132 = cos(LFAy);
t133 = cos(LAy);
t134 = sin(LFAy);
t136 = t79.*t129;
t137 = t81.*t130.*t131;
t138 = t136+t137;
t139 = t132.*t138.*9.0e1;
t140 = t79.*t129.*1.03e2;
t141 = t81.*t130.*t131.*1.03e2;
t142 = t81.*t133.*t134.*9.0e1;
t143 = -t32-t33-t36-t40+t93+t139+t140+t141+t142;
t144 = t81.*t129;
t155 = t79.*t130.*t131;
t145 = t144-t155;
t146 = t132.*t145.*9.0e1;
t147 = t81.*t129.*1.03e2;
t156 = t79.*t130.*t131.*1.03e2;
t157 = t79.*t133.*t134.*9.0e1;
t148 = -t57+t72+t73+t74+t101+t146+t147-t156-t157-2.14e2./5.0;
t149 = t131.*t134.*9.0e1;
t152 = t130.*t133.*1.03e2;
t153 = t130.*t132.*t133.*9.0e1;
t150 = t21+t22-t61+t149-t152-t153+6.17e2./4.0;
t158 = cos(RFy);
t159 = t15.*t28;
t160 = t18.*t39;
t161 = t159+t160;
t162 = t158.*t161;
t163 = sin(RFy);
t164 = t18.*t28;
t167 = t15.*t39;
t180 = t164-t167;
t165 = t163.*t180;
t166 = t162+t165;
t168 = cos(LFy);
t169 = t16.*t31;
t170 = t17.*t35;
t171 = t169+t170;
t172 = sin(LFy);
t173 = t17.*t31;
t176 = t16.*t35;
t174 = t173-t176;
t175 = t168.*t171;
t221 = t172.*t174;
t177 = t175-t221;
t178 = cos(RFx);
t179 = sin(RFx);
t181 = t15.*t46;
t182 = t18.*t55;
t183 = t181+t182;
t184 = t158.*t183;
t185 = t18.*t46;
t188 = t15.*t55;
t197 = t185-t188;
t186 = t163.*t197;
t187 = t184+t186;
t189 = t16.*t49;
t190 = t17.*t52;
t191 = t189+t190;
t192 = t17.*t49;
t195 = t16.*t52;
t193 = t192-t195;
t194 = t168.*t191;
t269 = t172.*t193;
t196 = t194-t269;
t198 = t6.*t17.*t19;
t205 = t9.*t16.*t19;
t199 = t198-t205;
t200 = t168.*t199;
t201 = t6.*t16.*t19;
t202 = t9.*t17.*t19;
t203 = t201+t202;
t204 = t172.*t203;
t206 = t8.*t15.*t20;
t211 = t10.*t18.*t20;
t207 = t206-t211;
t208 = t8.*t18.*t20;
t209 = t10.*t15.*t20;
t210 = t208+t209;
t212 = t158.*t207;
t213 = t163.*t210;
t214 = t212+t213;
t215 = t81.*3.325044359949303e-1;
t216 = t79.*4.47148288973384e-3;
t217 = t15.*t39.*2.421702577101817e-1;
t218 = t15.*t28.*1.123407055344318e1;
t219 = t163.*(t164-t167);
t220 = t162+t219;
t222 = t25.*t177.*6.492184199408534e-2;
t223 = t132.*t138.*1.614654837346853;
t224 = t3.*t9.*5.085931558935361e-2;
t225 = t7.*t10.*5.085931558935361e-2;
t226 = t79.*t82.*2.462779890156316e-2;
t227 = t87.*t96.*1.614654837346853;
t228 = t79.*t129.*5.286961554710604;
t229 = t12.*t20.*3.419771863117871e-2;
t230 = t7.*t8.*1.653860456273764e1;
t231 = t79.*t80.*5.286961554710604;
t232 = t17.*t31.*2.421702577101817e-1;
t233 = t18.*t39.*1.123407055344318e1;
t234 = t81.*t130.*t131.*5.286961554710604;
t235 = t81.*t133.*t134.*1.614654837346853;
t236 = t5.*t19.*t25.*4.450097169412759e-1;
t237 = t81.*t82.*t83.*5.286961554710604;
t238 = t81.*t88.*t89.*1.614654837346853;
t239 = t81.*t129.*t131.*2.462779890156316e-2;
t240 = t5.*t19.*t26.*6.492184199408534e-2;
t241 = t12.*t20.*t179.*6.492184199408534e-2;
t242 = t10.*t11.*t12.*1.653860456273764e1;
t243 = t131.*1.516434305027461e-2;
t244 = t4.*1.409632446134347e-2;
t245 = t83.*1.516434305027461e-2;
t246 = t200+t204;
t247 = t172.*(t198-t205).*1.201429657794677;
t248 = t130.*t133.*5.286961554710604;
t249 = t82.*t88.*5.286961554710604;
t250 = t10.*t20.*1.653860456273764e1;
t251 = t129.*t133.*2.462779890156316e-2;
t252 = t11.*t178.*4.450097169412759e-1;
t253 = t130.*t132.*t133.*1.614654837346853;
t254 = t6.*t16.*t19.*2.421702577101817e-1;
t255 = t9.*t17.*t19.*2.421702577101817e-1;
t256 = t82.*t87.*t88.*1.614654837346853;
t257 = t10.*t18.*t20.*1.123407055344318e1;
t258 = t6.*t17.*t19.*8.376592944655682e1;
t259 = t8.*t18.*t20.*2.421702577101817e-1;
t260 = t10.*t15.*t20.*2.421702577101817e-1;
t261 = t26.*t246.*4.450097169412759e-1;
t262 = t163.*t207.*1.201429657794677;
t288 = t11.*3.419771863117871e-2;
t289 = t25.*t246.*6.492184199408534e-2;
t290 = t168.*t203.*1.201429657794677;
t291 = t158.*t210.*1.201429657794677;
t292 = t178.*t214.*6.492184199408534e-2;
t293 = t9.*t19.*7.974439543726236e1;
t294 = t179.*t214.*4.450097169412759e-1;
t295 = t4.*t25.*4.450097169412759e-1;
t296 = t6.*t19.*5.085931558935361e-2;
t297 = t80.*t88.*2.462779890156316e-2;
t298 = t8.*t20.*5.085931558935361e-2;
t299 = t131.*t134.*1.614654837346853;
t300 = t4.*t26.*6.492184199408534e-2;
t301 = t83.*t89.*1.614654837346853;
t302 = t11.*t179.*6.492184199408534e-2;
t303 = t9.*t16.*t19.*8.376592944655682e1;
t304 = t8.*t15.*t20.*1.123407055344318e1;
t263 = t243+t244+t245+t247+t248+t249+t250+t251+t252+t253+t254+t255+t256+t257+t258+t259+t260+t261+t262-t288-t289-t290-t291-t292-t293-t294-t295-t296-t297-t298-t299-t300-t301-t302-t303-t304-4.352358428390368e1;
t264 = t79.*3.325044359949303e-1;
t265 = t15.*t46.*1.123407055344318e1;
t266 = t15.*t55.*2.421702577101817e-1;
t267 = t163.*(t185-t188);
t268 = t184+t267;
t270 = t25.*t196.*6.492184199408534e-2;
t271 = t81.*t130.*2.462779890156316e-2;
t272 = t3.*t19.*1.409632446134347e-2;
t273 = t5.*t9.*5.085931558935361e-2;
t274 = t10.*t12.*5.085931558935361e-2;
t275 = t17.*t49.*2.421702577101817e-1;
t276 = t8.*t12.*1.653860456273764e1;
t277 = t18.*t55.*1.123407055344318e1;
t278 = t3.*t4.*t9.*7.974439543726236e1;
t279 = t7.*t20.*t178.*4.450097169412759e-1;
t280 = t79.*t130.*t131.*5.286961554710604;
t281 = t79.*t133.*t134.*1.614654837346853;
t282 = t3.*t4.*t6.*5.085931558935361e-2;
t283 = t79.*t82.*t83.*5.286961554710604;
t284 = t79.*t88.*t89.*1.614654837346853;
t285 = t79.*t129.*t131.*2.462779890156316e-2;
t286 = t7.*t8.*t11.*5.085931558935361e-2;
t287 = t158.*t197.*1.201429657794677;
t305 = t178.*t268.*6.492184199408534e-2;
t306 = t179.*t268.*4.450097169412759e-1;
t307 = t178.*t220.*6.492184199408534e-2;
t308 = t179.*t220.*4.450097169412759e-1;
t309 = t158.*(t164-t167).*1.201429657794677;
t310 = t215+t216+t217+t218+t222+t223+t224+t225+t226+t227+t228+t229+t230+t231+t232+t233+t234+t235+t236+t237+t238+t239+t240+t241+t242+t307+t308+t309-t3.*t6.*7.974439543726236e1-t5.*t19.*1.409632446134347e-2-t18.*t28.*2.421702577101817e-1-t16.*t31.*8.376592944655682e1-t16.*t35.*2.421702577101817e-1-t17.*t35.*8.376592944655682e1-t81.*t88.*1.516434305027461e-2-t26.*t177.*4.450097169412759e-1-t79.*t130.*2.462779890156316e-2-t81.*t133.*1.516434305027461e-2-t161.*t163.*1.201429657794677-t168.*t174.*1.201429657794677-t171.*t172.*1.201429657794677-t4.*t5.*t6.*5.085931558935361e-2-t4.*t5.*t9.*7.974439543726236e1-t8.*t11.*t12.*5.085931558935361e-2-t12.*t20.*t178.*4.450097169412759e-1-t80.*t81.*t83.*2.462779890156316e-2+5.117718631178707;
r = [t41.*t78-t58.*t86-t14.*t19.*t24;t24.*t109-t41.*t92-t58.*t100;-t24.*t125+t58.*t120+t114.*(t32+t33+t36+t40-t63-t64-t66-t67);t78.*t97-t86.*t106-t14.*t19.*t111;-t92.*t97-t100.*t106+t109.*t111;t97.*t114+t106.*t120-t111.*t125;-t78.*t143+t86.*t148-t14.*t19.*t150;t92.*t143+t100.*t148+t109.*t150;-t114.*t143-t120.*t148-t125.*t150;-t86.*(t81.*(-4.47148288973384e-3)+t264+t265+t266+t270+t271+t272+t273+t274+t275+t276+t277+t278+t279+t280+t281+t282+t283+t284+t285+t286+t287-t5.*t6.*7.974439543726236e1-t7.*t20.*3.419771863117871e-2-t18.*t46.*2.421702577101817e-1-t16.*t49.*8.376592944655682e1-t16.*t52.*2.421702577101817e-1-t17.*t52.*8.376592944655682e1-t80.*t81.*5.286961554710604-t81.*t82.*2.462779890156316e-2-t79.*t88.*1.516434305027461e-2-t87.*t103.*1.614654837346853-t81.*t129.*5.286961554710604-t79.*t133.*1.516434305027461e-2-t26.*t196.*4.450097169412759e-1-t132.*t145.*1.614654837346853-t163.*t183.*1.201429657794677-t168.*t193.*1.201429657794677-t172.*t191.*1.201429657794677+t178.*t187.*6.492184199408534e-2+t179.*t187.*4.450097169412759e-1-t7.*t10.*t11.*1.653860456273764e1-t3.*t19.*t25.*4.450097169412759e-1-t3.*t19.*t26.*6.492184199408534e-2-t7.*t20.*t179.*6.492184199408534e-2-t79.*t80.*t83.*2.462779890156316e-2+4.280136037177862e1)-t78.*(t215+t216+t217+t218+t222+t223+t224+t225+t226+t227+t228+t229+t230+t231+t232+t233+t234+t235+t236+t237+t238+t239+t240+t241+t242-t3.*t6.*7.974439543726236e1-t5.*t19.*1.409632446134347e-2-t18.*t28.*2.421702577101817e-1-t16.*t31.*8.376592944655682e1-t16.*t35.*2.421702577101817e-1-t17.*t35.*8.376592944655682e1-t81.*t88.*1.516434305027461e-2-t26.*t177.*4.450097169412759e-1-t79.*t130.*2.462779890156316e-2-t81.*t133.*1.516434305027461e-2-t161.*t163.*1.201429657794677+t158.*t180.*1.201429657794677-t168.*t174.*1.201429657794677-t171.*t172.*1.201429657794677+t166.*t178.*6.492184199408534e-2+t166.*t179.*4.450097169412759e-1-t4.*t5.*t6.*5.085931558935361e-2-t4.*t5.*t9.*7.974439543726236e1-t8.*t11.*t12.*5.085931558935361e-2-t12.*t20.*t178.*4.450097169412759e-1-t80.*t81.*t83.*2.462779890156316e-2+5.117718631178707)+t14.*t19.*t263;-t109.*t263+t92.*t310-t100.*(t81.*(-4.47148288973384e-3)+t264+t265+t266+t270+t271+t272+t273+t274+t275+t276+t277+t278+t279+t280+t281+t282+t283+t284+t285+t286+t287+t305+t306-t5.*t6.*7.974439543726236e1-t7.*t20.*3.419771863117871e-2-t18.*t46.*2.421702577101817e-1-t16.*t49.*8.376592944655682e1-t16.*t52.*2.421702577101817e-1-t17.*t52.*8.376592944655682e1-t80.*t81.*5.286961554710604-t81.*t82.*2.462779890156316e-2-t79.*t88.*1.516434305027461e-2-t87.*t103.*1.614654837346853-t81.*t129.*5.286961554710604-t79.*t133.*1.516434305027461e-2-t26.*t196.*4.450097169412759e-1-t132.*t145.*1.614654837346853-t163.*t183.*1.201429657794677-t168.*t193.*1.201429657794677-t172.*t191.*1.201429657794677-t7.*t10.*t11.*1.653860456273764e1-t3.*t19.*t25.*4.450097169412759e-1-t3.*t19.*t26.*6.492184199408534e-2-t7.*t20.*t179.*6.492184199408534e-2-t79.*t80.*t83.*2.462779890156316e-2+4.280136037177862e1);-t114.*t310+t125.*(t243+t244+t245+t247+t248+t249+t250+t251+t252+t253+t254+t255+t256+t257+t258+t259+t260-t288-t289-t290-t291-t292-t293-t294-t295-t296-t297-t298-t299-t300-t301-t302-t303-t304+t26.*(t200+t204).*4.450097169412759e-1+t163.*(t206-t211).*1.201429657794677-4.352358428390368e1)+t120.*(t81.*(-4.47148288973384e-3)+t264+t265+t266+t270+t271+t272+t273+t274+t275+t276+t277+t278+t279+t280+t281+t282+t283+t284+t285+t286+t305+t306-t5.*t6.*7.974439543726236e1-t7.*t20.*3.419771863117871e-2-t18.*t46.*2.421702577101817e-1-t16.*t49.*8.376592944655682e1-t16.*t52.*2.421702577101817e-1-t17.*t52.*8.376592944655682e1-t80.*t81.*5.286961554710604-t81.*t82.*2.462779890156316e-2-t79.*t88.*1.516434305027461e-2-t87.*t103.*1.614654837346853-t81.*t129.*5.286961554710604-t79.*t133.*1.516434305027461e-2-t26.*t196.*4.450097169412759e-1-t132.*t145.*1.614654837346853-t163.*t183.*1.201429657794677-t168.*t193.*1.201429657794677-t172.*t191.*1.201429657794677+t158.*(t185-t188).*1.201429657794677-t7.*t10.*t11.*1.653860456273764e1-t3.*t19.*t25.*4.450097169412759e-1-t3.*t19.*t26.*6.492184199408534e-2-t7.*t20.*t179.*6.492184199408534e-2-t79.*t80.*t83.*2.462779890156316e-2+4.280136037177862e1)];
