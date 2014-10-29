// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.g;

import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.au;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.ui.f.f;
import com.instagram.ui.f.g;

public final class a
    implements f
{

    private final LayoutInflater a;
    private final DisplayMetrics b;
    private String c;
    private android.view.View.OnClickListener d;
    private android.view.View.OnClickListener e;
    private int f;
    private View g;
    private int h;
    private ImageView i;

    public a(LayoutInflater layoutinflater, DisplayMetrics displaymetrics)
    {
        a = layoutinflater;
        b = displaymetrics;
    }

    private void a(int j)
    {
        boolean flag;
        if (d != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (j != h)
        {
            int l;
            if (j == g.a)
            {
                g = a.inflate(aw.tooltip_down, null);
                i = (ImageView)g.findViewById(av.bottom_carrot);
                ImageView imageview1 = i;
                View view;
                View view1;
                View view2;
                int i1;
                if (flag)
                {
                    i1 = au.carrot_down_bg;
                } else
                {
                    i1 = au.tag_carrot_bottom;
                }
                imageview1.setImageResource(i1);
            } else
            if (j == g.b)
            {
                g = a.inflate(aw.tooltip_up, null);
                i = (ImageView)g.findViewById(av.top_carrot);
                ImageView imageview = i;
                int k;
                if (flag)
                {
                    k = au.carrot_up_bg;
                } else
                {
                    k = au.tag_carrot_top;
                }
                imageview.setImageResource(k);
            }
            view = g.findViewById(av.bubble_container);
            if (flag)
            {
                l = au.tag_bubble_bg;
            } else
            {
                l = au.tag_bubble;
            }
            view.setBackgroundResource(l);
            g.setClickable(flag);
            g.setOnClickListener(d);
            view1 = g.findViewById(av.dismiss);
            view2 = g.findViewById(av.dismiss_spacer);
            view1.setOnClickListener(e);
            view1.setVisibility(f);
            view2.setVisibility(f);
            if (f == 8)
            {
                com.instagram.common.y.f.c(view, view.getPaddingLeft());
            }
            ((TextView)g.findViewById(av.text)).setText(c);
            h = j;
        }
    }

    private void b(int j)
    {
        android.view.ViewGroup.MarginLayoutParams marginlayoutparams = (android.view.ViewGroup.MarginLayoutParams)i.getLayoutParams();
        if (j < 0)
        {
            marginlayoutparams.leftMargin = 0;
            marginlayoutparams.rightMargin = Math.abs(j);
        } else
        {
            marginlayoutparams.leftMargin = j;
            marginlayoutparams.rightMargin = 0;
        }
        i.setLayoutParams(marginlayoutparams);
    }

    private void d()
    {
        if (g != null)
        {
            throw new UnsupportedOperationException("view already created");
        } else
        {
            return;
        }
    }

    public final View a(int j, int k)
    {
        if (j != h)
        {
            a(j);
        }
        b(k);
        return g;
    }

    public final void a(android.view.View.OnClickListener onclicklistener)
    {
        d = onclicklistener;
    }

    public final void a(String s)
    {
        d();
        c = s;
    }

    public final int[] a()
    {
        if (g == null)
        {
            a(g.b);
        }
        g.measure(android.view.View.MeasureSpec.makeMeasureSpec(0, 0), android.view.View.MeasureSpec.makeMeasureSpec(0, 0));
        int ai[] = new int[2];
        ai[0] = g.getMeasuredWidth();
        ai[1] = g.getMeasuredHeight();
        return ai;
    }

    public final int b()
    {
        return (int)((float)g.getMeasuredWidth() / 2.0F - com.instagram.common.y.f.a(b, 26) / 2.0F - com.instagram.common.y.f.a(b, 3));
    }

    public final void b(android.view.View.OnClickListener onclicklistener)
    {
        d();
        e = onclicklistener;
    }

    public final void c()
    {
        d();
        f = 8;
    }
}
