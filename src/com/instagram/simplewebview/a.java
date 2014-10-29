// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.simplewebview;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.k;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;
import com.facebook.az;
import com.instagram.common.y.e;

// Referenced classes of package com.instagram.simplewebview:
//            SimpleWebViewFragment

final class a extends WebViewClient
{

    final String a;
    final SimpleWebViewFragment b;

    a(SimpleWebViewFragment simplewebviewfragment, String s)
    {
        b = simplewebviewfragment;
        a = s;
        super();
    }

    public final void onPageFinished(WebView webview, String s)
    {
        super.onPageFinished(webview, s);
        if ("file:///android_asset/webview_error.html".equals(s))
        {
            Object aobj[] = new Object[1];
            aobj[0] = b.o().getString(az.request_error);
            webview.loadUrl(e.a("javascript:document.getElementById(\"main\").innerHTML=\"<h3>%s</h3>\"", aobj));
        }
    }

    public final void onReceivedError(WebView webview, int i, String s, String s1)
    {
        super.onReceivedError(webview, i, s, s1);
        webview.loadUrl("file:///android_asset/webview_error.html");
    }

    public final boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        Uri uri = Uri.parse(s);
        if (a != null && a.equalsIgnoreCase(uri.getHost()))
        {
            webview.loadUrl(s);
            return true;
        }
        if (uri.getScheme().equals("instagram"))
        {
            if (uri.getHost().equals("checkpoint") && uri.getPath().equals("/dismiss"))
            {
                if (b.l() != null)
                {
                    b.l().finish();
                }
                return true;
            }
            if (uri.getHost().equals("browser") && uri.getPath().equals("/dismiss"))
            {
                SimpleWebViewFragment.DismissalDelegate dismissaldelegate = (SimpleWebViewFragment.DismissalDelegate)b.j().getParcelable("SimpleWebViewFragment.ARGUMENT_DELEGATE");
                if (dismissaldelegate != null)
                {
                    dismissaldelegate.a(b, uri);
                }
                String s2 = uri.getQueryParameter("message");
                if (s2 != null)
                {
                    Toast.makeText(b.n().getApplicationContext(), s2, 0).show();
                }
                if (b.l() != null)
                {
                    b.l().finish();
                }
                return true;
            }
            if (uri.getHost().equals("browser") && uri.getQueryParameter("uri") != null)
            {
                String s1 = uri.getQueryParameter("uri");
                if (b.l() != null)
                {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s1));
                    b.a(intent);
                }
                return true;
            }
        }
        return super.shouldOverrideUrlLoading(webview, s);
    }
}
