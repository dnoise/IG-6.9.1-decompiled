// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.x;

import android.os.Looper;

// Referenced classes of package com.instagram.common.x:
//            b

public final class a
{

    private a()
    {
    }

    a(byte byte0)
    {
        this();
    }

    public static a a()
    {
        return b.a;
    }

    private static void a(String s)
    {
        a(c(), s);
    }

    private static void a(boolean flag, String s)
    {
        if (!flag)
        {
            throw new IllegalStateException(s);
        } else
        {
            return;
        }
    }

    public static boolean c()
    {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    public final void b()
    {
        a("This operation must be run on UI thread.");
    }
}
