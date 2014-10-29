// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.u.b;

import android.app.AlarmManager;
import android.app.IntentService;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.os.SystemClock;
import java.io.IOException;

// Referenced classes of package com.instagram.common.u.b:
//            c, f, e

public abstract class a extends IntentService
{

    private static android.os.PowerManager.WakeLock a;

    public a()
    {
        super("C2DMBaseReceiverWorker");
    }

    private static void a()
    {
        if (a.isHeld())
        {
            a.release();
        }
    }

    private static void a(Context context)
    {
        if (a == null)
        {
            a = ((PowerManager)context.getSystemService("power")).newWakeLock(1, "C2DM_LIB");
        }
    }

    private void a(Context context, Intent intent)
    {
        String s = intent.getStringExtra("registration_id");
        String s1 = intent.getStringExtra("error");
        if (intent.getStringExtra("unregistered") != null)
        {
            c.b(context);
        } else
        if (s1 != null)
        {
            c.b(context);
            com.facebook.e.a.a.a("C2DM", (new StringBuilder("Registration error ")).append(s1).toString());
            a(s1);
            if ("SERVICE_NOT_AVAILABLE".equals(s1))
            {
                long l = c.a(context);
                PendingIntent pendingintent = PendingIntent.getBroadcast(context, 0, new Intent(f.a(context).d()), 0);
                ((AlarmManager)context.getSystemService("alarm")).set(3, l + SystemClock.elapsedRealtime(), pendingintent);
                c.a(context, l * 2L);
                return;
            }
        } else
        {
            try
            {
                a(context, s);
                c.b(context, s);
                return;
            }
            catch (IOException ioexception)
            {
                com.facebook.e.a.a.a("C2DM", (new StringBuilder("Registration error ")).append(ioexception.getMessage()).toString());
            }
            return;
        }
    }

    private static void b(Context context)
    {
        a(context);
        a.acquire();
    }

    public abstract void a(Context context, String s);

    protected abstract void a(Intent intent);

    public abstract void a(String s);

    public final void onHandleIntent(Intent intent)
    {
        b(this);
        Context context;
        e e1;
        context = getApplicationContext();
        e1 = f.a(context);
        if (!intent.getAction().equals(e1.f())) goto _L2; else goto _L1
_L1:
        a(context, intent);
_L5:
        a();
        return;
_L2:
        if (!intent.getAction().equals(e1.e())) goto _L4; else goto _L3
_L3:
        a(intent);
          goto _L5
        Exception exception;
        exception;
        a();
        throw exception;
_L4:
        if (!intent.getAction().equals(e1.d())) goto _L5; else goto _L6
_L6:
        c.a(context, e1.g());
          goto _L5
    }
}
