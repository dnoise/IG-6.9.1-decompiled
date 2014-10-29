// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.activity;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;

// Referenced classes of package com.instagram.android.activity:
//            FoursquareAuthActivity

final class k extends WebViewClient
{

    final FoursquareAuthActivity a;

    k(FoursquareAuthActivity foursquareauthactivity)
    {
        a = foursquareauthactivity;
        super();
    }

    public final void onPageStarted(WebView webview, String s, Bitmap bitmap)
    {
        FoursquareAuthActivity _tmp = a;
        if (FoursquareAuthActivity.b(s))
        {
            FoursquareAuthActivity.b(a, FoursquareAuthActivity.a(a, s));
        }
    }
}
