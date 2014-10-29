// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c2dm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.instagram.android.c2dm:
//            c

public class ClearNotificationReceiver extends BroadcastReceiver
{

    public ClearNotificationReceiver()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        c.a().b(intent);
    }
}
