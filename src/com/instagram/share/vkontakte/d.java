// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.share.vkontakte;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;

// Referenced classes of package com.instagram.share.vkontakte:
//            VkontakteAuthActivity

final class d extends WebViewClient
{

    final VkontakteAuthActivity a;

    d(VkontakteAuthActivity vkontakteauthactivity)
    {
        a = vkontakteauthactivity;
        super();
    }

    public final void onPageStarted(WebView webview, String s, Bitmap bitmap)
    {
        VkontakteAuthActivity _tmp = a;
        if (VkontakteAuthActivity.b(s))
        {
            VkontakteAuthActivity.b(a, VkontakteAuthActivity.a(a, s));
        }
    }
}
