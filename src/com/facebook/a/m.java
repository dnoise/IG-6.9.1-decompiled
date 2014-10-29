// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.a;

import android.content.Context;
import android.os.PowerManager;
import com.facebook.a.c.g;

// Referenced classes of package com.facebook.a:
//            l, i, d

final class m extends Thread
{

    final i a;
    private Throwable b;
    private d c;
    private final l d[];

    public m(i j, d d1)
    {
        this(j, new l[0]);
        c = d1;
    }

    public transient m(i j, l al[])
    {
        a = j;
        super();
        b = null;
        d = al;
    }

    private android.os.PowerManager.WakeLock b()
    {
        if (!(new g(i.a(a))).a("android.permission.WAKE_LOCK"))
        {
            return null;
        } else
        {
            android.os.PowerManager.WakeLock wakelock = ((PowerManager)i.a(a).getSystemService("power")).newWakeLock(1, "ACRA wakelock");
            wakelock.setReferenceCounted(false);
            wakelock.acquire();
            return wakelock;
        }
    }

    public final Throwable a()
    {
        return b;
    }

    public final void run()
    {
        android.os.PowerManager.WakeLock wakelock = null;
        wakelock = b();
        if (c == null) goto _L2; else goto _L1
_L1:
        a.a(i.a(a), c);
_L6:
        if (wakelock != null && wakelock.isHeld())
        {
            wakelock.release();
        }
_L4:
        return;
_L2:
        a.a(i.a(a), d);
        continue; /* Loop/switch isn't completed */
        Throwable throwable;
        throwable;
        b = throwable;
        if (wakelock == null || !wakelock.isHeld()) goto _L4; else goto _L3
_L3:
        wakelock.release();
        return;
        Exception exception;
        exception;
        if (wakelock != null && wakelock.isHeld())
        {
            wakelock.release();
        }
        throw exception;
        if (true) goto _L6; else goto _L5
_L5:
    }
}
