// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.a.c;

import com.facebook.a.a;
import java.net.HttpURLConnection;
import java.net.URL;

// Referenced classes of package com.facebook.a.c:
//            c

public final class j
    implements c
{

    public j()
    {
    }

    private static HttpURLConnection a(HttpURLConnection httpurlconnection)
    {
        com.facebook.a.a.a();
        httpurlconnection.setConnectTimeout(3000);
        com.facebook.a.a.a();
        httpurlconnection.setReadTimeout(3000);
        return httpurlconnection;
    }

    public final HttpURLConnection a(URL url)
    {
        return a((HttpURLConnection)url.openConnection());
    }
}
