// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AnimationSet;
import android.widget.FrameLayout;
import com.facebook.at;
import com.facebook.bb;
import com.instagram.android.b.a;
import com.instagram.android.b.b;
import com.instagram.common.y.d;

// Referenced classes of package com.instagram.android.maps.ui:
//            a, d, f, e

public class IgAnimatingMapItem extends FrameLayout
{

    public static final b a = new b();
    public static int f = 0;
    protected AnimationSet b;
    public com.instagram.android.maps.ui.d c;
    public f d;
    public e e;
    private int g;
    private int h;
    private float i;
    private boolean j;
    private boolean k;
    private com.instagram.ui.a.a l;
    private com.instagram.android.maps.ui.d m;

    public IgAnimatingMapItem(Context context)
    {
        super(context);
        j = false;
        k = true;
    }

    public IgAnimatingMapItem(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        j = false;
        k = true;
        a(attributeset);
    }

    public IgAnimatingMapItem(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        j = false;
        k = true;
        a(attributeset);
    }

    private void a(AttributeSet attributeset)
    {
        k = getContext().obtainStyledAttributes(attributeset, bb.IgAnimatingMapItem).getBoolean(bb.IgAnimatingMapItem_scale, true);
    }

    static boolean a(IgAnimatingMapItem iganimatingmapitem)
    {
        return iganimatingmapitem.j;
    }

    public final void a()
    {
        b = new AnimationSet(getContext(), null);
        if (k)
        {
            a a1 = new a(g, g);
            a1.setDuration(300L);
            a1.setStartOffset(0L);
            a1.setFillBefore(true);
            a1.setFillAfter(true);
            b.addAnimation(a1);
        }
        l = new com.instagram.ui.a.a(h, i, 0.0F);
        l.setDuration(300L);
        l.setStartOffset(0L);
        l.setFillAfter(true);
        l.setFillBefore(true);
        b.setFillAfter(true);
        b.addAnimation(l);
        b.addAnimation(new com.instagram.android.maps.ui.a(this));
        a(b);
        startAnimation(b);
    }

    public final void a(int i1, int j1)
    {
        l.a(i1 - getLeft());
        l.b((j1 - getTop()) + getResources().getDimensionPixelSize(at.maps_translate_animation_back_offset));
        b();
    }

    protected void a(AnimationSet animationset)
    {
    }

    public final void b()
    {
        j = true;
        b.reset();
        b.setInterpolator(a);
        startAnimation(b);
    }

    public void draw(Canvas canvas)
    {
        super.draw(canvas);
        Rect rect = canvas.getClipBounds();
        Object aobj[] = new Object[4];
        aobj[0] = Integer.valueOf(rect.left);
        aobj[1] = Integer.valueOf(rect.top);
        aobj[2] = Integer.valueOf(rect.right);
        aobj[3] = Integer.valueOf(rect.bottom);
        String.format("draw %s %s %s %s", aobj);
    }

    protected boolean drawChild(Canvas canvas, View view, long l1)
    {
        canvas.getClipBounds();
        if (getTop() == 0)
        {
            return true;
        } else
        {
            Object aobj[] = new Object[4];
            aobj[0] = Integer.valueOf(getLeft());
            aobj[1] = Integer.valueOf(getTop());
            aobj[2] = Integer.valueOf(getRight());
            aobj[3] = Integer.valueOf(getBottom());
            String.format("drawChild %s %s %s %s", aobj);
            return super.drawChild(canvas, view, l1);
        }
    }

    protected void onAnimationEnd()
    {
        f = -1 + f;
        if (m != null)
        {
            m.a();
        }
        if (c != null && j)
        {
            c.a();
        }
        com.instagram.common.y.d.b("ANIMATING_STOPPING");
        super.onAnimationEnd();
    }

    protected void onAnimationStart()
    {
        f = 1 + f;
        if (d != null)
        {
            d.a();
        }
        com.instagram.common.y.d.b("ANIMATING");
        super.onAnimationStart();
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        super.onLayout(flag, i1, j1, k1, l1);
        Object aobj[] = new Object[4];
        aobj[0] = Integer.valueOf(i1);
        aobj[1] = Integer.valueOf(j1);
        aobj[2] = Integer.valueOf(k1);
        aobj[3] = Integer.valueOf(l1);
        String.format("onLayout %s %s %s %s", aobj);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        return f > 0 || super.onTouchEvent(motionevent);
    }

    public void setAnimationFinishListener(com.instagram.android.maps.ui.d d1)
    {
        m = d1;
    }

    public void setAnimationStartListener(f f1)
    {
        d = f1;
    }

    public void setOriginalSize(int i1)
    {
        g = i1;
    }

    public void setReverseAnimationFinishListener(com.instagram.android.maps.ui.d d1)
    {
        c = d1;
    }

    public void setReverseAnimationPreFinishListener(e e1)
    {
        e = e1;
    }

    public void setStartX(int i1)
    {
        h = i1;
    }

    public void setStartY(float f1)
    {
        i = f1;
    }

}
