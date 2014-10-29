// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.ui.widget.imageview;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.facebook.bb;
import org.xmlpull.v1.XmlPullParser;

// Referenced classes of package com.instagram.common.ui.widget.imageview:
//            d

public final class c extends Drawable
{

    private d a;
    private final Paint b;

    public c()
    {
        this(((d) (null)));
    }

    public c(int i)
    {
        this(((d) (null)));
        a(i);
    }

    private c(d d1)
    {
        b = new Paint();
        a = new d(d1);
    }

    c(d d1, byte byte0)
    {
        this(d1);
    }

    private void a(int i)
    {
        if (a.a != i || a.b != i)
        {
            invalidateSelf();
            d d1 = a;
            a.b = i;
            d1.a = i;
        }
    }

    public final int a()
    {
        return a.b;
    }

    public final void draw(Canvas canvas)
    {
        if (a.b >>> 24 != 0)
        {
            b.setColor(a.b);
            canvas.drawRect(getBounds(), b);
        }
    }

    public final int getAlpha()
    {
        return a.b >>> 24;
    }

    public final int getChangingConfigurations()
    {
        return super.getChangingConfigurations() | a.c;
    }

    public final android.graphics.drawable.Drawable.ConstantState getConstantState()
    {
        a.c = getChangingConfigurations();
        return a;
    }

    public final int getOpacity()
    {
        switch (a.b >>> 24)
        {
        default:
            return -3;

        case 255: 
            return -1;

        case 0: // '\0'
            return -2;
        }
    }

    public final void inflate(Resources resources, XmlPullParser xmlpullparser, AttributeSet attributeset)
    {
        super.inflate(resources, xmlpullparser, attributeset);
        TypedArray typedarray = resources.obtainAttributes(attributeset, bb.IgColorDrawable);
        int i = a.a;
        int j = typedarray.getColor(bb.IgColorDrawable_color, i);
        d d1 = a;
        a.b = j;
        d1.a = j;
        typedarray.recycle();
    }

    public final void setAlpha(int i)
    {
        int j = (i + (i >> 7)) * (a.a >>> 24) >> 8;
        int k = a.b;
        a.b = (a.a << 8) >>> 8 | j << 24;
        if (k != a.b)
        {
            invalidateSelf();
        }
    }

    public final void setColorFilter(ColorFilter colorfilter)
    {
    }
}
