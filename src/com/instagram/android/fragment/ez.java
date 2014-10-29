// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.instagram.android.a.m;

// Referenced classes of package com.instagram.android.fragment:
//            ey

final class ez extends BroadcastReceiver
{

    final ey a;

    ez(ey ey1)
    {
        a = ey1;
        super();
    }

    public final void onReceive(Context context, Intent intent)
    {
        if ("com.instagram.android.widget.BROADCAST_FOLLOW_STATUS_CHANGED".equals(intent.getAction()))
        {
            a.Z().notifyDataSetChanged();
        }
    }
}
