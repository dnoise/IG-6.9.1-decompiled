// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.common.effectfilter;

import com.facebook.au;
import com.instagram.cliffjumper.edit.common.ui.a;

// Referenced classes of package com.instagram.cliffjumper.edit.common.effectfilter:
//            c, d, f

public final class e
{

    public static c a(a a1)
    {
        return c.c().a(0).b("Normal").b(au.filter_normal).a("Normal").a(a1).a();
    }

    public static c[] a()
    {
        f f1 = new f();
        c ac[] = new c[20];
        ac[0] = a(((a) (f1)));
        ac[1] = c.c().a(24).b("Amaro").b(au.filter_amaro).a("Amaro").a("map", "amaro/map.png").a("overlay_map", "amaro/overlay_map.png").a("blackboard", "shared/blackboard.pkm").a(f1).a();
        ac[2] = c.c().a(29).b("Mayfair").b(au.filter_mayfair).a("Mayfair").c("mayfair/border.png").a("map", "mayfair/colorGradient.png").a("glowField", "mayfair/glowField.pkm").a("overlay", "mayfair/overlayMap100.png").a("colorOverlay", "mayfair/colorOverlay.png").a(f1).a();
        ac[3] = c.c().a(23).b("Rise").b(au.filter_rise).a("Rise").a("map", "rise/map.png").a("overlay_map", "shared/overlay_map.png").a("blackboard", "shared/blackboard.pkm").a(f1).a();
        ac[4] = c.c().a(26).b("Hudson").b(au.filter_hudson).a("Hudson").c("hudson/border.png").a("map", "hudson/map.png").a("blowout", "hudson/blowout.pkm").a("overlay_map", "shared/overlay_map.png").a(f1).a();
        ac[5] = c.c().a(25).b("Valencia").b(au.filter_valencia).a("Valencia").a("map", "valencia/map.png").a("gradient_map", "valencia/gradient_map.png").a(f1).a();
        ac[6] = c.c().a(1).b("X-Pro II").b(au.filter_xproii).a("XPro2").c("x_pro2/border.png").a("map", "x_pro2/map.png").a("vignette_map_plus_darker", "shared/vignette_map_plus_darker.png").a(f1).a();
        ac[7] = c.c().a(27).b("Sierra").b(au.filter_sierra).a("Sierra").c("sierra/border.png").a("map", "sierra/map.png").a("smoke", "sierra/smoke.pkm").a("vignette", "sierra/vignette.pkm").a("overlay_map", "amaro/overlay_map.png").a("soft_light", "sierra/soft_light.png").a(f1).a();
        ac[8] = c.c().a(28).b("Willow").b(au.filter_willow).a("Willow").a("glowMap", "willow/glowField.pkm").a("overlayMap", "willow/overlayMap81.png").a("vignette", "willow/willowVignette.pkm").a("softLightMap", "willow/willowSoftLight100.png").a("map", "willow/willowMap.png").a(f1).a();
        ac[9] = c.c().a(2).b("Lo-Fi").b(au.filter_lofi).a("LoFi").c("lo_fi/border.png").a("map", "lo_fi/map.png").a("vignette_map", "lo_fi/vignette_map.png").a(f1).a();
        ac[10] = c.c().a(3).b("Earlybird").b(au.filter_earlybird).a("Earlybird").c("earlybird/border.png").a("map", "earlybird/map_2d.png").a("curves_map", "earlybird/curves_map.png").a("vignette_map_plus_darker", "shared/vignette_map_plus_darker.png").a("overlay_map", "earlybird/overlay_map.png").a("blowout_map", "earlybird/blowout_map.png").a(f1).a();
        ac[11] = c.c().a(18).b("Sutro").b(au.filter_sutro).a("Sutro").c("shared/border_black.png").a("map", "sutro/map.png").a("metal", "sutro/metal.pkm").a("edge_burn", "sutro/edge_burn.pkm").a("black_overlay_map", "shared/black_overlay_map.png").a("soft_light_map", "shared/soft_light_map.png").a(f1).a();
        ac[12] = c.c().a(19).b("Toaster").b(au.filter_toaster).a("Toaster").c("shared/border_white.png").a("map", "toaster/map.png").a("metal", "toaster/metal.pkm").a("color_shift_map", "toaster/color_shift_map.png").a("overlay_map", "toaster/overlay_map.png").a("soft_light_map", "toaster/soft_light_map.png").a(f1).a();
        ac[13] = c.c().a(22).b("Brannan").b(au.filter_brannan).a("Brannan").c("brannan/border.png").a("map", "brannan/map.png").a("luma_map", "brannan/luma_map.png").a("screen_map", "brannan/screen_map.png").a("blowout_map", "brannan/blowout_map.png").a("contrast_map", "brannan/contrast_map.png").a(f1).a();
        ac[14] = c.c().a(10).b("Inkwell").b(au.filter_inkwell).a("Inkwell").c("shared/border_white.png").a("map", "inkwell/map.png").a(f1).a();
        ac[15] = c.c().a(20).b("Walden").b(au.filter_walden).a("Walden").c("shared/border_black.png").a("map", "walden/map.png").a("vignette_map", "shared/vignette_map.png").a(f1).a();
        ac[16] = c.c().a(21).b("Hefe").b(au.filter_hefe).a("Hefe").c("shared/border_black.png").a("map", "hefe/map.png").a("metal", "hefe/metal.pkm").a("edge_burn", "shared/edge_burn.pkm").a("gradient_map", "hefe/gradient_map.png").a("soft_light_map", "hefe/soft_light_map.png").a(f1).a();
        ac[17] = c.c().a(15).b("Nashville").b(au.filter_nashville).a("Nashville").c("nashville/border.png").a("map", "nashville/map.png").a(f1).a();
        ac[18] = c.c().a(14).b("1977").b(au.filter_1977).a("Nineteen77").c("shared/border_white.png").a("map", "1977/map.png").a("screen_map", "1977/screen_map.png").a(f1).a();
        ac[19] = c.c().a(16).b("Kelvin").b(au.filter_kelvin).a("LordKelvin").c("lord_kelvin/border.png").a("map", "lord_kelvin/map.png").a(f1).a();
        return ac;
    }
}
