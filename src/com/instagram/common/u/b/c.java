// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.u.b;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import com.facebook.e.a.a;

// Referenced classes of package com.instagram.common.u.b:
//            f, e

public final class c
{

    static long a(Context context)
    {
        return context.getSharedPreferences("com.google.android.c2dm", 0).getLong("backoff", 30000L);
    }

    static void a(Context context, long l)
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("com.google.android.c2dm", 0).edit();
        editor.putLong("backoff", l);
        editor.commit();
    }

    public static void a(Context context, String s)
    {
        try
        {
            e e1 = com.instagram.common.u.b.f.a(context);
            Intent intent = new Intent(e1.b());
            intent.setPackage(e1.c());
            intent.putExtra("app", PendingIntent.getBroadcast(context, 0, new Intent(), 0));
            intent.putExtra("sender", s);
            context.startService(intent).toString();
            return;
        }
        catch (Exception exception)
        {
            com.facebook.e.a.a.a("C2DMessaging", "C2DM not supported");
        }
    }

    static void b(Context context)
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("com.google.android.c2dm", 0).edit();
        editor.putString("dm_registration", "");
        editor.putLong("last_registration_change", System.currentTimeMillis());
        editor.commit();
    }

    static void b(Context context, String s)
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("com.google.android.c2dm", 0).edit();
        editor.putString("dm_registration", s);
        editor.commit();
    }
}
