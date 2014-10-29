// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.widget.webview;

import android.content.Context;
import android.util.AttributeSet;
import android.webkit.WebView;
import com.instagram.service.persistentcookiestore.PersistentCookieStore;

public class IgWebView extends WebView
{

    public IgWebView(Context context)
    {
        super(context);
        a();
    }

    public IgWebView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a();
    }

    public IgWebView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a();
    }

    private static void a()
    {
        PersistentCookieStore.c();
    }
}
