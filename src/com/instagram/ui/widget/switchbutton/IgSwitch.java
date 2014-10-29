// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.widget.switchbutton;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.widget.CompoundButton;
import com.facebook.au;

// Referenced classes of package com.instagram.ui.widget.switchbutton:
//            a

public class IgSwitch extends CompoundButton
{

    private Drawable a;
    private Drawable b;
    private Drawable c;
    private Rect d;
    private int e;
    private float f;
    private int g;
    private VelocityTracker h;
    private float i;
    private float j;
    private int k;
    private int l;
    private int m;
    private boolean n;

    public IgSwitch(Context context)
    {
        super(context);
        d = new Rect();
        a();
    }

    public IgSwitch(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        d = new Rect();
        a();
    }

    public IgSwitch(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        d = new Rect();
        a();
    }

    static float a(IgSwitch igswitch, float f1)
    {
        igswitch.f = f1;
        return f1;
    }

    static int a(IgSwitch igswitch)
    {
        return igswitch.g;
    }

    private void a()
    {
        setClickable(true);
        ViewConfiguration viewconfiguration = ViewConfiguration.get(getContext());
        l = viewconfiguration.getScaledTouchSlop();
        m = viewconfiguration.getScaledMinimumFlingVelocity();
        a = getResources().getDrawable(au.toggle);
        b = getResources().getDrawable(au.toggle_active);
        c = getResources().getDrawable(au.toggle_nub);
        e = c.getIntrinsicWidth();
        g = a.getIntrinsicWidth() - e;
    }

    private void a(MotionEvent motionevent)
    {
        MotionEvent motionevent1 = MotionEvent.obtain(motionevent);
        motionevent1.setAction(3);
        super.onTouchEvent(motionevent1);
        motionevent1.recycle();
    }

    private void a(boolean flag)
    {
        n = true;
        setChecked(flag);
    }

    private boolean a(float f1, float f2)
    {
        int i1 = getPaddingTop() - l;
        int j1 = (int)(((float)getPaddingLeft() + (0.5F + f)) - (float)l);
        int k1 = j1 + e + 2 * l;
        int l1 = i1 + c.getIntrinsicHeight() + 2 * l;
        return f1 > (float)j1 && f1 < (float)k1 && f2 > (float)i1 && f2 < (float)l1;
    }

    private void b(MotionEvent motionevent)
    {
        boolean flag = true;
        k = 0;
        int i1;
        if (motionevent.getAction() == flag && isEnabled())
        {
            i1 = ((flag) ? 1 : 0);
        } else
        {
            i1 = 0;
        }
        a(motionevent);
        if (i1 != 0)
        {
            h.computeCurrentVelocity(1000);
            float f1 = h.getXVelocity();
            if (Math.abs(f1) > (float)m)
            {
                if (f1 <= 0.0F)
                {
                    flag = false;
                }
            } else
            {
                flag = getTargetCheckedState();
            }
            a(flag);
            return;
        } else
        {
            a(isChecked());
            return;
        }
    }

    private boolean getTargetCheckedState()
    {
        return f >= (float)(g / 2);
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        if (h != null)
        {
            h.recycle();
            h = null;
        }
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        float f1 = f / (float)g;
        b.setAlpha((int)(f1 * 255F));
        a.draw(canvas);
        b.draw(canvas);
        int i1 = (int)(0.5F + f);
        c.setBounds(i1 + getPaddingLeft(), getPaddingTop(), i1 + e + getPaddingLeft(), getPaddingTop() + c.getIntrinsicHeight());
        c.draw(canvas);
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        super.onLayout(flag, i1, j1, k1, l1);
        d.set(getPaddingLeft(), getPaddingTop(), a.getIntrinsicWidth() + getPaddingLeft(), a.getIntrinsicHeight() + getPaddingTop());
        a.setBounds(d);
        b.setBounds(d);
        float f1;
        if (isChecked())
        {
            f1 = g;
        } else
        {
            f1 = 0.0F;
        }
        f = f1;
    }

    protected void onMeasure(int i1, int j1)
    {
        setMeasuredDimension(b.getIntrinsicWidth() + getPaddingLeft() + getPaddingRight(), b.getIntrinsicHeight() + getPaddingTop() + getPaddingBottom());
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        boolean flag;
        flag = true;
        if (h == null)
        {
            h = VelocityTracker.obtain();
        }
        h.addMovement(motionevent);
        motionevent.getActionMasked();
        JVM INSTR tableswitch 0 3: default 60
    //                   0 68
    //                   1 287
    //                   2 118
    //                   3 287;
           goto _L1 _L2 _L3 _L4 _L3
_L1:
        flag = super.onTouchEvent(motionevent);
_L6:
        return flag;
_L2:
        float f5 = motionevent.getX();
        float f6 = motionevent.getY();
        if (isEnabled() && a(f5, f6))
        {
            k = ((flag) ? 1 : 0);
            i = f5;
            j = f6;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        float f1;
        float f2;
        switch (k)
        {
        case 0: // '\0'
        default:
            continue; /* Loop/switch isn't completed */

        case 1: // '\001'
            float f3 = motionevent.getX();
            float f4 = motionevent.getY();
            if (Math.abs(f3 - i) > (float)l || Math.abs(f4 - j) > (float)l)
            {
                k = 2;
                getParent().requestDisallowInterceptTouchEvent(flag);
                i = f3;
                j = f4;
                return flag;
            }
            continue; /* Loop/switch isn't completed */

        case 2: // '\002'
            f1 = motionevent.getX();
            f2 = Math.max(0.0F, Math.min((f1 - i) + f, g));
            break;
        }
        if (f2 == f) goto _L6; else goto _L5
_L5:
        f = f2;
        i = f1;
        invalidate();
        return flag;
_L3:
        if (k == 2)
        {
            b(motionevent);
            return flag;
        }
        k = 0;
        h.clear();
        h.recycle();
        h = null;
        if (true) goto _L1; else goto _L7
_L7:
    }

    public boolean performClick()
    {
        n = true;
        return super.performClick();
    }

    public void setChecked(boolean flag)
    {
        super.setChecked(flag);
        int i1;
        if (flag)
        {
            i1 = g;
        } else
        {
            i1 = 0;
        }
        if (n && getWindowToken() != null)
        {
            clearAnimation();
            startAnimation(new a(this, f, i1, (byte)0));
        } else
        {
            f = i1;
            invalidate();
        }
        n = false;
    }
}
