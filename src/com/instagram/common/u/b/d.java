// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.u.b;


// Referenced classes of package com.instagram.common.u.b:
//            e, g

public final class d
    implements e
{

    private static d a;
    private final String b;

    private d(String s)
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
            throw new RuntimeException("NokiaConstants has already been initialized.");
        } else
        {
            a = new d(s);
            return;
        }
    }

    public final String b()
    {
        return "com.nokia.pushnotifications.intent.REGISTER";
    }

    public final String c()
    {
        return "com.nokia.pushnotifications.service";
    }

    public final String d()
    {
        return "com.google.android.gcm.intent.RETRY";
    }

    public final String e()
    {
        return "com.nokia.pushnotifications.intent.RECEIVE";
    }

    public final String f()
    {
        return "com.nokia.pushnotifications.intent.REGISTRATION";
    }

    public final String g()
    {
        return b;
    }

    public final g h()
    {
        return g.c;
    }
}
