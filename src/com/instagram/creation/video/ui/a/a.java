// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.ui.a;

import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import com.instagram.creation.video.d.b;

public final class a
    implements b
{

    private View a;
    private View b;
    private Animation c;
    private Animation d;

    public a()
    {
    }

    public final a a(View view)
    {
        a = view;
        c = new AlphaAnimation(0.0F, 1.0F);
        c.setDuration(250L);
        c.setFillAfter(true);
        d = new AlphaAnimation(1.0F, 0.0F);
        d.setDuration(250L);
        d.setFillAfter(true);
        return this;
    }

    public final void a()
    {
        if (a != null && a.getVisibility() == 0)
        {
            a.clearAnimation();
            a.startAnimation(d);
        }
    }

    public final a b(View view)
    {
        b = view;
        return this;
    }

    public final void b()
    {
        if (a != null && a.getVisibility() == 0)
        {
            a.clearAnimation();
            a.startAnimation(c);
        }
    }

    public final void c()
    {
        if (a != null)
        {
            a.clearAnimation();
            a.setVisibility(0);
        }
    }

    public final void d()
    {
        if (a != null)
        {
            a.clearAnimation();
            a.setVisibility(4);
        }
    }

    public final void e()
    {
        if (b != null)
        {
            b.setVisibility(0);
        }
    }

    public final void f()
    {
        if (b != null)
        {
            b.setVisibility(4);
        }
    }
}
