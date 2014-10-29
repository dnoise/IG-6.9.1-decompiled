// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.registrationpush;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.support.v4.app.ba;
import android.support.v4.app.bx;
import com.facebook.au;
import com.facebook.az;
import com.instagram.m.c;
import com.instagram.p.b;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.instagram.registrationpush:
//            RegistrationPushAlarmReceiver, b, RegistrationPushActionReceiver

public final class a
{

    private static final AtomicBoolean a = new AtomicBoolean(true);
    private final Context b;
    private final AlarmManager c;
    private final bx d;

    public a(Context context)
    {
        b = context;
        c = (AlarmManager)b.getSystemService("alarm");
        d = bx.a(context);
    }

    public static void f()
    {
        b.az.c();
    }

    private PendingIntent g()
    {
        Intent intent = new Intent(b, com/instagram/registrationpush/RegistrationPushAlarmReceiver);
        return PendingIntent.getBroadcast(b, 0, intent, 0);
    }

    private void h()
    {
        c.cancel(g());
        b();
    }

    public final void a()
    {
        if (!com.instagram.n.a.d() && !com.instagram.n.a.c())
        {
            com.instagram.n.a.e();
            b.ax.c();
            com.instagram.registrationpush.b b1 = com.instagram.registrationpush.b.a(c.h.h());
            if (b1 != null)
            {
                android.app.Notification notification = (new ba(b)).a().a(au.notification_icon).a(b.getString(az.instagram)).b(b.getString(b1.b())).a(RegistrationPushActionReceiver.a(b)).b(com.instagram.registrationpush.RegistrationPushActionReceiver.b(b)).d();
                b.ay.b().a("variation", b1.a()).a();
                d.a("registration", 64278, notification);
                return;
            }
        }
    }

    public final void b()
    {
        d.a("registration", 64278);
    }

    public final void c()
    {
        h();
        if (!com.instagram.n.a.c() && !com.instagram.n.a.d())
        {
            a.set(true);
            b.av.c();
            long l = 0x5265c00L + SystemClock.elapsedRealtime();
            c.set(2, l, g());
        }
    }

    public final void d()
    {
        if (a.getAndSet(false))
        {
            b.aw.c();
        }
        h();
    }

    public final void e()
    {
        b.aA.c();
        Intent intent = new Intent();
        intent.setClassName(b, "com.instagram.android.activity.MainTabActivity");
        intent.addFlags(0x14000000);
        b.startActivity(intent);
    }

}
