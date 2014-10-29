// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.b;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.facebook.au;

// Referenced classes of package com.facebook.b:
//            k, l, e

public final class j extends Dialog
{

    static final float a[] = {
        20F, 60F
    };
    static final float b[] = {
        40F, 60F
    };
    static final android.widget.FrameLayout.LayoutParams c = new android.widget.FrameLayout.LayoutParams(-1, -1);
    private String d;
    private e e;
    private ProgressDialog f;
    private ImageView g;
    private WebView h;
    private FrameLayout i;

    public j(Context context, String s, e e1)
    {
        super(context, 0x1030010);
        d = s;
        e = e1;
    }

    static e a(j j1)
    {
        return j1.e;
    }

    private void a()
    {
        g = new ImageView(getContext());
        g.setOnClickListener(new k(this));
        Drawable drawable = getContext().getResources().getDrawable(au.com_facebook_close);
        g.setImageDrawable(drawable);
        g.setVisibility(4);
    }

    private void a(int i1)
    {
        LinearLayout linearlayout = new LinearLayout(getContext());
        h = new WebView(getContext());
        h.setVerticalScrollBarEnabled(false);
        h.setHorizontalScrollBarEnabled(false);
        h.setWebViewClient(new l(this, (byte)0));
        h.getSettings().setJavaScriptEnabled(true);
        h.loadUrl(d);
        h.setLayoutParams(c);
        h.setVisibility(4);
        h.getSettings().setSavePassword(false);
        linearlayout.setPadding(i1, i1, i1, i1);
        linearlayout.addView(h);
        i.addView(linearlayout);
    }

    static ProgressDialog b(j j1)
    {
        return j1.f;
    }

    static FrameLayout c(j j1)
    {
        return j1.i;
    }

    static WebView d(j j1)
    {
        return j1.h;
    }

    static ImageView e(j j1)
    {
        return j1.g;
    }

    public final void onBackPressed()
    {
        super.onBackPressed();
        e.a();
    }

    protected final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        f = new ProgressDialog(getContext());
        f.requestWindowFeature(1);
        f.setMessage("Loading...");
        requestWindowFeature(1);
        i = new FrameLayout(getContext());
        a();
        a(g.getDrawable().getIntrinsicWidth() / 2);
        i.addView(g, new android.view.ViewGroup.LayoutParams(-2, -2));
        addContentView(i, new android.view.ViewGroup.LayoutParams(-1, -1));
    }

}
