// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.h;

import android.content.Intent;
import android.support.v4.app.bx;
import com.instagram.common.d.a;

// Referenced classes of package com.instagram.android.h:
//            f, a

final class c
    implements a
{

    final com.instagram.android.h.a a;

    private c(com.instagram.android.h.a a1)
    {
        a = a1;
        super();
    }

    c(com.instagram.android.h.a a1, byte byte0)
    {
        this(a1);
    }

    public final void a(Intent intent)
    {
        if (intent.getBooleanExtra("PreferenceChangeBroadcasts.REALTIME_CONNECTION_NOTIFICATION_PREF_VALUE", false))
        {
            com.instagram.android.h.a.a(a, f.c().e());
            return;
        } else
        {
            com.instagram.android.h.a.a(a).a(com.instagram.android.h.a.a(), 42);
            return;
        }
    }
}
