// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.registrationpush;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.instagram.registrationpush:
//            a

public class RegistrationPushAlarmReceiver extends BroadcastReceiver
{

    public RegistrationPushAlarmReceiver()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        (new a(context)).a();
    }
}
