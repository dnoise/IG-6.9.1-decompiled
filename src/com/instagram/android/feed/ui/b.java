// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.ui;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;

// Referenced classes of package com.instagram.android.feed.ui:
//            a

final class b extends android.graphics.drawable.Drawable.ConstantState
{

    Drawable a;
    int b;
    private boolean c;
    private boolean d;

    b(b b1, a a1, Resources resources)
    {
        if (b1 != null)
        {
            if (resources != null)
            {
                a = b1.a.getConstantState().newDrawable(resources);
            } else
            {
                a = b1.a.getConstantState().newDrawable();
            }
            a.setCallback(a1);
            d = true;
            c = true;
        }
    }

    final boolean a()
    {
        if (!c)
        {
            boolean flag;
            if (a.getConstantState() != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            d = flag;
            c = true;
        }
        return d;
    }

    public final int getChangingConfigurations()
    {
        return b;
    }

    public final Drawable newDrawable()
    {
        return new a(this, null, (byte)0);
    }

    public final Drawable newDrawable(Resources resources)
    {
        return new a(this, resources, (byte)0);
    }
}
