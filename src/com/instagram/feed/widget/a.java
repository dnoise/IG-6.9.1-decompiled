// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.ViewAnimator;
import com.facebook.au;
import com.facebook.az;
import com.facebook.bb;
import com.instagram.common.ui.widget.imageview.IgImageView;
import com.instagram.ui.e.b;
import com.instagram.ui.e.d;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.feed.widget:
//            c, d, f, b, 
//            e

public class a extends ViewAnimator
{

    private final List a;
    private final com.instagram.ui.e.a b;
    private IgImageView c;
    private ProgressBar d;
    private TextView e;
    private String f;

    public a(Context context)
    {
        super(context);
        a = new ArrayList();
        b = com.instagram.ui.e.d.a();
        a(((AttributeSet) (null)));
    }

    public a(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = new ArrayList();
        b = com.instagram.ui.e.d.a();
        a(attributeset);
    }

    static IgImageView a(a a1)
    {
        return a1.getIgImageView();
    }

    private void a(AttributeSet attributeset)
    {
        removeAllViews();
        if (attributeset != null)
        {
            TypedArray typedarray = getContext().obtainStyledAttributes(attributeset, bb.IgProgressImageView);
            f = typedarray.getString(bb.IgProgressImageView_perfTrackingCategory);
            typedarray.recycle();
        }
        addView(getIgImageView(), 0, new android.widget.FrameLayout.LayoutParams(-1, -1, 17));
        addView(getProgressBar(), 1, new android.widget.FrameLayout.LayoutParams(-1, -2, 17));
        addView(getTextView(), 2, new android.widget.FrameLayout.LayoutParams(-1, -2, 17));
    }

    static String b(a a1)
    {
        return a1.f;
    }

    static ProgressBar c(a a1)
    {
        return a1.getProgressBar();
    }

    static com.instagram.ui.e.a d(a a1)
    {
        return a1.b;
    }

    static List e(a a1)
    {
        return a1.a;
    }

    private IgImageView getIgImageView()
    {
        if (c == null)
        {
            c = new IgImageView(getContext());
            c.setScaleType(android.widget.ImageView.ScaleType.FIT_XY);
            c.setProgressListener(new c(this));
            c.setReportProgress(true);
            c.setOnLoadListener(new com.instagram.feed.widget.d(this));
        }
        return c;
    }

    private ProgressBar getProgressBar()
    {
        if (d == null)
        {
            d = new f(getContext());
            d.setIndeterminate(false);
            d.setProgressDrawable(getResources().getDrawable(au.feed_image_determinate_progress));
            d.setMax(100);
        }
        return d;
    }

    private TextView getTextView()
    {
        if (e == null)
        {
            e = new TextView(getContext());
            e.setText(az.tap_to_reload);
            e.setGravity(17);
            e.setOnClickListener(new com.instagram.feed.widget.b(this));
        }
        return e;
    }

    private int getUIContentState$1a5ad91a()
    {
        switch (getDisplayedChild())
        {
        default:
            return b.a;

        case 0: // '\0'
            return b.e;

        case 1: // '\001'
            return b.b;

        case 2: // '\002'
            return b.c;
        }
    }

    public final void a(e e1)
    {
        a.add(e1);
    }

    public final boolean a()
    {
        return getIgImageView().c();
    }

    public final void b()
    {
        a.clear();
    }

    public String getUrl()
    {
        return getIgImageView().getUrl();
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        b.a(this, f);
        b.a(this, getUIContentState$1a5ad91a());
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        b.a(this);
    }

    public void setUrl(String s)
    {
        b.a(this, b.b);
        getIgImageView().setUrl(s);
    }
}
