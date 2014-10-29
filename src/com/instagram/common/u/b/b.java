// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.u.b;


// Referenced classes of package com.instagram.common.u.b:
//            e, g

public final class b
    implements e
{

    private static e a;
    private final String b;

    private b(String s)
    {
        b = s;
    }

    public static e a()
    {
        return a;
    }

    public static void a(String s)
    {
        if (a != null)
        {
            throw new RuntimeException("C2DMConstants has already been initialized.");
        } else
        {
            a = new b(s);
            return;
        }
    }

    public final String b()
    {
        return "com.google.android.c2dm.intent.REGISTER";
    }

    public final String c()
    {
        return "com.google.android.gsf";
    }

    public final String d()
    {
        return "com.google.android.c2dm.intent.RETRY";
    }

    public final String e()
    {
        return "com.google.android.c2dm.intent.RECEIVE";
    }

    public final String f()
    {
        return "com.google.android.c2dm.intent.REGISTRATION";
    }

    public final String g()
    {
        return b;
    }

    public final g h()
    {
        return g.b;
    }
}
