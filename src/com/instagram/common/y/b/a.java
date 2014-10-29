// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.y.b;

import android.os.SystemClock;

// Referenced classes of package com.instagram.common.y.b:
//            b

public final class a
{

    public a()
    {
    }

    public static a a()
    {
        return com.instagram.common.y.b.b.a();
    }

    public static long b()
    {
        return SystemClock.currentThreadTimeMillis();
    }

    public static long c()
    {
        return SystemClock.elapsedRealtime();
    }

    public static long d()
    {
        return System.currentTimeMillis();
    }
}
