// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.d;

import com.instagram.common.s.b;

// Referenced classes of package com.instagram.d:
//            b

public final class a extends Enum
{

    public static final a a;
    public static final a b;
    public static final a c;
    private static final a g[];
    private final String d;
    private final String e;
    private final String f = "567067343352427";

    private a(String s, int i, String s1, String s2)
    {
        super(s, i);
        d = s1;
        e = s2;
    }

    public static String c()
    {
        return "567067343352427";
    }

    public static a d()
    {
        switch (b.a[com.instagram.common.s.b.a().ordinal()])
        {
        default:
            return a;

        case 1: // '\001'
            return c;

        case 2: // '\002'
            return b;
        }
    }

    public static a valueOf(String s)
    {
        return (a)Enum.valueOf(com/instagram/d/a, s);
    }

    public static a[] values()
    {
        return (a[])g.clone();
    }

    public final String a()
    {
        return d;
    }

    public final String b()
    {
        return e;
    }

    static 
    {
        a = new a("PROD", 0, "06WDGFKCrfUzxWmofXz9uZ8H0uOWvN7M1R-THbQ", "https://www.facebook.com/mobile/instagram_android_crash_logs/");
        b = new a("INHOUSE", 1, "06WDGFKCrfUwS1BI418HU7liXsKpfyhFXdtaP9A", "https://www.facebook.com/mobile/instagram_android_beta_crash_logs/");
        c = new a("DEBUG", 2, "06WDGFKCrfUyKjrEV2hg0-PMws5JD_92YXMOQIQ", "https://www.facebook.com/mobile/instagram_android_beta_crash_logs/");
        a aa[] = new a[3];
        aa[0] = a;
        aa[1] = b;
        aa[2] = c;
        g = aa;
    }
}
