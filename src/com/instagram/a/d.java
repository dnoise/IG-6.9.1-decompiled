// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.a;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.StateSet;

// Referenced classes of package com.instagram.a:
//            e

public final class d extends Drawable
{

    private final Paint a = new Paint();
    private final Resources b;
    private final e c;
    private final int d;
    private boolean e;

    public d(Resources resources, e e1, int i)
    {
        b = resources;
        c = e1;
        d = i;
    }

    public final int a()
    {
        return d;
    }

    public final void draw(Canvas canvas)
    {
        if (e)
        {
            a.setColor(b.getColor(com.instagram.a.e.a(c)));
            canvas.drawRect(getBounds(), a);
        }
        int i;
        if (d == 3)
        {
            i = 0;
        } else
        {
            i = -1 + getBounds().width();
        }
        a.setColor(b.getColor(com.instagram.a.e.b(c)));
        canvas.drawRect(i, (float)getBounds().height() / 4F, i + 1, (3F * (float)getBounds().height()) / 4F, a);
    }

    public final int getOpacity()
    {
        return -3;
    }

    public final boolean isStateful()
    {
        return true;
    }

    protected final boolean onStateChange(int ai[])
    {
        boolean flag = e;
        e = StateSet.stateSetMatches(new int[] {
            0x10100a7
        }, ai);
        invalidateSelf();
        return flag != e;
    }

    public final void setAlpha(int i)
    {
    }

    public final void setColorFilter(ColorFilter colorfilter)
    {
    }
}
