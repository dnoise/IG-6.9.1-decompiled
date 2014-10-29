// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.ui;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.facebook.as;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.instagram.android.maps.ui:
//            c, h, IgAnimatingMapItem, g, 
//            d, f, e

public final class b extends LinearLayout
{

    public d a;
    public f b;
    private int c;
    private int d;
    private float e;
    private e f;
    private g g;

    public b(Context context)
    {
        super(context);
        b();
    }

    private static boolean a(LinearLayout linearlayout, View view)
    {
        return linearlayout.getLeft() == 0 && view.getLeft() == 0 && linearlayout.getTop() == 0 && view.getTop() == 0;
    }

    private void b()
    {
        setBackgroundResource(as.iosblue);
    }

    public final void a()
    {
        setLayoutListener(new c(this));
    }

    public final void a(ViewGroup viewgroup)
    {
        HashMap hashmap = new HashMap();
        for (int i = 0; i < getChildCount(); i++)
        {
            LinearLayout linearlayout = (LinearLayout)getChildAt(i);
            int i1 = getLeft() + linearlayout.getLeft();
            int j1 = getTop() + linearlayout.getTop();
            for (int k1 = 0; k1 < linearlayout.getChildCount(); k1++)
            {
                View view = linearlayout.getChildAt(k1);
                hashmap.put(view, new h(this, i1 + view.getLeft(), j1 + view.getTop(), a(linearlayout, view)));
            }

        }

        Iterator iterator = hashmap.keySet().iterator();
        int j = 0;
        while (iterator.hasNext()) 
        {
            IgAnimatingMapItem iganimatingmapitem = (IgAnimatingMapItem)iterator.next();
            if (j == 0)
            {
                iganimatingmapitem.setReverseAnimationFinishListener(a);
                iganimatingmapitem.setAnimationStartListener(b);
                iganimatingmapitem.setReverseAnimationPreFinishListener(f);
            }
            ((ViewGroup)iganimatingmapitem.getParent()).removeView(iganimatingmapitem);
            h h1 = (h)hashmap.get(iganimatingmapitem);
            android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(iganimatingmapitem.getMeasuredWidth(), iganimatingmapitem.getMeasuredHeight());
            layoutparams.setMargins(h1.a, h1.b, 0, 0);
            layoutparams.gravity = 51;
            iganimatingmapitem.setOriginalSize(c);
            iganimatingmapitem.setStartX(d - h1.a);
            iganimatingmapitem.setStartY(e - (float)h1.b);
            iganimatingmapitem.a();
            int k;
            StringBuilder stringbuilder;
            int l;
            if (h1.c)
            {
                k = viewgroup.getChildCount();
            } else
            {
                k = 0;
            }
            viewgroup.addView(iganimatingmapitem, k, layoutparams);
            stringbuilder = new StringBuilder("View ");
            l = j + 1;
            stringbuilder.append(j).append(" x ").append(h1.a).append(" y ").append(h1.b);
            j = l;
        }
        viewgroup.forceLayout();
    }

    public final ViewGroup getParentView()
    {
        return (ViewGroup)getParent();
    }

    protected final void onAnimationStart()
    {
        super.onAnimationStart();
        setVisibility(0);
    }

    protected final void onLayout(boolean flag, int i, int j, int k, int l)
    {
        super.onLayout(flag, i, j, k, l);
        if (g != null)
        {
            g.a(this);
        }
    }

    protected final void onMeasure(int i, int j)
    {
        setVisibility(4);
        super.onMeasure(i, j);
    }

    public final void setAnimationStartListener(f f1)
    {
        b = f1;
    }

    public final void setLayoutListener(g g1)
    {
        g = g1;
    }

    public final void setOriginalSize(int i)
    {
        c = i;
    }

    public final void setReverAnimationFinishListener(d d1)
    {
        a = d1;
    }

    public final void setReverseAnimationPreFinishListener(e e1)
    {
        f = e1;
    }

    public final void setStartX(int i)
    {
        d = i;
    }

    public final void setStartY(float f1)
    {
        e = f1;
    }
}
