// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.c;

import com.instagram.android.h.f;

// Referenced classes of package com.instagram.android.directshare.c:
//            f, c

final class g
    implements Runnable
{

    final com.instagram.android.directshare.c.f a;

    g(com.instagram.android.directshare.c.f f1)
    {
        a = f1;
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
            c.k(a.a);
        }
    }
}
