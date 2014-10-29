// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.common.ui.sliderview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.HorizontalScrollView;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.instagram.cliffjumper.edit.common.ui.sliderview:
//            AngleRulerView, a

public class SliderView extends HorizontalScrollView
{

    private a a;
    private float b;
    private boolean c;
    private boolean d;
    private float e;
    private boolean f;
    private boolean g;
    private int h;
    private boolean i;
    private float j;
    private float k;
    private AngleRulerView l;
    private int m;
    private List n;

    public SliderView(Context context)
    {
        super(context);
        c = false;
        i = false;
        j = -1F;
        k = 1.0F;
        n = new LinkedList();
    }

    public SliderView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        c = false;
        i = false;
        j = -1F;
        k = 1.0F;
        n = new LinkedList();
    }

    public SliderView(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        c = false;
        i = false;
        j = -1F;
        k = 1.0F;
        n = new LinkedList();
    }

    private float a()
    {
        return 0.1F / (2.0F * l.getMaximumAngle());
    }

    private float a(float f1)
    {
        return (float)Math.round(10F * (f1 * l.getMaximumAngle())) / 10F;
    }

    private float a(int i1)
    {
        return (float)(2 * ((int)((double)i1 + (double)getWidth() / 2D) - h)) / b;
    }

    private void a(float f1, float f2)
    {
        j = f1;
        k = f2;
    }

    private float b(float f1)
    {
        return f1 / l.getMaximumAngle();
    }

    private void b()
    {
        c = true;
    }

    private void b(float f1, boolean flag)
    {
        float f2 = Math.min(k, f1);
        float f3 = (1.0F + Math.max(j, f2)) / 2.0F;
        int i1 = (int)(((float)l.getLeft() + f3 * (float)l.getWidth()) - (float)getWidth() / 2.0F);
        if (flag)
        {
            smoothScrollTo(i1, 0);
            return;
        } else
        {
            scrollTo(i1, 0);
            return;
        }
    }

    private void c()
    {
        c = false;
    }

    private boolean c(float f1)
    {
        return f1 < 0.25F * (float)getWidth();
    }

    private void d()
    {
        c();
        l = (AngleRulerView)getChildAt(0);
        scrollTo(((l.getLeft() + l.getRight()) - getWidth()) / 2, getScrollY());
        h = getScrollX() + getWidth() / 2;
        b();
        b = l.getWidth();
    }

    private boolean d(float f1)
    {
        return f1 > 0.75F * (float)getWidth();
    }

    private float getCurrentScrollPercent()
    {
        return a(getScrollX());
    }

    public final void a(float f1, boolean flag)
    {
        if (i)
        {
            b(b(f1), flag);
            return;
        } else
        {
            d = true;
            e = f1;
            f = flag;
            return;
        }
    }

    public void fling(int i1)
    {
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        int i1 = motionevent.getPointerId(motionevent.getActionIndex());
        motionevent.getAction();
        JVM INSTR tableswitch 5 6: default 36
    //                   5 42
    //                   6 59;
           goto _L1 _L2 _L3
_L1:
        return super.onInterceptTouchEvent(motionevent);
_L2:
        n.add(Integer.valueOf(i1));
        continue; /* Loop/switch isn't completed */
_L3:
        n.remove(n.indexOf(Integer.valueOf(i1)));
        if (true) goto _L1; else goto _L4
_L4:
    }

    public void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        super.onLayout(flag, i1, j1, k1, l1);
        if (!i)
        {
            d();
            float f1 = l.getMaximumAngle();
            a(-30F / f1, 30F / f1);
            i = true;
        }
        if (d)
        {
            b(b(e), f);
            d = false;
            e = 0.0F;
            f = false;
        }
    }

    public void onMeasure(int i1, int j1)
    {
        super.onMeasure(i1, j1);
        if (getChildCount() > 0)
        {
            View view = getChildAt(0);
            int k1 = getMeasuredWidth();
            int l1 = getChildMeasureSpec(j1, 0, ((android.widget.FrameLayout.LayoutParams)view.getLayoutParams()).height);
            view.measure(android.view.View.MeasureSpec.makeMeasureSpec(k1, 0x40000000), l1);
        }
    }

    protected void onScrollChanged(int i1, int j1, int k1, int l1)
    {
        super.onScrollChanged(i1, j1, k1, l1);
        if (!c) goto _L2; else goto _L1
_L1:
        float f1 = getCurrentScrollPercent();
        if (f1 <= k) goto _L4; else goto _L3
_L3:
        b(k, false);
        f1 = k;
_L6:
        if (a != null)
        {
            a.a(a(f1));
        }
_L2:
        return;
_L4:
        if (f1 < j)
        {
            b(j, false);
            f1 = j;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        motionevent.getAction();
        JVM INSTR tableswitch 0 3: default 36
    //                   0 56
    //                   1 193
    //                   2 98
    //                   3 256;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        g = false;
_L6:
        m = (int)motionevent.getX();
        return super.onTouchEvent(motionevent);
_L2:
        if (a != null)
        {
            a.a();
        }
        g = true;
        n.add(Integer.valueOf(motionevent.getPointerId(0)));
        if (true) goto _L6; else goto _L4
_L4:
        int i1;
        g = false;
        i1 = motionevent.findPointerIndex(((Integer)n.get(0)).intValue());
        if (i1 == -1) goto _L6; else goto _L7
_L7:
        float f1;
        float f2;
        int j1 = m - (int)motionevent.getX(i1);
        f1 = a(getCurrentScrollPercent());
        f2 = a(a(j1 + getScrollX()));
        if (f1 != 0.0F || Math.abs(f2) >= 0.75F) goto _L6; else goto _L8
_L8:
        b(0.0F, false);
        return true;
_L3:
        if (a != null)
        {
            a.b();
        }
        if (g)
        {
            if (c(motionevent.getX()))
            {
                if (a != null)
                {
                    scrollBy(-1 * (int)(a() * b), 0);
                }
            } else
            if (d(motionevent.getX()) && a != null)
            {
                scrollBy((int)(a() * b), 0);
            }
        }
        g = false;
_L5:
        m = 0;
        n.clear();
        if (true) goto _L1; else goto _L9
_L9:
    }

    public void setOnSlideListener(a a1)
    {
        a = a1;
    }
}
