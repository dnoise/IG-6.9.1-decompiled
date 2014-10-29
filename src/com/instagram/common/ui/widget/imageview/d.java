// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.ui.widget.imageview;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;

// Referenced classes of package com.instagram.common.ui.widget.imageview:
//            c

final class d extends android.graphics.drawable.Drawable.ConstantState
{

    int a;
    int b;
    int c;

    d(d d1)
    {
        if (d1 != null)
        {
            a = d1.a;
            b = d1.b;
        }
    }

    public final int getChangingConfigurations()
    {
        return c;
    }

    public final Drawable newDrawable()
    {
        return new c(this, (byte)0);
    }

    public final Drawable newDrawable(Resources resources)
    {
        return new c(this, (byte)0);
    }
}
