// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.share.vkontakte;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.e.a.a;
import com.instagram.base.activity.d;

// Referenced classes of package com.instagram.share.vkontakte:
//            a, d, e

public class VkontakteAuthActivity extends d
{

    private final String p = getClass().getSimpleName();

    public VkontakteAuthActivity()
    {
    }

    static String a(VkontakteAuthActivity vkontakteauthactivity, String s)
    {
        return vkontakteauthactivity.e(s);
    }

    public static void b(Fragment fragment)
    {
        fragment.a(new Intent(fragment.l(), com/instagram/share/vkontakte/VkontakteAuthActivity), 5);
    }

    static void b(VkontakteAuthActivity vkontakteauthactivity, String s)
    {
        vkontakteauthactivity.c(s);
    }

    static boolean b(String s)
    {
        return d(s);
    }

    private void c(String s)
    {
        Intent intent = new Intent();
        if (s == null)
        {
            setResult(0, intent);
        } else
        {
            (new com.instagram.share.vkontakte.a(s)).c();
            setResult(-1, intent);
        }
        finish();
    }

    private static boolean d(String s)
    {
        return s.indexOf("access_token=") >= 0;
    }

    private String e(String s)
    {
        if (s == null)
        {
            return null;
        }
        String s1;
        try
        {
            String as[] = s.split("#")[1].split("&");
            int i = 13 + as[0].indexOf("access_token=");
            s1 = as[0].substring(i, as[0].length());
        }
        catch (IndexOutOfBoundsException indexoutofboundsexception)
        {
            com.facebook.e.a.a.a(p, (new StringBuilder("Unable to pull access_token from URL: ")).append(s).toString());
            return null;
        }
        return s1;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(aw.vkontakte_auth);
        WebView webview = (WebView)findViewById(av.webView);
        webview.getSettings().setJavaScriptEnabled(true);
        webview.setWebViewClient(new com.instagram.share.vkontakte.d(this));
        webview.loadUrl((new StringBuilder("https://oauth.vk.com/authorize?client_id=")).append(com.instagram.share.vkontakte.e.a()).append("&scope=wall,photos,offline&redirect_uri=http://api.vkontakte.ru/blank.html&display=wap").append("&response_type=token").toString());
    }
}
