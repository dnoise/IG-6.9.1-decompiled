// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.widget;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import com.facebook.av;
import com.facebook.aw;
import com.instagram.common.ui.widget.squareframelayout.SquareFrameLayout;

// Referenced classes of package com.instagram.creation.video.widget:
//            a, b

public class IgScrubberProgressIndicator extends SquareFrameLayout
{

    private AnimatorSet a;
    private boolean b;
    private boolean c;
    private final Runnable d;

    public IgScrubberProgressIndicator(Context context)
    {
        this(context, null);
    }

    public IgScrubberProgressIndicator(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public IgScrubberProgressIndicator(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        b = false;
        c = false;
        d = new a(this);
        LayoutInflater.from(context).inflate(aw.view_ig_scrubber_progress_indicator, this);
        b();
    }

    private void a()
    {
        b = true;
        if (!a.isStarted())
        {
            a.start();
        }
    }

    static boolean a(IgScrubberProgressIndicator igscrubberprogressindicator)
    {
        return igscrubberprogressindicator.b;
    }

    static AnimatorSet b(IgScrubberProgressIndicator igscrubberprogressindicator)
    {
        return igscrubberprogressindicator.a;
    }

    private void b()
    {
        View view = findViewById(av.dot1);
        View view1 = findViewById(av.dot2);
        View view2 = findViewById(av.dot3);
        ObjectAnimator objectanimator = ObjectAnimator.ofFloat(view, "scaleX", new float[] {
            1.0F, 1.33F
        });
        objectanimator.setDuration(250L);
        objectanimator.setInterpolator(new AccelerateInterpolator());
        ObjectAnimator objectanimator1 = objectanimator.clone();
        objectanimator1.setPropertyName("scaleY");
        ObjectAnimator objectanimator2 = ObjectAnimator.ofFloat(view, "scaleX", new float[] {
            1.33F, 1.0F
        });
        objectanimator2.setDuration(250L);
        objectanimator2.setInterpolator(new DecelerateInterpolator());
        ObjectAnimator objectanimator3 = objectanimator2.clone();
        objectanimator3.setPropertyName("scaleY");
        ObjectAnimator objectanimator4 = objectanimator.clone();
        ObjectAnimator objectanimator5 = objectanimator1.clone();
        ObjectAnimator objectanimator6 = objectanimator2.clone();
        ObjectAnimator objectanimator7 = objectanimator3.clone();
        objectanimator4.setTarget(view1);
        objectanimator5.setTarget(view1);
        objectanimator6.setTarget(view1);
        objectanimator7.setTarget(view1);
        ObjectAnimator objectanimator8 = objectanimator.clone();
        ObjectAnimator objectanimator9 = objectanimator1.clone();
        ObjectAnimator objectanimator10 = objectanimator2.clone();
        ObjectAnimator objectanimator11 = objectanimator3.clone();
        objectanimator8.setTarget(view2);
        objectanimator9.setTarget(view2);
        objectanimator10.setTarget(view2);
        objectanimator11.setTarget(view2);
        a = new AnimatorSet();
        a.play(objectanimator).with(objectanimator1);
        a.play(objectanimator4).with(objectanimator5).with(objectanimator2).with(objectanimator3).after(objectanimator);
        a.play(objectanimator8).with(objectanimator9).with(objectanimator6).with(objectanimator7).after(objectanimator4);
        a.play(objectanimator10).with(objectanimator11).after(objectanimator8);
        a.addListener(new b(this));
    }

    static Runnable c(IgScrubberProgressIndicator igscrubberprogressindicator)
    {
        return igscrubberprogressindicator.d;
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        c = true;
        if (getVisibility() == 0)
        {
            a();
        }
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        c = false;
        b = false;
    }

    protected void onVisibilityChanged(View view, int i)
    {
label0:
        {
            super.onVisibilityChanged(view, i);
            if (c)
            {
                if (i != 0)
                {
                    break label0;
                }
                a();
            }
            return;
        }
        b = false;
    }
}
