// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import com.facebook.aq;
import com.instagram.common.y.f;
import com.instagram.creation.video.a;
import com.instagram.creation.video.a.d;
import com.instagram.creation.video.a.e;
import com.instagram.creation.video.c;

public class CamcorderBlinker extends ImageView
    implements d, c
{

    private a a;
    private Animation b;
    private int c;

    public CamcorderBlinker(Context context)
    {
        super(context);
        c = com.instagram.common.y.f.a(getContext());
        d();
    }

    public CamcorderBlinker(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        c = com.instagram.common.y.f.a(getContext());
        d();
    }

    public CamcorderBlinker(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        c = com.instagram.common.y.f.a(getContext());
        d();
    }

    private void d()
    {
        b = AnimationUtils.loadAnimation(getContext(), aq.camcorder_blinker);
    }

    private void e()
    {
        if (a == null)
        {
            return;
        } else
        {
            int i = getDrawable().getIntrinsicWidth();
            double d1 = ((double)a.c() / 15000D) * (double)c - (double)i - (double)com.instagram.common.y.f.a(getResources().getDisplayMetrics(), 1);
            android.view.ViewGroup.MarginLayoutParams marginlayoutparams = (android.view.ViewGroup.MarginLayoutParams)getLayoutParams();
            marginlayoutparams.setMargins((int)Math.max(d1, (float)(-i) / 2.0F), 0, 0, 0);
            setLayoutParams(marginlayoutparams);
            return;
        }
    }

    private void f()
    {
        startAnimation(b);
        setVisibility(0);
    }

    public final void a()
    {
        if (a.n())
        {
            b();
            return;
        } else
        {
            f();
            e();
            return;
        }
    }

    public final void a(int i)
    {
        if (i == com.instagram.creation.video.i.c.c)
        {
            b();
            return;
        } else
        {
            f();
            return;
        }
    }

    public final void a(com.instagram.creation.video.i.a a1)
    {
    }

    public final void b()
    {
        clearAnimation();
        setVisibility(8);
    }

    public final void b(int i)
    {
        if (i == e.b)
        {
            clearAnimation();
        } else
        if (!a.m())
        {
            startAnimation(b);
            return;
        }
    }

    public final void b(com.instagram.creation.video.i.a a1)
    {
        f();
        e();
    }

    public final void c()
    {
        b();
    }

    public final void c(com.instagram.creation.video.i.a a1)
    {
        e();
    }

    public void setClipStackManager(a a1)
    {
        a = a1;
        e();
    }
}
