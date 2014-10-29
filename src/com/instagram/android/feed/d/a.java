// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.d;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.facebook.ba;
import com.instagram.api.h.d;
import com.instagram.ui.dialog.b;

// Referenced classes of package com.instagram.android.feed.d:
//            c, b

public final class a
{

    private final Context a;
    private Dialog b;

    public a(Context context)
    {
        a = context;
    }

    static Dialog a(a a1)
    {
        a1.b = null;
        return null;
    }

    private void a(Dialog dialog)
    {
        dialog.findViewById(av.button_cancel).setOnClickListener(new c(this, dialog));
        ((TextView)dialog.findViewById(av.dialog_title)).setText(az.sponsored_label_dialog_title);
        WebView webview = (WebView)dialog.findViewById(av.webView);
        webview.setScrollbarFadingEnabled(false);
        webview.getSettings().setJavaScriptEnabled(true);
        webview.getSettings().setUserAgentString(com.instagram.api.useragent.a.a());
        webview.loadUrl(d.a("/xwoiynko", false));
        webview.setWebViewClient(new WebViewClient());
    }

    public final void a()
    {
        b = (new b(a, aw.dialog_sponsored_about, ba.IgDialogActionBar)).a(true).c();
        a(b);
        b.setOnDismissListener(new com.instagram.android.feed.d.b(this));
        b.show();
    }
}
