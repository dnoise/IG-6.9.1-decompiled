// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.i;

import com.facebook.d.b.b;
import java.util.Random;

// Referenced classes of package com.instagram.common.i:
//            d, e, a

public final class c
{

    private static b a;

    public static b a()
    {
        if (a == null)
        {
            a = new com.facebook.d.b.c(new d(), new e(), com.instagram.common.i.a.a(), new Random());
        }
        return a;
    }

    public static void a(String s, String s1)
    {
        a().b(s, s1);
    }

    public static void a(String s, String s1, Throwable throwable)
    {
        a().b(s, s1, throwable);
    }

    public static void a(String s, Throwable throwable)
    {
        a().b(s, throwable);
    }

    public static void b(String s, String s1)
    {
        a().a(s, s1);
    }

    public static void b(String s, String s1, Throwable throwable)
    {
        a().a(s, s1, throwable);
    }
}
