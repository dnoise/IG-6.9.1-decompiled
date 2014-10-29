// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.realtimeclient;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

// Referenced classes of package com.instagram.realtimeclient:
//            RealtimeClient

class this._cls0 extends BroadcastReceiver
{

    final RealtimeClient this$0;

    public void onReceive(Context context, Intent intent)
    {
        NetworkInfo networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (networkinfo == null)
        {
            return;
        }
        if (networkinfo.isConnected())
        {
            getClass();
            RealtimeClient.access$000(RealtimeClient.this);
            return;
        } else
        {
            getClass();
            return;
        }
    }

    ()
    {
        this$0 = RealtimeClient.this;
        super();
    }
}
