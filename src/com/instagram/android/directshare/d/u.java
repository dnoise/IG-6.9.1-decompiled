// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.d;

import com.instagram.android.h.f;

// Referenced classes of package com.instagram.android.directshare.d:
//            t, c

final class u
    implements Runnable
{

    final t a;

    u(t t1)
    {
        a = t1;
        super();
    }

    public final void run()
    {
        boolean flag;
        if (f.c().e() == com.instagram.realtimeclient.RealtimeEventHandler.Status.SUBSCRIBED)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag)
        {
            c.e(a.a);
        }
    }
}
