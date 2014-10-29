// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.h;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.support.v4.app.ba;
import android.support.v4.app.bx;
import com.facebook.au;
import com.instagram.common.d.g;
import com.instagram.common.d.h;
import com.instagram.common.d.j;
import com.instagram.common.s.b;

// Referenced classes of package com.instagram.android.h:
//            c, b

public class a
{

    private static final String a = com/instagram/android/h/a.getSimpleName();
    private final Context b;
    private final bx c;

    public a(Context context)
    {
        b = context;
        c = bx.a(context);
        if (com.instagram.common.s.b.b())
        {
            c c1 = new c(this, (byte)0);
            (new j(context)).a().a("PreferenceChangeBroadcasts.REALTIME_CONNECTION_NOTIFICATION_PREF_CHANGED", c1).a().b();
        }
    }

    static bx a(a a1)
    {
        return a1.c;
    }

    static String a()
    {
        return a;
    }

    private void a(int i, String s, boolean flag)
    {
        ba ba1 = (new ba(b)).a(i).a(PendingIntent.getActivity(b, 0, new Intent(), 0)).a("Instagram Debug").b(s).a(flag).b();
        c.a(a, 42, ba1.d());
    }

    static void a(a a1, com.instagram.realtimeclient.RealtimeEventHandler.Status status)
    {
        a1.b(status);
    }

    private void b(com.instagram.realtimeclient.RealtimeEventHandler.Status status)
    {
        switch (b.a[status.ordinal()])
        {
        default:
            new IllegalArgumentException("Unrecognized status");
            return;

        case 1: // '\001'
            a(au.notification_connected, "Realtime channel connected", true);
            return;

        case 2: // '\002'
            a(au.notification_subscribed, "Realtime channel subscribed", true);
            return;

        case 3: // '\003'
            a(au.notification_not_connected, "Realtime channel not connected", false);
            break;
        }
    }

    public final void a(com.instagram.realtimeclient.RealtimeEventHandler.Status status)
    {
        if (!com.instagram.l.a.a.a().h())
        {
            return;
        } else
        {
            b(status);
            return;
        }
    }

}
