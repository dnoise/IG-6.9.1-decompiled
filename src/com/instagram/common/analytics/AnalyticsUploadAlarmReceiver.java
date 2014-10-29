// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.instagram.common.analytics:
//            l, a, ab

public class AnalyticsUploadAlarmReceiver extends BroadcastReceiver
{

    public AnalyticsUploadAlarmReceiver()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        l l1 = l.a(intent.getAction());
        if (l1 != null)
        {
            l1.a();
        }
        ((ab)a.a()).g();
    }
}
