// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.common.filters;

import android.content.Context;
import android.content.res.Resources;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.facebook.at;
import com.instagram.cliffjumper.edit.common.ui.a;
import com.instagram.cliffjumper.edit.common.ui.c;
import com.instagram.cliffjumper.edit.common.ui.g;
import com.instagram.cliffjumper.ui.IgEditSeekBar;
import com.instagram.filterkit.filter.IgFilter;
import com.instagram.filterkit.filter.IgFilterGroup;

// Referenced classes of package com.instagram.cliffjumper.edit.common.filters:
//            g, d, a, BasicAdjustFilter, 
//            c, f

public final class b
    implements android.view.View.OnTouchListener, a
{

    private int a;
    private int b;
    private View c;
    private g d;
    private IgFilterGroup e;
    private com.instagram.cliffjumper.edit.common.ui.b f;
    private com.instagram.cliffjumper.edit.common.filters.a g;
    private boolean h;
    private boolean i;

    public b()
    {
    }

    static int a(b b1, int j)
    {
        b1.b = j;
        return j;
    }

    private static int a(IgFilterGroup igfiltergroup, com.instagram.cliffjumper.edit.common.filters.a a1)
    {
        BasicAdjustFilter basicadjustfilter = com.instagram.cliffjumper.edit.common.filters.g.a(igfiltergroup);
        switch (com.instagram.cliffjumper.edit.common.filters.d.a[a1.ordinal()])
        {
        default:
            return 0;

        case 1: // '\001'
            return basicadjustfilter.a();

        case 2: // '\002'
            return basicadjustfilter.b();

        case 4: // '\004'
            return basicadjustfilter.C_();

        case 3: // '\003'
            return basicadjustfilter.e();

        case 7: // '\007'
            return basicadjustfilter.f();

        case 8: // '\b'
            return basicadjustfilter.i();

        case 5: // '\005'
            return basicadjustfilter.h();

        case 6: // '\006'
            return basicadjustfilter.g();
        }
    }

    private View a(Context context, int j, float f1)
    {
        IgEditSeekBar igeditseekbar = new IgEditSeekBar(context);
        igeditseekbar.setRootPosition(f1);
        igeditseekbar.setValueRangeSize(j);
        igeditseekbar.setCurrentValue(a);
        igeditseekbar.setOnSeekBarChangeListener(new com.instagram.cliffjumper.edit.common.filters.c(this));
        return igeditseekbar;
    }

    private void a(int j)
    {
        BasicAdjustFilter basicadjustfilter = com.instagram.cliffjumper.edit.common.filters.g.a(e);
        switch (com.instagram.cliffjumper.edit.common.filters.d.a[g.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            basicadjustfilter.a(j);
            return;

        case 2: // '\002'
            basicadjustfilter.b(j);
            return;

        case 4: // '\004'
            basicadjustfilter.c(j);
            return;

        case 3: // '\003'
            basicadjustfilter.d(j);
            return;

        case 7: // '\007'
            basicadjustfilter.e(j);
            return;

        case 8: // '\b'
            basicadjustfilter.h(j);
            return;

        case 5: // '\005'
            basicadjustfilter.g(j);
            return;

        case 6: // '\006'
            basicadjustfilter.f(j);
            return;
        }
    }

    static boolean a(b b1)
    {
        return b1.h;
    }

    static int b(b b1)
    {
        return b1.b;
    }

    static void b(b b1, int j)
    {
        b1.a(j);
    }

    static com.instagram.cliffjumper.edit.common.ui.b c(b b1)
    {
        return b1.f;
    }

    static boolean d(b b1)
    {
        return b1.i;
    }

    static IgFilterGroup e(b b1)
    {
        return b1.e;
    }

    public final View a(Context context)
    {
        LinearLayout linearlayout;
        linearlayout = new LinearLayout(context);
        linearlayout.setGravity(17);
        com.instagram.cliffjumper.edit.common.filters.d.a[g.ordinal()];
        JVM INSTR tableswitch 1 8: default 72
    //                   1 74
    //                   2 74
    //                   3 74
    //                   4 74
    //                   5 74
    //                   6 74
    //                   7 128
    //                   8 128;
           goto _L1 _L2 _L2 _L2 _L2 _L2 _L2 _L3 _L3
_L1:
        return null;
_L2:
        View view = a(context, 200, 0.5F);
_L5:
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -1);
        int j = context.getResources().getDimensionPixelSize(at.seek_bar_margins);
        layoutparams.setMargins(j, 0, j, 0);
        linearlayout.addView(view, layoutparams);
        return linearlayout;
_L3:
        view = a(context, 100, 0.0F);
        if (true) goto _L5; else goto _L4
_L4:
    }

    public final String a()
    {
        return d.getTileInfo().e();
    }

    public final void a(boolean flag)
    {
        if (flag)
        {
            a = b;
        }
        g g1 = d;
        boolean flag1;
        if (a != 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        g1.setActive(flag1);
        a(a);
        e.a(3).a(false);
        c.setOnTouchListener(null);
        d = null;
        c = null;
        g = null;
        e = null;
        f = null;
    }

    public final boolean a(View view, View view1, ViewGroup viewgroup, IgFilterGroup igfiltergroup, com.instagram.cliffjumper.edit.common.ui.b b1)
    {
        d = (g)view;
        c = view1;
        g = ((f)d.getTileInfo()).a();
        e = igfiltergroup;
        f = b1;
        e.a(3).a(true);
        b = a(e, g);
        a = b;
        c.setOnTouchListener(this);
        i = e.b(12);
        return true;
    }

    public final boolean a(g g1, IgFilterGroup igfiltergroup)
    {
        boolean flag;
        if (a(igfiltergroup, ((f)g1.getTileInfo()).a()) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        g1.setActive(flag);
        return false;
    }

    public final void b()
    {
        a(a);
        e.a(3).a(false);
        if (i)
        {
            e.a(11, true);
            e.a(12, true);
        }
    }

    public final void c()
    {
        a(b);
        e.a(3).a(true);
        if (i)
        {
            e.a(11, false);
            e.a(12, false);
        }
    }

    public final boolean onTouch(View view, MotionEvent motionevent)
    {
        if (motionevent.getAction() == 0)
        {
            h = true;
            a(0);
            f.a();
        } else
        if (motionevent.getAction() == 1)
        {
            h = false;
            a(b);
            f.a();
            return true;
        }
        return true;
    }
}
