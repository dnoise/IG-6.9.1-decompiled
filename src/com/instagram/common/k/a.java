// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.k;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.view.Choreographer;
import android.view.Display;

// Referenced classes of package com.instagram.common.k:
//            b

public final class a
{

    private static a a;
    private final android.view.Choreographer.FrameCallback b = new b(this);
    private final long c;
    private boolean d;
    private long e;

    private a(Context context)
    {
        c = (long)(1000000000D / (double)b(context));
        d = false;
        e = 0x7fffffffffffffffL;
    }

    public static a a(Context context)
    {
        com/instagram/common/k/a;
        JVM INSTR monitorenter ;
        a a1;
        if (a == null)
        {
            a = new a(context);
        }
        a1 = a;
        com/instagram/common/k/a;
        JVM INSTR monitorexit ;
        return a1;
        Exception exception;
        exception;
        throw exception;
    }

    static void a(a a1)
    {
        a1.b();
    }

    private static float b(Context context)
    {
        if (android.os.Build.VERSION.SDK_INT > 17)
        {
            return ((DisplayManager)context.getSystemService("display")).getDisplay(0).getRefreshRate();
        } else
        {
            return 60F;
        }
    }

    private void b()
    {
        long l = System.nanoTime();
        long l1 = l - e - c;
        if (l1 >= c)
        {
            long l2 = l1 / c;
            if (l2 >= 1L)
            {
                Long.valueOf(l2);
            }
        }
        e = l;
    }

    public final void a()
    {
        if (d)
        {
            throw new IllegalStateException("Shall not attach the watch twice");
        } else
        {
            Choreographer.getInstance().postFrameCallback(b);
            d = true;
            return;
        }
    }
}
