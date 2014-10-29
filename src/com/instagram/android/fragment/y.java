// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.os.Bundle;
import android.support.v4.app.ag;
import android.support.v4.app.k;
import android.support.v4.app.s;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.facebook.av;
import com.instagram.a.c;
import com.instagram.base.a.b;
import com.instagram.common.analytics.a;
import com.instagram.common.analytics.d;
import com.instagram.common.y.f;
import com.instagram.ui.widget.searchedittext.SearchEditText;

// Referenced classes of package com.instagram.android.fragment:
//            ef, ea, eh, ej, 
//            aa, z

public final class y extends b
    implements c
{

    public static int a;
    private ea b;
    private eh c;
    private ej d;
    private SearchEditText e;
    private String f;
    private boolean g;
    private int h;

    public y()
    {
        f = "";
        g = true;
    }

    static ea a(y y1)
    {
        return y1.b;
    }

    static String a(y y1, String s1)
    {
        y1.f = s1;
        return s1;
    }

    private void a(ea ea1)
    {
        ea ea2 = b;
        boolean flag;
        if (e != null && e.isFocused())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b = ea1;
        b.W();
        if (ea2 != b)
        {
            ea2.X();
        }
        if (e != null)
        {
            e.setHint(b.V());
            if (!flag)
            {
                e.clearFocus();
            }
        }
    }

    static SearchEditText b(y y1)
    {
        return y1.e;
    }

    static String c(y y1)
    {
        return y1.f;
    }

    static ej d(y y1)
    {
        return y1.d;
    }

    static eh e(y y1)
    {
        return y1.c;
    }

    private ea f(int i)
    {
        if (i == com.instagram.android.fragment.ef.b)
        {
            return d;
        } else
        {
            return c;
        }
    }

    public final void F()
    {
        super.F();
        h = l().getRequestedOrientation();
        l().setRequestedOrientation(-1);
        a(b);
    }

    public final void G()
    {
        super.G();
        l().setRequestedOrientation(h);
        com.instagram.common.analytics.a.a().b(e);
        e.b();
        e.setOnFilterTextListener(null);
        e = null;
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        FrameLayout framelayout = new FrameLayout(l());
        framelayout.setId(av.frame_layout);
        return framelayout;
    }

    public final void a(int i)
    {
        if (a != i)
        {
            a = i;
            a(f(a));
        }
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        c = new eh();
        d = new ej();
        b = f(a);
        q().a().a(av.frame_layout, c).a(av.frame_layout, d).b();
        x();
    }

    public final void a(com.instagram.a.b b1)
    {
        b1.a(true);
        e = b1.a();
        e.setText(f);
        e.setSelection(f.length());
        e.setOnFilterTextListener(new aa(this));
        e.setHint(b.V());
        b1.b(new z(this));
        if (g)
        {
            e.requestFocus();
            com.instagram.common.y.f.b(n(), e);
            g = false;
        }
        com.instagram.common.analytics.a.a().a(e);
    }

    public final void b()
    {
        e.b();
    }

    public final String j_()
    {
        return "search";
    }

    static 
    {
        a = com.instagram.android.fragment.ef.b;
    }
}
