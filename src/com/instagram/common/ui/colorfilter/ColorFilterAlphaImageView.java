// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.ui.colorfilter;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.facebook.bb;

// Referenced classes of package com.instagram.common.ui.colorfilter:
//            a

public class ColorFilterAlphaImageView extends ImageView
{

    protected int a;
    protected int b;
    private ColorFilter c;
    private ColorFilter d;
    private int e;

    public ColorFilterAlphaImageView(Context context)
    {
        super(context);
        a = 255;
        e = 255;
        b = 255;
    }

    public ColorFilterAlphaImageView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = 255;
        e = 255;
        b = 255;
        a(context, attributeset);
    }

    public ColorFilterAlphaImageView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = 255;
        e = 255;
        b = 255;
        a(context, attributeset);
    }

    private void a(Context context, AttributeSet attributeset)
    {
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, bb.ColorFilterAwareImageView);
        if (typedarray.hasValue(bb.ColorFilterAwareImageView_normal))
        {
            c = com.instagram.common.ui.colorfilter.a.a(typedarray.getColor(bb.ColorFilterAwareImageView_normal, 0));
        }
        if (typedarray.hasValue(bb.ColorFilterAwareImageView_normal_alpha))
        {
            a = typedarray.getInt(bb.ColorFilterAwareImageView_normal_alpha, 255);
        }
        if (typedarray.hasValue(bb.ColorFilterAwareImageView_active))
        {
            d = com.instagram.common.ui.colorfilter.a.a(typedarray.getColor(bb.ColorFilterAwareImageView_active, 0));
        } else
        {
            d = c;
        }
        if (typedarray.hasValue(bb.ColorFilterAwareImageView_active_alpha))
        {
            e = typedarray.getInt(bb.ColorFilterAwareImageView_active_alpha, 255);
        }
        if (typedarray.hasValue(bb.ColorFilterAwareImageView_disabled_alpha))
        {
            b = typedarray.getInt(bb.ColorFilterAwareImageView_disabled_alpha, 255);
        }
        typedarray.recycle();
        b();
    }

    private void b()
    {
        if (getDrawable() == null)
        {
            return;
        }
        Drawable drawable = getDrawable().mutate();
        int i;
        ColorFilter colorfilter;
        if (isEnabled())
        {
            if (a())
            {
                colorfilter = d;
                i = e;
            } else
            {
                colorfilter = c;
                i = a;
            }
        } else
        {
            i = b;
            colorfilter = null;
        }
        drawable.setColorFilter(colorfilter);
        drawable.setAlpha(i);
    }

    protected boolean a()
    {
        return isSelected() || isPressed();
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        b();
    }
}
