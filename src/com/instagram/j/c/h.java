// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.instagram.j.c:
//            g, p

final class h extends BroadcastReceiver
{

    final g a;

    h(g g1)
    {
        a = g1;
        super();
    }

    public final void onReceive(Context context, Intent intent)
    {
        if (intent.getAction().equals("NewsfeedFragment.BROADCAST_SWITCH_TO_MODE_YOU"))
        {
            g.a(a).a(g.b.intValue());
        }
    }
}
