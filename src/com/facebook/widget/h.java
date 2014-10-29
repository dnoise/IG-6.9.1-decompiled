// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.facebook.ab;
import com.facebook.au;
import com.facebook.az;
import com.facebook.g.t;
import com.facebook.z;

// Referenced classes of package com.facebook.widget:
//            n, o, k, i, 
//            j

public final class h extends Dialog
{

    private String a;
    private o b;
    private WebView c;
    private ProgressDialog d;
    private ImageView e;
    private FrameLayout f;
    private boolean g;
    private boolean h;

    public h(Context context, String s, Bundle bundle, int l, o o1)
    {
        super(context, l);
        g = false;
        h = false;
        if (bundle == null)
        {
            bundle = new Bundle();
        }
        bundle.putString("display", "touch");
        bundle.putString("type", "user_agent");
        a = t.a("m.facebook.com", (new StringBuilder("dialog/")).append(s).toString(), bundle).toString();
        b = o1;
    }

    private void a()
    {
        a(((Throwable) (new ab())));
    }

    private void a(int l)
    {
        LinearLayout linearlayout = new LinearLayout(getContext());
        c = new WebView(getContext());
        c.setVerticalScrollBarEnabled(false);
        c.setHorizontalScrollBarEnabled(false);
        c.setWebViewClient(new n(this, (byte)0));
        c.getSettings().setJavaScriptEnabled(true);
        c.loadUrl(a);
        c.setLayoutParams(new android.widget.FrameLayout.LayoutParams(-1, -1));
        c.setVisibility(4);
        c.getSettings().setSavePassword(false);
        linearlayout.setPadding(l, l, l, l);
        linearlayout.addView(c);
        f.addView(linearlayout);
    }

    private void a(Bundle bundle)
    {
        if (b != null && !g)
        {
            g = true;
            b.a(bundle, null);
        }
    }

    static void a(h h1)
    {
        h1.a();
    }

    static void a(h h1, Bundle bundle)
    {
        h1.a(bundle);
    }

    static void a(h h1, Throwable throwable)
    {
        h1.a(throwable);
    }

    private void a(Throwable throwable)
    {
        if (b != null && !g)
        {
            g = true;
            z z1;
            if (throwable instanceof z)
            {
                z1 = (z)throwable;
            } else
            {
                z1 = new z(throwable);
            }
            b.a(null, z1);
        }
    }

    private void b()
    {
        e = new ImageView(getContext());
        e.setOnClickListener(new k(this));
        Drawable drawable = getContext().getResources().getDrawable(au.com_facebook_close);
        e.setImageDrawable(drawable);
        e.setVisibility(4);
    }

    static boolean b(h h1)
    {
        return h1.h;
    }

    static ProgressDialog c(h h1)
    {
        return h1.d;
    }

    static FrameLayout d(h h1)
    {
        return h1.f;
    }

    static WebView e(h h1)
    {
        return h1.c;
    }

    static ImageView f(h h1)
    {
        return h1.e;
    }

    public final void dismiss()
    {
        if (c != null)
        {
            c.stopLoading();
        }
        if (!h)
        {
            if (d.isShowing())
            {
                d.dismiss();
            }
            super.dismiss();
        }
    }

    public final void onAttachedToWindow()
    {
        h = false;
        super.onAttachedToWindow();
    }

    protected final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setOnCancelListener(new i(this));
        d = new ProgressDialog(getContext());
        d.requestWindowFeature(1);
        d.setMessage(getContext().getString(az.com_facebook_loading));
        d.setOnCancelListener(new j(this));
        requestWindowFeature(1);
        f = new FrameLayout(getContext());
        b();
        a(e.getDrawable().getIntrinsicWidth() / 2);
        f.addView(e, new android.view.ViewGroup.LayoutParams(-2, -2));
        addContentView(f, new android.view.ViewGroup.LayoutParams(-1, -1));
    }

    public final void onDetachedFromWindow()
    {
        h = true;
        super.onDetachedFromWindow();
    }
}
