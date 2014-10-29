// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.d;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.instagram.feed.d.l;

// Referenced classes of package com.instagram.android.directshare.d:
//            c

final class o extends BroadcastReceiver
{

    final c a;

    o(c c1)
    {
        a = c1;
        super();
    }

    public final void onReceive(Context context, Intent intent)
    {
        c.b(a);
        if (intent.getAction().equals(l.a(c.c(a))))
        {
            c.a(a, true);
            c.d(a);
        }
    }
}
