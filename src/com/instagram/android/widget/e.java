// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.widget;

import android.content.Context;
import android.content.res.Resources;
import android.support.v4.app.Fragment;
import android.widget.BaseAdapter;
import com.facebook.ax;
import com.facebook.az;
import com.facebook.b.b;
import com.instagram.android.fragment.fx;
import com.instagram.base.a.a.a;

// Referenced classes of package com.instagram.android.widget:
//            g, h, f

public final class e
{

    private final g a = new g(this, (byte)0);
    private android.view.View.OnClickListener b;
    private android.view.View.OnClickListener c;
    private Context d;
    private Fragment e;
    private BaseAdapter f;

    public e(Context context, Fragment fragment, BaseAdapter baseadapter)
    {
        d = context;
        e = fragment;
        f = baseadapter;
        b = new h(this);
        c = new f(this);
    }

    static BaseAdapter a(e e1)
    {
        return e1.f;
    }

    static void a(e e1, String s)
    {
        e1.a(s);
    }

    private void a(String s)
    {
        new fx();
        fx.a(e.p(), s, null, false, false).a();
    }

    static Fragment b(e e1)
    {
        return e1.e;
    }

    public static boolean b()
    {
        return com.instagram.share.b.a.a().b();
    }

    static g c(e e1)
    {
        return e1.a;
    }

    static Context d(e e1)
    {
        return e1.d;
    }

    public static boolean f()
    {
        return com.instagram.l.b.a.a().G();
    }

    public final android.view.View.OnClickListener a()
    {
        return b;
    }

    public final String c()
    {
        int i = com.instagram.share.b.a.k();
        if (i <= 0)
        {
            return d.getString(az.subtitle_default_people_facebook);
        } else
        {
            Resources resources = d.getResources();
            int j = ax.x_facebook_friends;
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(i);
            return resources.getQuantityString(j, i, aobj);
        }
    }

    public final g d()
    {
        return a;
    }

    public final android.view.View.OnClickListener e()
    {
        return c;
    }

    public final String g()
    {
        int i = com.instagram.l.b.a.a().H();
        if (i <= 0)
        {
            return d.getString(az.subtitle_default_people_contacts);
        } else
        {
            Resources resources = d.getResources();
            int j = ax.x_contacts;
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(i);
            return resources.getQuantityString(j, i, aobj);
        }
    }
}
