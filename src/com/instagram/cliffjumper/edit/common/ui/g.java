// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.common.ui;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.view.MotionEvent;
import android.widget.RadioButton;
import com.facebook.as;
import com.facebook.at;
import com.instagram.common.y.f;
import com.instagram.creation.base.ui.a;

// Referenced classes of package com.instagram.cliffjumper.edit.common.ui:
//            c, i, j, h, 
//            k

public final class g extends RadioButton
{

    private static int a = 100;
    private int A[];
    private final c b;
    private final String c;
    private final Paint d = new Paint();
    private final Paint e = new Paint();
    private final android.graphics.Paint.FontMetrics f = new android.graphics.Paint.FontMetrics();
    private final float g;
    private final float h;
    private final int i;
    private final float j;
    private final float k;
    private final int l;
    private final Rect m = new Rect();
    private float n;
    private float o;
    private int p;
    private int q;
    private final float r = com.instagram.common.y.f.a(getResources().getDisplayMetrics(), 20);
    private final h s;
    private Drawable t;
    private boolean u;
    private boolean v;
    private boolean w;
    private ColorFilter x;
    private boolean y;
    private Rect z;

    public g(Context context, c c1, int i1)
    {
        super(context);
        u = true;
        z = new Rect();
        A = new int[2];
        setClickable(true);
        setFocusable(true);
        l = i1;
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            e();
        }
        b = c1;
        c = b.e().toUpperCase(getResources().getConfiguration().locale);
        d();
        boolean flag = com.instagram.creation.base.ui.a.b(getResources());
        Resources resources = getResources();
        h = resources.getDimensionPixelSize(at.effect_tile_highlight_width);
        i = resources.getDimensionPixelSize(at.effect_tile_divider_width);
        j = resources.getDimensionPixelSize(at.effect_tile_text_padding);
        int j1;
        Object obj;
        if (flag)
        {
            j1 = at.effect_tile_text_size_large;
        } else
        {
            j1 = at.effect_tile_text_size_small;
        }
        k = resources.getDimensionPixelSize(j1);
        d.setAntiAlias(true);
        d.setTypeface(Typeface.DEFAULT_BOLD);
        d.setTextAlign(android.graphics.Paint.Align.CENTER);
        d.setTextSize(k);
        d.getFontMetrics(f);
        e.setDither(true);
        g = f.bottom - f.top;
        if (i())
        {
            obj = new i(this);
        } else
        {
            obj = new j(this);
        }
        s = ((h) (obj));
    }

    private void a(MotionEvent motionevent)
    {
        boolean flag = b(motionevent);
        switch (motionevent.getAction())
        {
        default:
            return;

        case 3: // '\003'
            break;

        case 0: // '\0'
        case 2: // '\002'
            if (flag)
            {
                g();
            } else
            {
                h();
            }
            setPressed(flag);
            return;

        case 1: // '\001'
            if (flag)
            {
                performClick();
            }
            break;
        }
        h();
        setPressed(false);
    }

    private boolean b(MotionEvent motionevent)
    {
        getLocationOnScreen(A);
        z.set(A[0], A[1], A[0] + getWidth(), A[1] + getHeight());
        return z.contains((int)motionevent.getRawX(), (int)motionevent.getRawY());
    }

    static int c()
    {
        return a;
    }

    private void d()
    {
        int i1 = b.f();
        t = (BitmapDrawable)getResources().getDrawable(i1).mutate();
    }

    private void e()
    {
        setLayerType(1, null);
    }

    private boolean f()
    {
        return y;
    }

    private void g()
    {
        if (s.c() == 0.0F)
        {
            return;
        } else
        {
            s.a(0.0F);
            return;
        }
    }

    private Rect getAdjustedImageDrawBounds()
    {
        if (s.d() == 1.0F)
        {
            return m;
        } else
        {
            Rect rect = new Rect();
            float f1 = (float)(m.left + m.right) / 2.0F;
            float f2 = (float)(m.top + m.bottom) / 2.0F;
            float f3 = 0.07999998F * (1.0F - s.d());
            float f4 = f3 * (f1 - (float)m.left);
            float f5 = f3 * (f2 - (float)m.top);
            rect.set(m.left + (int)f4, m.top + (int)f5, m.right - (int)f4, m.bottom - (int)f5);
            return rect;
        }
    }

    private void h()
    {
        if (s.c() == 1.0F)
        {
            return;
        } else
        {
            s.a(1.0F);
            return;
        }
    }

    private static final boolean i()
    {
        return android.os.Build.VERSION.SDK_INT >= 16;
    }

    public final void a()
    {
        u = false;
    }

    public final void a(boolean flag)
    {
        v = flag;
    }

    public final void b()
    {
        w = true;
        x = com.instagram.common.ui.colorfilter.a.a(getResources().getColor(as.accent_blue_medium));
    }

    public final int getPaddingRight()
    {
        int i1 = super.getPaddingRight();
        int j1;
        if (v)
        {
            j1 = i;
        } else
        {
            j1 = 0;
        }
        return j1 + i1;
    }

    public final c getTileInfo()
    {
        return b;
    }

    protected final void onDraw(Canvas canvas)
    {
        Resources resources = getResources();
        int i1;
        float f1;
        if (isPressed())
        {
            i1 = as.grey_9;
        } else
        {
            i1 = as.transparent;
        }
        canvas.drawColor(resources.getColor(i1));
        d.setStyle(android.graphics.Paint.Style.FILL);
        t.setBounds(getAdjustedImageDrawBounds());
        if (isChecked() && w)
        {
            t.setColorFilter(x);
        } else
        {
            t.setColorFilter(null);
        }
        t.draw(canvas);
        f1 = 1.0F - 0.05000001F * (1.0F - s.d());
        d.setColor(getResources().getColor(as.white));
        d.setTextSize(f1 * k);
        canvas.drawText(c, n, o, d);
        if ((isChecked() || f()) && u)
        {
            d.setStyle(android.graphics.Paint.Style.STROKE);
            d.setStrokeWidth(h);
            Paint paint = d;
            int j1;
            if (isChecked())
            {
                j1 = getResources().getColor(as.accent_blue_medium);
            } else
            {
                j1 = getResources().getColor(as.grey_5);
            }
            paint.setColor(j1);
            canvas.drawLine(0.0F, getHeight(), getWidth(), getHeight(), d);
        }
        if (v)
        {
            d.setColor(getResources().getColor(as.grey_6));
            d.setStrokeWidth(i);
            canvas.drawLine(getWidth(), p, getWidth(), q, d);
        }
    }

    protected final void onMeasure(int i1, int j1)
    {
        float f1 = android.view.View.MeasureSpec.getSize(j1);
        float f2 = Math.min(0.6F * f1, com.instagram.common.y.f.a(getResources().getDisplayMetrics(), 70));
        setMeasuredDimension(Math.round(f2 + (float)getPaddingLeft() + (float)getPaddingRight()), Math.round(f1));
        int k1 = getPaddingLeft();
        int l1 = (int)f1 / 2 - Math.round(f2) / 2 - (int)((j + g) / 2.0F);
        int i2 = ((int)f1 / 2 + Math.round(f2) / 2) - (int)((j + g) / 2.0F);
        int j2 = Math.max(0, (int)f2 - t.getIntrinsicWidth());
        int k2 = Math.max(0, (int)f2 - t.getIntrinsicHeight());
        int l2 = k1 + j2 / 2;
        int i3 = l1 + k2 / 2;
        m.set(l2, i3, l2 + t.getIntrinsicWidth(), i3 + t.getIntrinsicHeight());
        n = (float)getPaddingLeft() + f2 / 2.0F;
        o = (float)i2 - f.bottom;
        o = o + (j + g);
        q = Math.round(Math.max(0.0F, (float)l1 - r));
        p = Math.round(Math.min(o + f.bottom + r, f1));
    }

    public final void onRestoreInstanceState(Parcelable parcelable)
    {
        boolean flag = isChecked();
        super.onRestoreInstanceState(parcelable);
        setChecked(flag);
    }

    public final Parcelable onSaveInstanceState()
    {
        boolean flag = isChecked();
        setChecked(false);
        Parcelable parcelable = super.onSaveInstanceState();
        setChecked(flag);
        return parcelable;
    }

    public final boolean onTouchEvent(MotionEvent motionevent)
    {
        a(motionevent);
        return true;
    }

    public final void setActive(boolean flag)
    {
        y = flag;
        d();
        invalidate();
    }

    public final void setChecked(boolean flag)
    {
        super.setChecked(flag);
    }

    public final void toggle()
    {
        if (l == com.instagram.cliffjumper.edit.common.ui.k.a)
        {
            super.toggle();
        } else
        {
            if (l == k.b && !isChecked())
            {
                super.toggle();
                return;
            }
            if (l == k.c && isChecked())
            {
                super.toggle();
                return;
            }
        }
    }

}
