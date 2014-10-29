// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import java.util.HashSet;
import java.util.Set;

// Referenced classes of package android.support.v4.app:
//            cc, bz, cb, ca, 
//            cf, av, by, cd, 
//            ch

public final class bx
{

    private static final int a;
    private static final Object b = new Object();
    private static String c;
    private static Set d = new HashSet();
    private static final Object g = new Object();
    private static cf h;
    private static final bz i;
    private final Context e;
    private final NotificationManager f;

    private bx(Context context)
    {
        e = context;
        f = (NotificationManager)e.getSystemService("notification");
    }

    static int a()
    {
        return a;
    }

    public static bx a(Context context)
    {
        return new bx(context);
    }

    private void a(ch ch)
    {
        synchronized (g)
        {
            if (h == null)
            {
                h = new cf(e.getApplicationContext());
            }
        }
        h.a(ch);
    }

    private static boolean a(Notification notification)
    {
        Bundle bundle = av.a(notification);
        return bundle != null && bundle.getBoolean("android.support.useSideChannel");
    }

    public static Set b(Context context)
    {
        String s = android.provider.Settings.Secure.getString(context.getContentResolver(), "enabled_notification_listeners");
        if (s != null && !s.equals(c))
        {
            String as[] = s.split(":");
            HashSet hashset = new HashSet(as.length);
            int j = as.length;
            for (int k = 0; k < j; k++)
            {
                ComponentName componentname = ComponentName.unflattenFromString(as[k]);
                if (componentname != null)
                {
                    hashset.add(componentname.getPackageName());
                }
            }

            synchronized (b)
            {
                d = hashset;
                c = s;
            }
        }
        return d;
    }

    public final void a(int j, Notification notification)
    {
        a(null, j, notification);
    }

    public final void a(String s, int j)
    {
        i.a(f, s, j);
        a(((ch) (new by(e.getPackageName(), j, s))));
    }

    public final void a(String s, int j, Notification notification)
    {
        if (a(notification))
        {
            a(((ch) (new cd(e.getPackageName(), j, s, notification))));
            return;
        } else
        {
            i.a(f, s, j, notification);
            return;
        }
    }

    static 
    {
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            i = new cc();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 5)
        {
            i = new cb();
        } else
        {
            i = new ca();
        }
        a = i.a();
    }
}
