// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.tiltshift;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RadioGroup;
import com.facebook.at;
import com.facebook.au;
import com.facebook.az;
import com.instagram.cliffjumper.edit.common.ui.a;
import com.instagram.cliffjumper.edit.common.ui.g;
import com.instagram.cliffjumper.edit.common.ui.k;
import com.instagram.filterkit.filter.IgFilter;
import com.instagram.filterkit.filter.IgFilterGroup;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.tiltshift:
//            l, m, TiltShiftBlurFilter, TiltShiftFogFilter, 
//            c, d, e

public final class b
    implements com.instagram.cliffjumper.a.b, a
{

    private final String a;
    private l b;
    private l c;
    private View d;
    private View e;
    private IgFilterGroup f;
    private com.instagram.cliffjumper.edit.common.ui.b g;
    private e h;
    private com.instagram.cliffjumper.a.a i;

    public b(Resources resources)
    {
        b = com.instagram.cliffjumper.edit.photo.tiltshift.l.a;
        c = com.instagram.cliffjumper.edit.photo.tiltshift.l.a;
        a = resources.getString(az.tiltshift);
    }

    static l a(b b1, l l1)
    {
        b1.c = l1;
        return l1;
    }

    static IgFilterGroup a(b b1)
    {
        return b1.f;
    }

    public static void a(ImageView imageview, l l1)
    {
        int j;
        if (l1 == com.instagram.cliffjumper.edit.photo.tiltshift.l.a)
        {
            j = au.edit_glyph_dof;
        } else
        if (l1 == l.c)
        {
            j = au.edit_glyph_dof_linear;
        } else
        {
            j = au.edit_glyph_dof_radial;
        }
        imageview.setImageResource(j);
    }

    static l b(b b1)
    {
        return b1.c;
    }

    private void b(float f1, float f2)
    {
        float f3 = f1 / (float)e.getWidth();
        float f4 = f2 / (float)(-e.getHeight());
        com.instagram.cliffjumper.edit.photo.tiltshift.m.a(f).b(f3, f4);
        m.b(f).b(f3, f4);
        m.c(f).b(f3, f4);
    }

    static com.instagram.cliffjumper.edit.common.ui.b c(b b1)
    {
        return b1.g;
    }

    static e d(b b1)
    {
        return b1.h;
    }

    public final View a(Context context)
    {
        RadioGroup radiogroup = new RadioGroup(context);
        radiogroup.setOrientation(0);
        radiogroup.setOnCheckedChangeListener(new c(this));
        radiogroup.setGravity(17);
        radiogroup.setLayoutParams(new android.widget.LinearLayout.LayoutParams(-1, -1));
        d ad[] = new d[3];
        ad[0] = new d(com.instagram.cliffjumper.edit.photo.tiltshift.l.a, context.getString(az.tilt_mode_off));
        ad[1] = new d(l.b, context.getString(az.tilt_mode_radial));
        ad[2] = new d(l.c, context.getString(az.tilt_mode_linear));
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(0, -1, 1.0F);
        int j = context.getResources().getDimensionPixelSize(at.effect_tile_padding) / 2;
        for (int i1 = 0; i1 < 3; i1++)
        {
            g g1 = new g(context, ad[i1], k.a);
            g1.a();
            g1.a(false);
            g1.b();
            g1.setPadding(j, 0, j, 0);
            radiogroup.addView(g1, layoutparams);
            if (b == ad[i1].a())
            {
                g1.setChecked(true);
            }
        }

        return radiogroup;
    }

    public final String a()
    {
        return a;
    }

    public final void a(float f1, float f2)
    {
        if (c != com.instagram.cliffjumper.edit.photo.tiltshift.l.a)
        {
            float f3 = f1 / (float)e.getWidth();
            float f4 = ((float)e.getHeight() - f2) / (float)e.getHeight();
            com.instagram.cliffjumper.edit.photo.tiltshift.m.a(f).a(f3, f4);
            m.b(f).a(f3, f4);
            m.c(f).a(f3, f4);
            if (g != null)
            {
                h.c(g);
                return;
            }
        }
    }

    public final void a(float f1, float f2, float f3, float f4)
    {
        if (c != com.instagram.cliffjumper.edit.photo.tiltshift.l.a)
        {
            if (f1 != 0.0F || f2 != 0.0F)
            {
                b(f1, f2);
            }
            if (f3 != 0.0F)
            {
                com.instagram.cliffjumper.edit.photo.tiltshift.m.a(f).b(f3);
                m.b(f).b(f3);
                m.c(f).b(f3);
            }
            if (f4 != 0.0F && c == l.c)
            {
                com.instagram.cliffjumper.edit.photo.tiltshift.m.a(f).a(f4);
                m.b(f).a(f4);
                m.c(f).a(f4);
            }
            if (g != null)
            {
                g.a();
                return;
            }
        }
    }

    public final void a(boolean flag)
    {
        boolean flag1 = true;
        if (flag)
        {
            b = c;
        } else
        if (c != b)
        {
            c = b;
            com.instagram.cliffjumper.edit.photo.tiltshift.m.a(f, c);
            IgFilterGroup igfiltergroup = f;
            boolean flag2;
            if (c != com.instagram.cliffjumper.edit.photo.tiltshift.l.a)
            {
                flag2 = flag1;
            } else
            {
                flag2 = false;
            }
            com.instagram.cliffjumper.edit.photo.tiltshift.m.a(igfiltergroup, flag2);
        }
        if (d instanceof g)
        {
            g g1 = (g)d;
            if (b == com.instagram.cliffjumper.edit.photo.tiltshift.l.a)
            {
                flag1 = false;
            }
            g1.setActive(flag1);
        } else
        if (d instanceof ImageView)
        {
            a((ImageView)d, b);
        }
        i.a();
        e.setOnTouchListener(null);
        d = null;
        e = null;
        f = null;
        g = null;
        h = null;
        i = null;
    }

    public final boolean a(View view, View view1, ViewGroup viewgroup, IgFilterGroup igfiltergroup, com.instagram.cliffjumper.edit.common.ui.b b1)
    {
        d = view;
        e = view1;
        f = igfiltergroup;
        g = b1;
        h = new e(igfiltergroup);
        i = new com.instagram.cliffjumper.a.a();
        i.a(this);
        e.setOnTouchListener(i);
        b = com.instagram.cliffjumper.edit.photo.tiltshift.m.a(f).f();
        if (b != com.instagram.cliffjumper.edit.photo.tiltshift.l.a)
        {
            h.c(b1);
        }
        return true;
    }

    public final boolean a(g g1, IgFilterGroup igfiltergroup)
    {
        boolean flag;
        if (com.instagram.cliffjumper.edit.photo.tiltshift.m.a(igfiltergroup).f() != com.instagram.cliffjumper.edit.photo.tiltshift.l.a)
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
        com.instagram.cliffjumper.edit.photo.tiltshift.m.a(f, b);
        IgFilterGroup igfiltergroup = f;
        boolean flag;
        if (b != com.instagram.cliffjumper.edit.photo.tiltshift.l.a)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        com.instagram.cliffjumper.edit.photo.tiltshift.m.a(igfiltergroup, flag);
    }

    public final void b(float f1, float f2, float f3, float f4)
    {
        if (c != com.instagram.cliffjumper.edit.photo.tiltshift.l.a)
        {
            if (f3 != 0.0F || f4 != 0.0F)
            {
                b(f3, f4);
            }
            if (g != null)
            {
                g.a();
                return;
            }
        }
    }

    public final void c()
    {
        com.instagram.cliffjumper.edit.photo.tiltshift.m.a(f, c);
        IgFilterGroup igfiltergroup = f;
        boolean flag;
        if (c != com.instagram.cliffjumper.edit.photo.tiltshift.l.a)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        com.instagram.cliffjumper.edit.photo.tiltshift.m.a(igfiltergroup, flag);
    }

    public final void d()
    {
        if (c != com.instagram.cliffjumper.edit.photo.tiltshift.l.a)
        {
            f.a(11, false);
            f.a(12, false);
            f.a(5).a(true);
            if (g != null)
            {
                h.a(g);
                return;
            }
        }
    }

    public final void e()
    {
        if (c != com.instagram.cliffjumper.edit.photo.tiltshift.l.a)
        {
            f.a(11, true);
            f.a(12, true);
            f.a(5).a(false);
            if (g != null)
            {
                h.b(g);
                return;
            }
        }
    }
}
