// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.straightening;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.cliffjumper.a.b;
import com.instagram.cliffjumper.edit.common.effectfilter.CjFilter;
import com.instagram.cliffjumper.edit.common.effectfilter.i;
import com.instagram.cliffjumper.edit.common.ui.g;
import com.instagram.cliffjumper.edit.common.ui.sliderview.SliderView;
import com.instagram.filterkit.filter.IgFilter;
import com.instagram.filterkit.filter.IgFilterGroup;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.straightening:
//            d, c, b

public final class a
    implements b, com.instagram.cliffjumper.edit.common.ui.a
{

    private final String a;
    private View b;
    private View c;
    private SliderView d;
    private View e;
    private View f;
    private View g;
    private IgFilterGroup h;
    private CjFilter i;
    private com.instagram.cliffjumper.edit.common.ui.b j;
    private com.instagram.cliffjumper.a.a k;
    private int l;
    private int m;
    private float n;
    private float o;
    private float p;
    private d q;
    private boolean r;

    public a(Resources resources, float f1)
    {
        q = d.a;
        a = resources.getString(az.straighten);
        p = f1;
    }

    static float a(a a1, float f1)
    {
        a1.n = f1;
        return f1;
    }

    static int a(a a1, int i1)
    {
        a1.l = i1;
        return i1;
    }

    static CjFilter a(a a1)
    {
        return a1.i;
    }

    private void a(float f1)
    {
        float f2 = Math.min(Math.max(i.h() + (float)Math.toDegrees(f1), -30F), 30F);
        d.a(f2, false);
    }

    static com.instagram.cliffjumper.edit.common.ui.b b(a a1)
    {
        return a1.j;
    }

    static boolean c(a a1)
    {
        return a1.r;
    }

    static IgFilterGroup d(a a1)
    {
        return a1.h;
    }

    public final View a(Context context)
    {
        ViewGroup viewgroup = (ViewGroup)LayoutInflater.from(context).inflate(aw.straightener_ruler, null, false);
        d = (SliderView)viewgroup.findViewById(av.photo_straighten_slider);
        if (o != 0.0F)
        {
            d.a(o, false);
        } else
        {
            d.a(p, true);
        }
        d.setOnSlideListener(new c(this));
        return viewgroup;
    }

    public final String a()
    {
        return a;
    }

    public final void a(float f1, float f2)
    {
        q = q.a();
        View view = f;
        int i1;
        View view1;
        d d1;
        d d2;
        int j1;
        if (q == d.a)
        {
            i1 = 0;
        } else
        {
            i1 = 8;
        }
        view.setVisibility(i1);
        view1 = g;
        d1 = q;
        d2 = com.instagram.cliffjumper.edit.photo.straightening.d.b;
        j1 = 0;
        if (d1 != d2)
        {
            j1 = 8;
        }
        view1.setVisibility(j1);
    }

    public final void a(float f1, float f2, float f3, float f4)
    {
        if ((double)f4 != 0.0D)
        {
            a(-f4 / 2.0F);
        }
    }

    public final void a(boolean flag)
    {
        if (!flag)
        {
            i.b(m);
            i.a(o);
        }
        boolean flag1;
        if (i.h() != 0.0F)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (b instanceof g)
        {
            ((g)b).setActive(flag1);
        } else
        {
            b.setSelected(flag1);
        }
        e.setVisibility(8);
        f.setVisibility(8);
        g.setVisibility(8);
        if (h.a(4) != null)
        {
            h.a(4).a(false);
        }
        k.a();
        c.setOnTouchListener(null);
        b = null;
        e = null;
        f = null;
        g = null;
        h = null;
        i = null;
        c = null;
        j = null;
        d = null;
        k = null;
    }

    public final boolean a(View view, View view1, ViewGroup viewgroup, IgFilterGroup igfiltergroup, com.instagram.cliffjumper.edit.common.ui.b b1)
    {
        b = view;
        c = view1;
        h = igfiltergroup;
        i = (CjFilter)igfiltergroup.a(5);
        j = b1;
        l = i.g();
        m = l;
        n = i.h();
        o = n;
        if (h.a(4) != null)
        {
            h.a(4).a(true);
        }
        k = new com.instagram.cliffjumper.a.a();
        k.a(this);
        c.setOnTouchListener(k);
        e = viewgroup.findViewById(av.photo_edit_rotate_button);
        e.setOnClickListener(new com.instagram.cliffjumper.edit.photo.straightening.b(this));
        e.setVisibility(0);
        f = viewgroup.findViewById(av.straighten_grid_overlay_3);
        f.setVisibility(0);
        g = viewgroup.findViewById(av.straighten_grid_overlay_6);
        g.setVisibility(8);
        r = h.b(12);
        return true;
    }

    public final boolean a(g g1, IgFilterGroup igfiltergroup)
    {
        boolean flag;
        if (com.instagram.cliffjumper.edit.common.effectfilter.i.a(igfiltergroup).h() != 0.0F)
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
        i.b(m);
        i.a(o);
        if (h.a(4) != null)
        {
            h.a(4).a(false);
        }
        if (r)
        {
            h.a(11, true);
            h.a(12, true);
        }
    }

    public final void b(float f1, float f2, float f3, float f4)
    {
        if (f3 != 0.0F || f4 != 0.0F)
        {
            float f6;
            if (Math.abs(f3) > Math.abs(f4))
            {
                float f7 = (float)c.getHeight() / 2.0F;
                f6 = ((float)Math.atan(f3 / f7) * (f7 - f2)) / f7 / 1.0F;
            } else
            {
                float f5 = (float)c.getWidth() / 2.0F;
                f6 = ((float)Math.atan(-f4 / f5) * (f5 - f1)) / f5 / 1.0F;
            }
            a(f6);
        }
    }

    public final void c()
    {
        i.b(l);
        i.a(n);
        if (h.a(4) != null)
        {
            h.a(4).a(true);
        }
        if (r)
        {
            h.a(11, false);
            h.a(12, false);
        }
    }

    public final void d()
    {
        r = h.b(12);
        if (r)
        {
            h.a(11, false);
            h.a(12, false);
            j.a();
        }
    }

    public final void e()
    {
        if (r)
        {
            h.a(11, true);
            h.a(12, true);
            j.a();
        }
    }
}
