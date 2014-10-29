// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.d.g;

import android.os.SystemClock;

// Referenced classes of package com.facebook.d.g:
//            a

public final class b
    implements a
{

    private static final b a = new b();

    private b()
    {
    }

    public static b a()
    {
        return a;
    }

    public final long now()
    {
        return SystemClock.elapsedRealtime();
    }

}
