// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.widget.loadmore;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.ViewAnimator;
import com.facebook.au;
import com.facebook.aw;
import com.instagram.common.ui.widget.spinner.SpinnerImageView;

// Referenced classes of package com.instagram.ui.widget.loadmore:
//            a, c, b

public class LoadMoreButton extends ViewAnimator
{

    c a;

    public LoadMoreButton(Context context)
    {
        super(context);
    }

    public LoadMoreButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    private View a()
    {
        SpinnerImageView spinnerimageview = new SpinnerImageView(getContext());
        spinnerimageview.setBackgroundResource(au.spinner_large);
        return spinnerimageview;
    }

    private View b()
    {
        ImageView imageview = new ImageView(getContext());
        imageview.setImageDrawable(getResources().getDrawable(au.loadmore_add_compound));
        imageview.setOnClickListener(new a(this));
        return imageview;
    }

    private static boolean b(c c1)
    {
        return c1.i() || c1.d() && (c1.e() || c1.o_() || c1.g() || !c1.f());
    }

    private View c()
    {
        ImageView imageview = new ImageView(getContext());
        imageview.setImageDrawable(getResources().getDrawable(au.loadmore_icon_refresh_compound));
        imageview.setOnClickListener(new b(this));
        return imageview;
    }

    private void c(c c1)
    {
        android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(-2, -2, 17);
        addView(e(c1), layoutparams);
        addView(a(), layoutparams);
        addView(b(), layoutparams);
        addView(c(), layoutparams);
    }

    private void d(c c1)
    {
        if (!b(c1))
        {
            setVisibility(8);
        } else
        {
            setVisibility(0);
            if (c1.i())
            {
                if (findViewById(4) != null)
                {
                    removeViewAt(4);
                }
                addView(c1.h(), 4);
                setDisplayedChild(4);
                return;
            }
            if (c1.e())
            {
                setDisplayedChild(1);
                return;
            }
            if (c1.o_())
            {
                setDisplayedChild(3);
                return;
            }
            if (!c1.f())
            {
                setDisplayedChild(0);
                return;
            }
            if (c1.g())
            {
                setDisplayedChild(2);
                return;
            }
        }
    }

    private View e(c c1)
    {
        View view = c1.a(this);
        if (view != null)
        {
            return view;
        } else
        {
            return LayoutInflater.from(getContext()).inflate(aw.load_more_empty, null);
        }
    }

    public final void a(c c1)
    {
        a = c1;
        if (getChildCount() == 0)
        {
            c(c1);
        }
        d(c1);
    }
}
