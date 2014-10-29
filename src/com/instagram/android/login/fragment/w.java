// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.support.v4.app.s;

// Referenced classes of package com.instagram.android.login.fragment:
//            v

final class w extends BroadcastReceiver
{

    final v a;

    w(v v1)
    {
        a = v1;
        super();
    }

    public final void onReceive(Context context, Intent intent)
    {
        if (intent.getAction().equals("ActivityInTab.BROADCAST_BACK_PRESSED"))
        {
            a.p().e();
        }
    }
}
