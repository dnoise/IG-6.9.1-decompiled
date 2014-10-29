// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.ui.widget.spinner;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import com.facebook.aq;

public class SpinnerImageView extends ImageView
{

    private Animation a;

    public SpinnerImageView(Context context)
    {
        super(context);
        a();
    }

    public SpinnerImageView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a();
    }

    public SpinnerImageView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a();
    }

    private void a()
    {
        setScaleType(android.widget.ImageView.ScaleType.CENTER);
        a = AnimationUtils.loadAnimation(getContext(), aq.rotate_spinner);
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        if (getVisibility() == 0)
        {
            startAnimation(a);
        }
    }

    protected void onDetachedFromWindow()
    {
        clearAnimation();
        super.onDetachedFromWindow();
    }

    protected void onVisibilityChanged(View view, int i)
    {
label0:
        {
            super.onVisibilityChanged(view, i);
            if (view == this && getWindowToken() != null)
            {
                if (i != 0)
                {
                    break label0;
                }
                if (getAnimation() == null)
                {
                    startAnimation(a);
                }
            }
            return;
        }
        clearAnimation();
    }
}
