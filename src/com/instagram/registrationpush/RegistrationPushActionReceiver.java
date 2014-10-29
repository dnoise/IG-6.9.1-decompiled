// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.registrationpush;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.instagram.registrationpush:
//            a

public class RegistrationPushActionReceiver extends BroadcastReceiver
{

    public RegistrationPushActionReceiver()
    {
    }

    public static PendingIntent a(Context context)
    {
        return a(context, "com.instagram.registrationpush.ACTION_TAPPED");
    }

    private static PendingIntent a(Context context, String s)
    {
        Intent intent = new Intent(context, com/instagram/registrationpush/RegistrationPushActionReceiver);
        intent.setAction(s);
        return PendingIntent.getBroadcast(context, 0, intent, 0);
    }

    public static PendingIntent b(Context context)
    {
        return a(context, "com.instagram.registrationpush.ACTION_DELETED");
    }

    public void onReceive(Context context, Intent intent)
    {
        a a1 = new a(context);
        if ("com.instagram.registrationpush.ACTION_TAPPED".equals(intent.getAction()))
        {
            a1.e();
        } else
        if ("com.instagram.registrationpush.ACTION_DELETED".equals(intent.getAction()))
        {
            com.instagram.registrationpush.a.f();
            return;
        }
    }
}
