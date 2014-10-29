// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.simplewebview;

import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.instagram.a.c;
import com.instagram.api.useragent.a;
import com.instagram.base.a.b;
import com.instagram.ui.widget.webview.IgWebView;

// Referenced classes of package com.instagram.simplewebview:
//            a, b

public final class SimpleWebViewFragment extends b
    implements c
{

    private WebView a;

    public SimpleWebViewFragment()
    {
    }

    private boolean c()
    {
        return j().getBoolean("SimpleWebViewFragment.ARGUMENT_SHOW_REFRESH");
    }

    public final void H()
    {
        if (a != null)
        {
            a.destroy();
            a = null;
        }
        super.H();
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        return a;
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        String s = j().getString("SimpleWebViewFragment.ARGUMENT_URL");
        boolean flag = j().getBoolean("SimpleWebViewFragment.ARGUMENT_LOAD_SAME_HOST");
        String s1 = null;
        if (flag)
        {
            s1 = Uri.parse(s).getHost();
        }
        a = new IgWebView(l());
        a.setScrollBarStyle(0);
        WebSettings websettings = a.getSettings();
        websettings.setJavaScriptEnabled(true);
        if (com.instagram.api.h.b.a(s))
        {
            websettings.setUserAgentString(com.instagram.api.useragent.a.a());
        }
        a.setWebViewClient(new com.instagram.simplewebview.a(this, s1));
        a.loadUrl(s);
    }

    public final void a(com.instagram.a.b b1)
    {
        b1.a(j().getString("SimpleWebViewFragment.ARGUMENT_TITLE"));
        b1.a(c(), new com.instagram.simplewebview.b(this));
        b1.a(j().getBoolean("SimpleWebViewFragment.ARGUMENT_TOGGLE_DISPLAY_BACK_BUTTON", true));
    }

    public final void b()
    {
        if (a != null)
        {
            a.reload();
        }
    }

    public final String j_()
    {
        return "web_view";
    }
}
