// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.facebook.ac;
import com.facebook.af;
import com.facebook.b.m;
import com.facebook.g.t;
import com.facebook.y;

// Referenced classes of package com.facebook.widget:
//            h

final class n extends WebViewClient
{

    final h a;

    private n(h h1)
    {
        a = h1;
        super();
    }

    n(h h1, byte byte0)
    {
        this(h1);
    }

    public final void onPageFinished(WebView webview, String s)
    {
        super.onPageFinished(webview, s);
        if (!h.b(a))
        {
            h.c(a).dismiss();
        }
        h.d(a).setBackgroundColor(0);
        h.e(a).setVisibility(0);
        h.f(a).setVisibility(0);
    }

    public final void onPageStarted(WebView webview, String s, Bitmap bitmap)
    {
        (new StringBuilder("Webview loading URL: ")).append(s);
        t.a();
        super.onPageStarted(webview, s, bitmap);
        if (!h.b(a))
        {
            h.c(a).show();
        }
    }

    public final void onReceivedError(WebView webview, int i, String s, String s1)
    {
        super.onReceivedError(webview, i, s, s1);
        h.a(a, new y(s, i, s1));
        a.dismiss();
    }

    public final void onReceivedSslError(WebView webview, SslErrorHandler sslerrorhandler, SslError sslerror)
    {
        super.onReceivedSslError(webview, sslerrorhandler, sslerror);
        h.a(a, new y(null, -11, null));
        sslerrorhandler.cancel();
        a.dismiss();
    }

    public final boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        (new StringBuilder("Redirect URL: ")).append(s);
        t.a();
        if (!s.startsWith("fbconnect://success")) goto _L2; else goto _L1
_L1:
        Bundle bundle;
        String s1;
        String s2;
        String s3;
        bundle = m.a(s);
        s1 = bundle.getString("error");
        if (s1 == null)
        {
            s1 = bundle.getString("error_type");
        }
        s2 = bundle.getString("error_msg");
        if (s2 == null)
        {
            s2 = bundle.getString("error_description");
        }
        s3 = bundle.getString("error_code");
        if (t.a(s3)) goto _L4; else goto _L3
_L3:
        int i;
        int j;
        try
        {
            j = Integer.parseInt(s3);
        }
        catch (NumberFormatException numberformatexception)
        {
            i = -1;
            continue; /* Loop/switch isn't completed */
        }
        i = j;
_L6:
        if (t.a(s1) && t.a(s2) && i == -1)
        {
            h.a(a, bundle);
        } else
        if (s1 != null && (s1.equals("access_denied") || s1.equals("OAuthAccessDeniedException")))
        {
            h.a(a);
        } else
        {
            ac ac1 = new ac(i, s1, s2);
            h.a(a, new af(ac1, s2));
        }
        a.dismiss();
        return true;
_L2:
        if (s.startsWith("fbconnect://cancel"))
        {
            h.a(a);
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
_L4:
        i = -1;
        if (true) goto _L6; else goto _L5
_L5:
    }
}
