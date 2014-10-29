// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.follow;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageButton;
import com.facebook.as;
import com.facebook.au;
import com.instagram.common.ui.colorfilter.a;
import com.instagram.user.c.c;

// Referenced classes of package com.instagram.user.follow:
//            i

public class ChainingButton extends ImageButton
{

    public ChainingButton(Context context)
    {
        this(context, null, 0);
    }

    public ChainingButton(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public ChainingButton(Context context, AttributeSet attributeset, int j)
    {
        super(context, attributeset, j);
    }

    public final void a(c c, boolean flag)
    {
        int j = i.b(c);
        int k = com.instagram.user.follow.i.a(c);
        if (flag)
        {
            k = au.rounded_layout_border_fill;
            if (j != as.accent_blue_medium)
            {
                j = com.instagram.user.follow.i.a(j);
            }
        }
        setBackgroundResource(k);
        android.graphics.ColorFilter colorfilter = com.instagram.common.ui.colorfilter.a.a(getResources().getColor(j));
        getBackground().mutate().setColorFilter(colorfilter);
        if (k == au.rounded_layout_border_fill)
        {
            int l = as.white;
            colorfilter = com.instagram.common.ui.colorfilter.a.a(getResources().getColor(l));
        }
        if (getDrawable() != null)
        {
            getDrawable().mutate().setColorFilter(colorfilter);
        }
    }
}
