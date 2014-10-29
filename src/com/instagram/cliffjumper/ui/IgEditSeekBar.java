// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.facebook.as;
import com.facebook.at;
import com.facebook.au;
import com.facebook.f.a.a;
import com.facebook.f.a.c;
import com.facebook.f.a.d;
import com.facebook.f.a.f;
import com.facebook.f.a.h;

// Referenced classes of package com.instagram.cliffjumper.ui:
//            a

public class IgEditSeekBar extends FrameLayout
    implements c, d, f
{

    private a a;
    private Paint b;
    private Paint c;
    private Paint d;
    private Drawable e;
    private Drawable f;
    private int g;
    private int h;
    private int i;
    private int j;
    private float k;
    private float l;
    private int m;
    private com.instagram.cliffjumper.ui.a n;

    public IgEditSeekBar(Context context)
    {
        this(context, null);
    }

    public IgEditSeekBar(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        m = 100;
        a = new a(context);
        a a1 = a;
        h ah[] = new h[2];
        ah[0] = h.c;
        ah[1] = h.d;
        a1.a(ah);
        a.a(this);
        a.a(this);
        a.a(this);
        Resources resources = context.getResources();
        b = new Paint();
        b.setColor(resources.getColor(as.seek_bar_inactive_color));
        b.setStrokeWidth(resources.getDimensionPixelSize(at.seek_bar_width));
        c = new Paint();
        c.setColor(resources.getColor(as.seek_bar_active_color));
        c.setStrokeWidth(resources.getDimensionPixelSize(at.seek_bar_width));
        d = new Paint();
        d.setColor(resources.getColor(as.seek_bar_active_color));
        d.setTextSize(resources.getDimensionPixelSize(at.seek_bar_text_size));
        d.setAlpha(127);
        d.setTextAlign(android.graphics.Paint.Align.CENTER);
        g = resources.getDimensionPixelSize(at.seek_bar_root_size);
        h = resources.getDimensionPixelSize(at.seek_bar_knob_size);
        i = resources.getDimensionPixelSize(at.seek_bar_tappable_height);
        j = resources.getDimensionPixelSize(at.seek_bar_default_gap);
        e = resources.getDrawable(au.seek_bar_root);
        f = resources.getDrawable(au.seek_bar_knob);
    }

    private float a(int i1)
    {
        int j1;
        int k1;
        if (i1 > 0)
        {
            j1 = getFatZeroRadiusSegmentSize();
        } else
        {
            j1 = -getFatZeroRadiusSegmentSize();
        }
        k1 = j1 + i1;
        if (Math.abs(k1) <= getFatZeroRadiusSegmentSize())
        {
            return k;
        } else
        {
            return (float)k1 / (float)getSeekerBarSegmentSize() + k;
        }
    }

    private static void a(Drawable drawable, int i1, int j1, int k1)
    {
        drawable.setBounds(j1 - i1 / 2, k1 - i1 / 2, j1 + i1 / 2, k1 + i1 / 2);
    }

    private void c(float f1)
    {
        setCurrentPositionWithBounds(f1 + l);
    }

    private boolean c(float f1, float f2)
    {
        if (!d(f2))
        {
            return false;
        }
        if (f1 >= (float)(getWidth() / 3)) goto _L2; else goto _L1
_L1:
        setCurrentValue(-1 + getCurrentPositionAsValue());
_L4:
        if (n != null)
        {
            n.b();
        }
        return true;
_L2:
        if (f1 > (float)((2 * getWidth()) / 3))
        {
            setCurrentValue(1 + getCurrentPositionAsValue());
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private boolean d(float f1)
    {
        return Math.abs(f1 - (float)getCenterY()) <= (float)i;
    }

    private int getCenterY()
    {
        return getHeight() / 2;
    }

    private int getCurrentPositionAsValue()
    {
        int i1 = Math.round((l - k) * (float)getSeekerBarSegmentSize());
        if (Math.abs(i1) <= getFatZeroRadiusSegmentSize())
        {
            return 0;
        }
        int j1;
        if (i1 > 0)
        {
            j1 = getFatZeroRadiusSegmentSize();
        } else
        {
            j1 = -getFatZeroRadiusSegmentSize();
        }
        return i1 - j1;
    }

    private int getFatZeroExtraSegmentSize()
    {
        if (k == 0.0F || k == 1.0F)
        {
            return getFatZeroRadiusSegmentSize();
        } else
        {
            return 2 * getFatZeroRadiusSegmentSize();
        }
    }

    private int getFatZeroRadiusSegmentSize()
    {
        return Math.round((float)(1 * m) / 100F);
    }

    private int getKnobCenterX()
    {
        return getLeftBound() + (int)(l * (float)getLengthPx());
    }

    private int getLeftBound()
    {
        return h / 2 + j;
    }

    private int getLengthPx()
    {
        return getWidth() - h / 2 - j - getLeftBound();
    }

    private int getRootCenterX()
    {
        return getLeftBound() + (int)(k * (float)getLengthPx());
    }

    private int getSeekerBarSegmentSize()
    {
        return m + getFatZeroExtraSegmentSize();
    }

    private void setCurrentPositionWithBounds(float f1)
    {
        l = Math.min(1.0F, Math.max(0.0F, f1));
        if (n != null)
        {
            n.a(getCurrentPositionAsValue());
        }
        invalidate();
    }

    public final boolean a()
    {
        if (n != null)
        {
            n.a();
        }
        return true;
    }

    public final boolean a(float f1)
    {
        return d(f1);
    }

    public final boolean a(float f1, float f2)
    {
        return c(f1, f2);
    }

    public final void b()
    {
        if (n != null)
        {
            n.b();
        }
    }

    public final void b(float f1)
    {
        c(f1 / (float)getLengthPx());
    }

    public final void b(float f1, float f2)
    {
        c(f1, f2);
    }

    public final void c()
    {
        if (n != null)
        {
            n.b();
        }
    }

    protected void dispatchDraw(Canvas canvas)
    {
        canvas.drawLine(getLeftBound(), getCenterY(), getLeftBound() + getLengthPx(), getCenterY(), b);
        canvas.drawLine(getRootCenterX(), getCenterY(), getKnobCenterX(), getCenterY(), c);
        a(e, g, getRootCenterX(), getCenterY());
        e.draw(canvas);
        a(f, h, getKnobCenterX(), getCenterY());
        f.draw(canvas);
        int i1 = getCurrentPositionAsValue();
        if (i1 != 0)
        {
            canvas.drawText(String.valueOf(i1), getKnobCenterX(), (float)getCenterY() / 2.0F + d.getFontMetrics().bottom, d);
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        return a.a(motionevent);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        return a.b(motionevent);
    }

    public void setCurrentValue(int i1)
    {
        setCurrentPositionWithBounds(a(i1));
    }

    public void setOnSeekBarChangeListener(com.instagram.cliffjumper.ui.a a1)
    {
        n = a1;
        if (n != null)
        {
            n.a(getCurrentPositionAsValue());
        }
    }

    public void setRootPosition(float f1)
    {
        k = f1;
    }

    public void setValueRangeSize(int i1)
    {
        m = i1;
    }
}
