// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.instagram.android.feed.a.a;

// Referenced classes of package com.instagram.android.fragment:
//            ev

final class ew extends BroadcastReceiver
{

    final ev a;

    ew(ev ev1)
    {
        a = ev1;
        super();
    }

    public final void onReceive(Context context, Intent intent)
    {
        if (a.ap() && "com.instagram.android.widget.BROADCAST_FOLLOW_STATUS_CHANGED".equals(intent.getAction()))
        {
            a.W().notifyDataSetChanged();
        }
    }
}
