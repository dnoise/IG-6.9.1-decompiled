// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.crop;

import android.os.Handler;
import android.os.SystemClock;

// Referenced classes of package com.instagram.creation.photo.crop:
//            s

final class u
    implements Runnable
{

    final float a = 300F;
    final long b;
    final float c;
    final float d;
    final float e;
    final float f;
    final s g;

    u(s s1, float f1, long l, float f2, float f3, float f4, 
            float f5)
    {
        g = s1;
        b = l;
        c = f2;
        d = f3;
        e = f4;
        f = f5;
        super();
    }

    public final void run()
    {
        long l = SystemClock.elapsedRealtime();
        float f1 = Math.min(a, l - b);
        float f2 = c + f1 * d;
        g.a(f2, e, f);
        if (f1 < a)
        {
            g.l.post(this);
        }
    }
}
