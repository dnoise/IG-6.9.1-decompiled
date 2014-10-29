// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.widget.bannertoast;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.DecelerateInterpolator;
import android.widget.TextView;
import com.instagram.ui.a.a;

public class BannerToast extends TextView
{

    private AnimationSet a;
    private boolean b;

    public BannerToast(Context context)
    {
        this(context, null, 0);
    }

    public BannerToast(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public BannerToast(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    private void b()
    {
        if (!b)
        {
            c();
            b = true;
        }
    }

    private void c()
    {
        a a1 = new a(0.0F, -getHeight(), 0.0F);
        a1.setDuration(200L);
        a1.setFillAfter(true);
        a1.setInterpolator(new DecelerateInterpolator(1.2F));
        a a2 = new a(0.0F, 0.0F, -getHeight());
        a2.setDuration(200L);
        a2.setFillBefore(true);
        a2.setStartOffset(1700L);
        a2.setInterpolator(new AccelerateInterpolator(1.2F));
        a = new AnimationSet(getContext(), null);
        a.addAnimation(a1);
        a.addAnimation(a2);
    }

    public final void a()
    {
        b();
        a.reset();
        startAnimation(a);
    }
}
