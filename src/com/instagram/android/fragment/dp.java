// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.os.Handler;
import com.instagram.android.a.m;
import com.instagram.common.j.a;
import com.instagram.common.j.d;

// Referenced classes of package com.instagram.android.fragment:
//            dn

final class dp
    implements d
{

    final dn a;

    dp(dn dn1)
    {
        a = dn1;
        super();
    }

    private void a()
    {
        dn.b(a).removeMessages(0);
        dn.b(a).sendEmptyMessageDelayed(0, 300L);
    }

    private boolean a(com.instagram.user.c.d d1)
    {
        return a.d().a(d1.a);
    }

    public final volatile boolean a(a a1)
    {
        return a((com.instagram.user.c.d)a1);
    }

    public final void b(a a1)
    {
        a();
    }
}
