// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewStub;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.facebook.aq;
import com.facebook.au;
import com.facebook.av;
import com.facebook.aw;

// Referenced classes of package com.instagram.android.widget:
//            o, m, n

public class MediaActionsView extends FrameLayout
{

    private final int a;
    private final int b;
    private final Animation c;
    private final Animation d;
    private final View e;
    private final ViewStub f;
    private View g;
    private ImageView h;
    private View i;
    private View j;
    private int k;
    private android.view.View.OnClickListener l;

    public MediaActionsView(Context context)
    {
        this(context, null);
    }

    public MediaActionsView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public MediaActionsView(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        a = 250;
        b = 250;
        k = o.a;
        LayoutInflater.from(context).inflate(aw.view_media_actions, this);
        f = (ViewStub)findViewById(av.video_states_view_stub);
        i = findViewById(av.caminner);
        h = (ImageView)findViewById(av.video_icon);
        j = findViewById(av.retry);
        e = findViewById(av.doubletap_heart);
        c = AnimationUtils.loadAnimation(getContext(), aq.doubletap_heart);
        c.setAnimationListener(new m(this));
        d = AnimationUtils.loadAnimation(getContext(), aq.video_loading_indicator);
    }

    static View a(MediaActionsView mediaactionsview)
    {
        return mediaactionsview.e;
    }

    private static void a(View view)
    {
        view.clearAnimation();
        AlphaAnimation alphaanimation = new AlphaAnimation(0.0F, 1.0F);
        alphaanimation.setDuration(250L);
        alphaanimation.setInterpolator(new AccelerateDecelerateInterpolator());
        view.setVisibility(0);
        view.startAnimation(alphaanimation);
    }

    private void b(View view)
    {
        view.clearAnimation();
        AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
        alphaanimation.setDuration(250L);
        alphaanimation.setInterpolator(new AccelerateDecelerateInterpolator());
        alphaanimation.setAnimationListener(new n(this, view));
        view.startAnimation(alphaanimation);
    }

    private void c()
    {
        if (g == null)
        {
            g = f.inflate();
            i = g.findViewById(av.caminner);
            h = (ImageView)g.findViewById(av.video_icon);
            j = g.findViewById(av.retry);
        }
    }

    private void setVideoIndicatorVisibility$736bb5a1(int i1)
    {
        boolean flag;
        View view;
        int j1;
        View view1;
        int k1;
        if (i1 == o.c || i1 == o.b)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        view = j;
        if (i1 == o.g)
        {
            j1 = 0;
        } else
        {
            j1 = 8;
        }
        view.setVisibility(j1);
        view1 = i;
        if (flag)
        {
            k1 = 0;
        } else
        {
            k1 = 8;
        }
        view1.setVisibility(k1);
        if (i1 == o.f)
        {
            h.setVisibility(0);
            h.setImageResource(au.feed_sound);
            h.setOnClickListener(l);
            h.setClickable(true);
            h.setFocusable(true);
        } else
        if (i1 == o.d)
        {
            h.setVisibility(0);
            h.setImageResource(au.feed_play);
            h.setOnClickListener(null);
            h.setClickable(false);
            h.setFocusable(false);
        } else
        if (i1 == o.e)
        {
            h.setVisibility(0);
            h.setImageResource(au.feed_pause);
            h.setOnClickListener(null);
            h.setClickable(false);
            h.setFocusable(false);
        } else
        if (flag)
        {
            h.setVisibility(0);
            h.setImageResource(au.feed_camera);
            h.setOnClickListener(null);
            h.setClickable(false);
            h.setFocusable(false);
        } else
        {
            h.setVisibility(8);
        }
        if (i1 == o.c)
        {
            d.reset();
            i.startAnimation(d);
            return;
        } else
        {
            i.clearAnimation();
            return;
        }
    }

    public final void a()
    {
        c.reset();
        e.clearAnimation();
        e.setVisibility(0);
        e.startAnimation(c);
    }

    public final void a(int i1)
    {
        if (k == i1)
        {
            return;
        }
        c();
        if (i1 == o.a)
        {
            b(g);
        } else
        if (k == o.a)
        {
            setVideoIndicatorVisibility$736bb5a1(i1);
            a(g);
        } else
        {
            setVideoIconState$736bb5a1(i1);
        }
        k = i1;
    }

    public final void b()
    {
        e.clearAnimation();
        e.setVisibility(4);
    }

    protected void onMeasure(int i1, int j1)
    {
        int k1 = android.view.View.MeasureSpec.makeMeasureSpec(android.view.View.MeasureSpec.getSize(i1), 0x40000000);
        super.onMeasure(k1, k1);
    }

    public void setAudioToggleOnClickListener(android.view.View.OnClickListener onclicklistener)
    {
        l = onclicklistener;
        if (k == o.f)
        {
            h.setOnClickListener(l);
        }
    }

    public void setVideoIconState$736bb5a1(int i1)
    {
        if (k == i1)
        {
            return;
        }
        c();
        g.clearAnimation();
        View view = g;
        byte byte0;
        if (i1 == o.a)
        {
            byte0 = 8;
        } else
        {
            byte0 = 0;
        }
        view.setVisibility(byte0);
        setVideoIndicatorVisibility$736bb5a1(i1);
        k = i1;
    }
}
