// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.a.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.webkit.WebView;
import com.facebook.aw;
import com.instagram.j.d.c;

// Referenced classes of package com.instagram.j.a.a:
//            u

public final class t
{

    public static View a(Context context)
    {
        View view = LayoutInflater.from(context).inflate(aw.row_newsfeed_story_webview, null);
        u u1 = new u();
        u1.a = (WebView)view;
        view.setTag(u1);
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            view.setLayerType(1, null);
        }
        return view;
    }

    public static void a(u u1, c c1)
    {
        u1.a.loadDataWithBaseURL("http://instagram.com", c1.b(), "text/html", "UTF-8", null);
    }
}
