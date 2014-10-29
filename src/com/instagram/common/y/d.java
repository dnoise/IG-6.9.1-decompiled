// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.y;

import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.a.e;
import com.instagram.common.h.a;

public final class d
{

    private static e a()
    {
        return e.a(com.instagram.common.h.a.a());
    }

    public static void a(BroadcastReceiver broadcastreceiver)
    {
        a().a(broadcastreceiver);
    }

    public static void a(BroadcastReceiver broadcastreceiver, IntentFilter intentfilter)
    {
        a().a(broadcastreceiver, intentfilter);
    }

    public static boolean a(Intent intent)
    {
        return a().a(intent);
    }

    public static boolean a(String s)
    {
        return a().a(new Intent(s));
    }

    public static void b(Intent intent)
    {
        a().b(intent);
    }

    public static void b(String s)
    {
        a().b(new Intent(s));
    }
}
