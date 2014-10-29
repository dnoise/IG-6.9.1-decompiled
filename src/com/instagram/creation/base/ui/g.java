// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.base.ui;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.widget.RadioButton;
import com.facebook.as;
import com.instagram.common.y.f;

// Referenced classes of package com.instagram.creation.base.ui:
//            h, a

public final class g extends RadioButton
{

    private static final PorterDuffXfermode a;
    private final h b;
    private final Drawable c;
    private final String d;
    private final Paint e = new Paint();
    private final Paint f = new Paint();
    private final android.graphics.Paint.FontMetrics g = new android.graphics.Paint.FontMetrics();
    private final float h;
    private final float i;
    private final float j;
    private final boolean k = com.instagram.creation.base.ui.a.b(getResources());
    private final Rect l = new Rect();
    private final RectF m = new RectF();
    private final RectF n = new RectF();
    private final RectF o = new RectF();
    private final RectF p = new RectF();
    private float q;
    private float r;
    private final float s;

    public g(Context context, h h1)
    {
        super(context);
        setClickable(true);
        setFocusable(true);
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            a();
        }
        b = h1;
        d = b.a().toUpperCase(getResources().getConfiguration().locale);
        int i1 = b.c();
        BitmapDrawable bitmapdrawable = (BitmapDrawable)getResources().getDrawable(i1).mutate();
        bitmapdrawable.getPaint().setXfermode(a);
        c = bitmapdrawable;
        android.util.DisplayMetrics displaymetrics = getResources().getDisplayMetrics();
        i = com.instagram.common.y.f.a(displaymetrics, 2);
        j = com.instagram.common.y.f.a(displaymetrics, 1.5F);
        s = com.instagram.common.y.f.a(displaymetrics, 12);
        e.setAntiAlias(true);
        e.setTypeface(Typeface.DEFAULT_BOLD);
        e.setTextAlign(android.graphics.Paint.Align.CENTER);
        Paint paint = e;
        android.util.DisplayMetrics displaymetrics1 = getResources().getDisplayMetrics();
        byte byte0;
        if (k)
        {
            byte0 = 12;
        } else
        {
            byte0 = 10;
        }
        paint.setTextSize(com.instagram.common.y.f.a(displaymetrics1, byte0));
        e.getFontMetrics(g);
        f.setDither(true);
        h = g.bottom - g.top;
    }

    private void a()
    {
        setLayerType(1, null);
    }

    public final h getFilter()
    {
        return b;
    }

    protected final void onDraw(Canvas canvas)
    {
        canvas.drawARGB(0, 0, 0, 0);
        e.setXfermode(null);
        e.setStyle(android.graphics.Paint.Style.FILL);
        e.setColor(0xff424242);
        canvas.drawRoundRect(n, 4F, 4F, e);
        c.setBounds(l);
        c.draw(canvas);
        if (!k)
        {
            canvas.drawRect(m, f);
        }
        Paint paint = e;
        int i1;
        if (isChecked() && k)
        {
            i1 = getResources().getColor(as.accent_blue_medium);
        } else
        {
            i1 = getResources().getColor(as.white);
        }
        paint.setColor(i1);
        canvas.drawText(d, q, r, e);
        if (isChecked())
        {
            e.setXfermode(a);
            e.setStyle(android.graphics.Paint.Style.STROKE);
            e.setStrokeWidth(i);
            e.setColor(getResources().getColor(as.accent_blue_medium));
            canvas.drawRect(o, e);
            e.setStrokeWidth(j);
            e.setColor(getResources().getColor(as.black));
            canvas.drawRect(p, e);
        }
    }

    protected final void onMeasure(int i1, int j1)
    {
        float f1 = android.view.View.MeasureSpec.getSize(j1);
        if (k)
        {
            f1 -= s + h;
        }
        float f2 = Math.min(f1, com.instagram.common.y.f.a(getResources().getDisplayMetrics(), 88));
        float f3 = f2 + (float)getPaddingLeft() + (float)getPaddingRight();
        float f4 = f2 + (float)getPaddingTop() + (float)getPaddingBottom();
        if (k)
        {
            f4 += s + h;
        }
        setMeasuredDimension(Math.round(f3), Math.round(f4));
        l.set(getPaddingLeft(), getPaddingTop(), getPaddingLeft() + Math.round(f2), getPaddingTop() + Math.round(f2));
        n.set(l);
        o.set(n);
        float f5 = i / 2.0F;
        o.inset(f5, f5);
        p.set(o);
        float f6 = (j + i) / 2.0F;
        p.inset(f6, f6);
        if (!k)
        {
            m.set(getPaddingLeft(), (float)getPaddingTop() + f2 / 2.0F, f2 + (float)getPaddingLeft(), f2 + (float)getPaddingTop());
            f.setShader(new LinearGradient(0.0F, (float)getPaddingTop() + f2 / 2.0F, 0.0F, f2 + (float)getPaddingTop(), 0, 0x88000000, android.graphics.Shader.TileMode.CLAMP));
        }
        q = (float)getPaddingLeft() + f2 / 2.0F;
        r = (float)l.bottom - g.bottom;
        if (k)
        {
            r = r + (s + h);
            return;
        } else
        {
            r = r - com.instagram.common.y.f.a(getResources().getDisplayMetrics(), 2);
            return;
        }
    }

    static 
    {
        a = new PorterDuffXfermode(android.graphics.PorterDuff.Mode.SRC_IN);
    }
}
