// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.b;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;

// Referenced classes of package com.facebook.b:
//            j, m, a, e, 
//            i

final class l extends WebViewClient
{

    final j a;

    private l(j j1)
    {
        a = j1;
        super();
    }

    l(j j1, byte byte0)
    {
        this(j1);
    }

    public final void onPageFinished(WebView webview, String s)
    {
        super.onPageFinished(webview, s);
        j.b(a).dismiss();
        j.c(a).setBackgroundColor(0);
        j.d(a).setVisibility(0);
        j.e(a).setVisibility(0);
    }

    public final void onPageStarted(WebView webview, String s, Bitmap bitmap)
    {
        (new StringBuilder("Webview loading URL: ")).append(s);
        m.a();
        super.onPageStarted(webview, s, bitmap);
        j.b(a).show();
    }

    public final void onReceivedError(WebView webview, int k, String s, String s1)
    {
        super.onReceivedError(webview, k, s, s1);
        j.a(a).a(new a(s, k, s1));
        a.dismiss();
    }

    public final boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        (new StringBuilder("Redirect URL: ")).append(s);
        m.a();
        if (s.startsWith("fbconnect://success"))
        {
            Bundle bundle = m.a(s);
            String s1 = bundle.getString("error");
            if (s1 == null)
            {
                s1 = bundle.getString("error_type");
            }
            if (s1 == null)
            {
                j.a(a).a(bundle);
            } else
            if (s1.equals("access_denied") || s1.equals("OAuthAccessDeniedException"))
            {
                j.a(a).a();
            } else
            {
                j.a(a).a(new i(s1));
            }
            a.dismiss();
            return true;
        }
        if (s.startsWith("fbconnect://cancel"))
        {
            j.a(a).a();
            a.dismiss();
            return true;
        }
        if (s.contains("touch"))
        {
            return false;
        } else
        {
            a.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(s)));
            return true;
        }
    }
}
