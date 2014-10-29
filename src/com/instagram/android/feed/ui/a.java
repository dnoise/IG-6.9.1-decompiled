// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.ui;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

// Referenced classes of package com.instagram.android.feed.ui:
//            b

public class a extends Drawable
    implements android.graphics.drawable.Drawable.Callback
{

    protected b a;

    public a(Drawable drawable)
    {
        this(null, null);
        a.a = drawable;
        if (drawable != null)
        {
            drawable.setCallback(this);
        }
    }

    private a(b b1, Resources resources)
    {
        a = new b(b1, this, resources);
    }

    a(b b1, Resources resources, byte byte0)
    {
        this(b1, resources);
    }

    protected void a()
    {
        Rect rect;
        int i;
        int j;
        rect = getBounds();
        i = (int)((double)(a.a.getLevel() * rect.width()) / 10000D);
        j = a.a.getIntrinsicWidth();
        if ((double)i >= (double)j / 2D) goto _L2; else goto _L1
_L1:
        j = 0;
_L4:
        a.a.setBounds(rect.left, rect.top, j + rect.left, rect.bottom);
        return;
_L2:
        if (i >= j)
        {
            j = i;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void draw(Canvas canvas)
    {
        if (a.a.getLevel() == 0)
        {
            return;
        } else
        {
            a.a.draw(canvas);
            return;
        }
    }

    public int getChangingConfigurations()
    {
        return super.getChangingConfigurations() | a.b | a.a.getChangingConfigurations();
    }

    public android.graphics.drawable.Drawable.ConstantState getConstantState()
    {
        if (a.a())
        {
            a.b = getChangingConfigurations();
            return a;
        } else
        {
            return null;
        }
    }

    public int getIntrinsicHeight()
    {
        return a.a.getIntrinsicHeight();
    }

    public int getIntrinsicWidth()
    {
        return a.a.getIntrinsicWidth();
    }

    public int getOpacity()
    {
        return a.a.getOpacity();
    }

    public boolean getPadding(Rect rect)
    {
        return a.a.getPadding(rect);
    }

    public void invalidateDrawable(Drawable drawable)
    {
        android.graphics.drawable.Drawable.Callback callback = getCallback();
        if (callback != null)
        {
            callback.invalidateDrawable(this);
        }
    }

    public boolean isStateful()
    {
        return a.a.isStateful();
    }

    protected void onBoundsChange(Rect rect)
    {
        a();
    }

    protected boolean onLevelChange(int i)
    {
        a.a.setLevel(i);
        a();
        invalidateSelf();
        return true;
    }

    protected boolean onStateChange(int ai[])
    {
        return a.a.setState(ai);
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long l)
    {
        android.graphics.drawable.Drawable.Callback callback = getCallback();
        if (callback != null)
        {
            callback.scheduleDrawable(this, runnable, l);
        }
    }

    public void setAlpha(int i)
    {
        a.a.setAlpha(i);
    }

    public void setColorFilter(ColorFilter colorfilter)
    {
        a.a.setColorFilter(colorfilter);
    }

    public boolean setVisible(boolean flag, boolean flag1)
    {
        a.a.setVisible(flag, flag1);
        return super.setVisible(flag, flag1);
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable)
    {
        android.graphics.drawable.Drawable.Callback callback = getCallback();
        if (callback != null)
        {
            callback.unscheduleDrawable(this, runnable);
        }
    }
}
