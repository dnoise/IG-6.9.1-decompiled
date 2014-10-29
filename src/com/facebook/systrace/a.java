// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.systrace;


// Referenced classes of package com.facebook.systrace:
//            e, b, TraceDirect

public final class a
{

    public static void a()
    {
        if (!b())
        {
            return;
        } else
        {
            TraceDirect.a();
            return;
        }
    }

    public static void a(String s)
    {
        if (!b())
        {
            return;
        } else
        {
            TraceDirect.a(s);
            return;
        }
    }

    public static void a(String s, int i)
    {
        if (!b())
        {
            return;
        } else
        {
            TraceDirect.a(s, i);
            return;
        }
    }

    public static void a(String s, String s1, int i)
    {
        if (!b())
        {
            return;
        } else
        {
            TraceDirect.a(s, s1, i);
            return;
        }
    }

    public static void b(String s, int i)
    {
        if (!b())
        {
            return;
        } else
        {
            TraceDirect.b(s, i);
            return;
        }
    }

    public static boolean b()
    {
        return e.a();
    }

    static 
    {
        e.b();
        com.facebook.systrace.b.a();
    }
}
