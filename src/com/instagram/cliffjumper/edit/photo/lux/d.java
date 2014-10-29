// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.lux;

import android.content.Context;
import android.content.res.Resources;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.facebook.at;
import com.instagram.cliffjumper.edit.common.ui.a;
import com.instagram.cliffjumper.edit.common.ui.b;
import com.instagram.cliffjumper.edit.common.ui.g;
import com.instagram.cliffjumper.ui.IgEditSeekBar;
import com.instagram.filterkit.filter.IgFilterGroup;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.lux:
//            LuxFilter, e

public final class d
    implements android.view.View.OnTouchListener, a
{

    private int a;
    private int b;
    private boolean c;
    private boolean d;
    private View e;
    private IgFilterGroup f;
    private b g;

    public d()
    {
    }

    static int a(d d1)
    {
        return d1.b;
    }

    static int a(d d1, int i)
    {
        d1.b = i;
        return i;
    }

    private void a(int i)
    {
        ((LuxFilter)f.a(3)).a(i);
        IgFilterGroup igfiltergroup = f;
        boolean flag;
        if (i > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        igfiltergroup.a(3, flag);
    }

    private View b(Context context)
    {
        IgEditSeekBar igeditseekbar = new IgEditSeekBar(context);
        igeditseekbar.setRootPosition(0.0F);
        igeditseekbar.setValueRangeSize(100);
        int i;
        if (a == -1)
        {
            i = 50;
        } else
        {
            i = a;
        }
        igeditseekbar.setCurrentValue(i);
        igeditseekbar.setOnSeekBarChangeListener(new e(this));
        return igeditseekbar;
    }

    static void b(d d1, int i)
    {
        d1.a(i);
    }

    static boolean b(d d1)
    {
        return d1.d;
    }

    static b c(d d1)
    {
        return d1.g;
    }

    static boolean d(d d1)
    {
        return d1.c;
    }

    static IgFilterGroup e(d d1)
    {
        return d1.f;
    }

    public final View a(Context context)
    {
        LinearLayout linearlayout = new LinearLayout(context);
        linearlayout.setGravity(17);
        View view = b(context);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -1);
        int i = context.getResources().getDimensionPixelSize(at.seek_bar_margins);
        layoutparams.setMargins(i, 0, i, 0);
        linearlayout.addView(view, layoutparams);
        return linearlayout;
    }

    public final String a()
    {
        return "Lux";
    }

    public final void a(boolean flag)
    {
        if (flag)
        {
            a = b;
        }
        a(a);
        e = null;
        f = null;
        g = null;
    }

    public final boolean a(View view, View view1, ViewGroup viewgroup, IgFilterGroup igfiltergroup, b b1)
    {
        e = view1;
        f = igfiltergroup;
        g = b1;
        a = ((LuxFilter)igfiltergroup.a(3)).e();
        b = a;
        e.setOnTouchListener(this);
        c = f.b(12);
        return true;
    }

    public final boolean a(g g1, IgFilterGroup igfiltergroup)
    {
        return false;
    }

    public final void b()
    {
        a(a);
        if (c)
        {
            f.a(11, true);
            f.a(12, true);
        }
    }

    public final void c()
    {
        a(b);
        if (c)
        {
            f.a(11, false);
            f.a(12, false);
        }
    }

    public final boolean onTouch(View view, MotionEvent motionevent)
    {
        if (motionevent.getAction() == 0)
        {
            d = true;
            a(0);
            g.a();
        } else
        if (motionevent.getAction() == 1)
        {
            d = false;
            a(b);
            g.a();
            return true;
        }
        return true;
    }
}
