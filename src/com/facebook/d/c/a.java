// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.d.c;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public final class a
{

    private static final Map a;
    private static final Map b;

    public static final String a(Locale locale)
    {
        String s = (String)b.get(locale.toString());
        if (s == null)
        {
            s = (String)a.get(locale.getLanguage());
        }
        if (s == null)
        {
            s = "en_US";
        }
        return s;
    }

    static 
    {
        a = new HashMap();
        b = new HashMap();
        a.put("af", "af_ZA");
        a.put("ar", "ar_AR");
        a.put("az", "az_AZ");
        a.put("be", "be_BY");
        a.put("bg", "bg_BG");
        a.put("bn", "bn_IN");
        a.put("bs", "bs_BA");
        a.put("ca", "ca_ES");
        a.put("ck", "ck_US");
        a.put("cs", "cs_CZ");
        a.put("cy", "cy_GB");
        a.put("da", "da_DK");
        a.put("de", "de_DE");
        a.put("el", "el_GR");
        a.put("eo", "eo_EO");
        a.put("et", "et_EE");
        a.put("es", "es_LA");
        a.put("eu", "eu_ES");
        a.put("fa", "fa_IR");
        a.put("fi", "fi_FI");
        a.put("fo", "fo_FO");
        a.put("fr", "fr_FR");
        a.put("fy", "fy_NL");
        a.put("ga", "ga_IE");
        a.put("gl", "gl_ES");
        a.put("gu", "gu_IN");
        a.put("he", "he_IL");
        a.put("hi", "hi_IN");
        a.put("hr", "hr_HR");
        a.put("hu", "hu_HU");
        a.put("hy", "hy_AM");
        a.put("id", "id_ID");
        a.put("in", "id_ID");
        a.put("is", "is_IS");
        a.put("it", "it_IT");
        a.put("iw", "he_IL");
        a.put("ja", "ja_JP");
        a.put("ka", "ka_GE");
        a.put("km", "km_KH");
        a.put("kn", "kn_IN");
        a.put("ko", "ko_KR");
        a.put("ku", "ku_TR");
        a.put("la", "la_VA");
        a.put("lv", "lv_LV");
        a.put("mk", "mk_MK");
        a.put("ml", "ml_IN");
        a.put("mr", "mr_IN");
        a.put("ms", "ms_MY");
        a.put("nb", "nb_NO");
        a.put("ne", "ne_NP");
        a.put("nl", "nl_NL");
        a.put("nn", "nn_NO");
        a.put("pa", "pa_IN");
        a.put("pl", "pl_PL");
        a.put("ps", "ps_AF");
        a.put("pt", "pt_BR");
        a.put("ro", "ro_RO");
        a.put("ru", "ru_RU");
        a.put("sk", "sk_SK");
        a.put("sl", "sl_SI");
        a.put("sq", "sq_AL");
        a.put("sr", "sr_RS");
        a.put("sv", "sv_SE");
        a.put("sw", "sw_KE");
        a.put("ta", "ta_IN");
        a.put("te", "te_IN");
        a.put("th", "th_TH");
        a.put("tl", "tl_PH");
        a.put("tr", "tr_TR");
        a.put("uk", "uk_UA");
        a.put("vi", "vi_VN");
        a.put("zh", "zh_CN");
        b.put("es_ES", "es_ES");
        b.put("fr_CA", "fr_CA");
        b.put("pt_PT", "pt_PT");
        b.put("zh_TW", "zh_TW");
        b.put("zh_HK", "zh_HK");
        b.put("fb_HA", "fb_HA");
    }
}
