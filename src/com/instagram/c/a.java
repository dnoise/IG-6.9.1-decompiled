// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.c;

import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.view.View;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.facebook.ba;
import java.util.Date;

// Referenced classes of package com.instagram.c:
//            b, c, d

public final class a
{

    private Context a;
    private Date b;
    private Date c;
    private int d;
    private int e;
    private int f;
    private boolean g;
    private boolean h;

    public a(Context context)
    {
        a = context;
        e();
    }

    static Context a(a a1)
    {
        return a1.a;
    }

    private void a(boolean flag)
    {
        d();
        if (c())
        {
            b();
        }
    }

    private void b()
    {
        Dialog dialog;
        Resources resources;
        dialog = new Dialog(a, ba.IgDialog);
        resources = a.getResources();
        CharSequence charsequence = a.getPackageManager().getApplicationLabel(a.getPackageManager().getApplicationInfo(a.getPackageName(), 0));
        Object obj = charsequence;
_L2:
        dialog.setContentView(aw.appirater);
        ((TextView)dialog.findViewById(av.appirater_title_area)).setText(resources.getString(az.APPIRATER_MESSAGE_TITLE, new Object[] {
            obj
        }));
        ((TextView)dialog.findViewById(av.appirater_message_area)).setText(String.format(resources.getString(az.APPIRATER_MESSAGE), new Object[] {
            obj
        }));
        TextView textview = (TextView)dialog.findViewById(av.appirater_rate_button);
        textview.setText(String.format(resources.getString(az.APPIRATER_RATE_BUTTON), new Object[] {
            obj
        }));
        View view = dialog.findViewById(av.appirater_rate_later_button);
        View view1 = dialog.findViewById(av.appirater_cancel_button);
        textview.setOnClickListener(new b(this, dialog));
        view.setOnClickListener(new c(this, dialog));
        view1.setOnClickListener(new d(this, dialog));
        dialog.show();
        return;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        obj = "unknown";
        if (true) goto _L2; else goto _L1
_L1:
    }

    static boolean b(a a1)
    {
        a1.g = true;
        return true;
    }

    static void c(a a1)
    {
        a1.f();
    }

    private boolean c()
    {
        while (d < 0 || e < 4 || h || g) 
        {
            return false;
        }
        return true;
    }

    static int d(a a1)
    {
        a1.e = 0;
        return 0;
    }

    private void d()
    {
        if (f == -1)
        {
            f = 2000;
        }
        if (f == 2000)
        {
            if (b == null)
            {
                b = new Date();
            }
            e = 1 + e;
        } else
        {
            f = 2000;
            b = null;
            d = 0;
            e = 1;
            g = false;
            h = false;
            c = null;
        }
        f();
    }

    private void e()
    {
        a.getResources();
        SharedPreferences sharedpreferences = a.getSharedPreferences(a.getPackageName(), 0);
        if (sharedpreferences.contains("APPIRATER_FIRST_USE_DATE"))
        {
            long l = sharedpreferences.getLong("APPIRATER_FIRST_USE_DATE", -1L);
            if (-1L != l)
            {
                b = new Date(l);
            }
            long l1 = sharedpreferences.getLong("APPIRATER_REMINDER_REQUEST_DATE", -1L);
            if (-1L != l1)
            {
                c = new Date(l1);
            }
            d = sharedpreferences.getInt("APPIRATER_USE_COUNT", 0);
            e = sharedpreferences.getInt("APPIRATER_SIG_EVENT_COUNT", 0);
            f = sharedpreferences.getInt("APPIRATER_CURRENT_VERSION", 0);
            g = sharedpreferences.getBoolean("APPIRATER_RATED_CURRENT_VERSION", false);
            h = sharedpreferences.getBoolean("APPIRATER_DECLINED_TO_RATE", false);
        }
    }

    static boolean e(a a1)
    {
        a1.h = true;
        return true;
    }

    private void f()
    {
        long l = -1L;
        a.getResources();
        android.content.SharedPreferences.Editor editor = a.getSharedPreferences(a.getPackageName(), 0).edit();
        long l1;
        if (b != null)
        {
            l1 = b.getTime();
        } else
        {
            l1 = l;
        }
        editor.putLong("APPIRATER_FIRST_USE_DATE", l1);
        if (c != null)
        {
            l = c.getTime();
        }
        editor.putLong("APPIRATER_REMINDER_REQUEST_DATE", l);
        editor.putInt("APPIRATER_USE_COUNT", d);
        editor.putInt("APPIRATER_SIG_EVENT_COUNT", e);
        editor.putInt("APPIRATER_CURRENT_VERSION", f);
        editor.putBoolean("APPIRATER_RATED_CURRENT_VERSION", g);
        editor.putBoolean("APPIRATER_DECLINED_TO_RATE", h);
        editor.commit();
    }

    public final void a()
    {
        a(true);
    }
}
