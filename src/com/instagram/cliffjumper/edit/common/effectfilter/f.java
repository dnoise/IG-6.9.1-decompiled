// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.common.effectfilter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.cliffjumper.edit.common.ui.a;
import com.instagram.cliffjumper.edit.common.ui.b;
import com.instagram.cliffjumper.edit.common.ui.c;
import com.instagram.cliffjumper.edit.common.ui.g;
import com.instagram.cliffjumper.ui.IgEditSeekBar;
import com.instagram.cliffjumper.util.a.d;
import com.instagram.filterkit.filter.IgFilter;
import com.instagram.filterkit.filter.IgFilterGroup;

// Referenced classes of package com.instagram.cliffjumper.edit.common.effectfilter:
//            g, i, h, CjFilter, 
//            c

public final class f
    implements android.view.View.OnTouchListener, a
{

    private g a;
    private int b;
    private int c;
    private boolean d;
    private boolean e;
    private boolean f;
    private View g;
    private IgFilterGroup h;
    private b i;
    private boolean j;

    public f()
    {
    }

    static int a(f f1, int k)
    {
        f1.b = k;
        return k;
    }

    static void a(ImageView imageview, boolean flag)
    {
        b(imageview, flag);
    }

    static boolean a(f f1)
    {
        return f1.j;
    }

    static boolean a(f f1, boolean flag)
    {
        f1.d = flag;
        return flag;
    }

    static int b(f f1)
    {
        return f1.b;
    }

    private static void b(ImageView imageview, boolean flag)
    {
        imageview.setSelected(flag);
    }

    static IgFilterGroup c(f f1)
    {
        return f1.h;
    }

    static b d(f f1)
    {
        return f1.i;
    }

    static boolean e(f f1)
    {
        return f1.f;
    }

    static boolean f(f f1)
    {
        return f1.d;
    }

    public final View a(Context context)
    {
        ViewGroup viewgroup = (ViewGroup)LayoutInflater.from(context).inflate(aw.filter_strength_adjuster, null, false);
        IgEditSeekBar igeditseekbar = (IgEditSeekBar)viewgroup.findViewById(av.filter_strength_seek);
        igeditseekbar.setCurrentValue(c);
        igeditseekbar.setOnSeekBarChangeListener(new com.instagram.cliffjumper.edit.common.effectfilter.g(this));
        ImageView imageview = (ImageView)viewgroup.findViewById(av.button_toggle_border);
        if (com.instagram.cliffjumper.edit.common.effectfilter.i.b(h) == null)
        {
            imageview.setVisibility(8);
            return viewgroup;
        } else
        {
            b(imageview, e);
            imageview.setOnClickListener(new h(this, imageview));
            return viewgroup;
        }
    }

    public final String a()
    {
        return a.getTileInfo().e();
    }

    public final void a(boolean flag)
    {
        if (flag)
        {
            e = d;
            c = b;
        }
        h.a(20, e);
        com.instagram.cliffjumper.edit.common.effectfilter.i.a(h).c(c);
        h.a(4).a(false);
        g.setOnTouchListener(null);
        g = null;
        h = null;
        i = null;
        j = false;
    }

    public final boolean a(View view, View view1, ViewGroup viewgroup, IgFilterGroup igfiltergroup, b b1)
    {
        g g1;
        CjFilter cjfilter;
        CjFilter cjfilter1;
        g1 = (g)view;
        cjfilter = (CjFilter)igfiltergroup.a(5);
        cjfilter1 = ((com.instagram.cliffjumper.edit.common.effectfilter.c)g1.getTileInfo()).a();
        if (a == view && cjfilter1.m() != 0)
        {
            if (com.instagram.cliffjumper.util.a.c.a().e)
            {
                g = view1;
                h = igfiltergroup;
                i = b1;
                b = com.instagram.cliffjumper.edit.common.effectfilter.i.a(h).k();
                c = b;
                d = h.b(20);
                e = d;
                h.a(4).a(true);
                f = h.b(12);
                g.setOnTouchListener(this);
                return true;
            } else
            {
                return false;
            }
        }
        if (a != null)
        {
            a.setChecked(false);
        }
        g1.setChecked(true);
        g1.refreshDrawableState();
        a = g1;
        cjfilter1.a(cjfilter.f());
        cjfilter1.b(cjfilter.g());
        cjfilter1.a(cjfilter.h());
        cjfilter1.b(cjfilter.j());
        cjfilter1.a_(cjfilter.i());
        if (cjfilter1.m() != cjfilter.m()) goto _L2; else goto _L1
_L1:
        cjfilter1.c(cjfilter.k());
_L4:
        boolean flag = igfiltergroup.b(20);
        com.instagram.cliffjumper.edit.common.effectfilter.i.a(igfiltergroup, cjfilter1);
        com.instagram.cliffjumper.edit.common.effectfilter.i.a(igfiltergroup, ((com.instagram.cliffjumper.edit.common.effectfilter.c)g1.getTileInfo()).b());
        igfiltergroup.a(20, flag);
        b1.a();
        return false;
_L2:
        if (cjfilter1.k() == 0)
        {
            cjfilter1.c(100);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final boolean a(g g1, IgFilterGroup igfiltergroup)
    {
        boolean flag;
        if (com.instagram.cliffjumper.edit.common.effectfilter.i.a(igfiltergroup).m() == ((com.instagram.cliffjumper.edit.common.effectfilter.c)g1.getTileInfo()).a().m())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        g1.setChecked(flag);
        return flag;
    }

    public final void b()
    {
        h.a(20, e);
        com.instagram.cliffjumper.edit.common.effectfilter.i.a(h).c(c);
        h.a(4).a(false);
        if (f)
        {
            h.a(11, true);
            h.a(12, true);
        }
    }

    public final void c()
    {
        h.a(20, d);
        com.instagram.cliffjumper.edit.common.effectfilter.i.a(h).c(b);
        h.a(4).a(true);
        if (f)
        {
            h.a(11, false);
            h.a(12, false);
        }
    }

    public final boolean onTouch(View view, MotionEvent motionevent)
    {
        if (motionevent.getAction() == 0)
        {
            j = true;
            com.instagram.cliffjumper.edit.common.effectfilter.i.a(h).c(0);
            h.a(20, false);
            i.a();
        } else
        if (motionevent.getAction() == 1)
        {
            j = false;
            com.instagram.cliffjumper.edit.common.effectfilter.i.a(h).c(b);
            h.a(20, d);
            i.a();
            return true;
        }
        return true;
    }
}
