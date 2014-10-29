// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.ui.a;

import android.view.View;
import android.view.animation.AlphaAnimation;

public final class a
{

    private AlphaAnimation a;
    private AlphaAnimation b;

    public a()
    {
    }

    private AlphaAnimation a()
    {
        if (b == null)
        {
            b = a(1.0F);
        }
        return b;
    }

    private static AlphaAnimation a(float f)
    {
        AlphaAnimation alphaanimation = new AlphaAnimation(f, f);
        alphaanimation.setDuration(0L);
        alphaanimation.setFillAfter(true);
        return alphaanimation;
    }

    private AlphaAnimation b()
    {
        if (a == null)
        {
            a = a(0.0F);
        }
        return a;
    }

    private static void b(View view, float f)
    {
        view.setAlpha(f);
    }

    public final void a(View view)
    {
        a(view, 1.0F);
    }

    public final void a(View view, float f)
    {
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            b(view, f);
            return;
        }
        AlphaAnimation alphaanimation;
        if (f == 0.0F)
        {
            alphaanimation = b();
        } else
        if (f == 1.0F)
        {
            alphaanimation = a();
        } else
        {
            alphaanimation = a(f);
        }
        view.startAnimation(alphaanimation);
    }

    public final void b(View view)
    {
        a(view, 0.0F);
    }
}
