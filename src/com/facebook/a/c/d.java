// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.a.c;

import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.zip.GZIPOutputStream;

// Referenced classes of package com.facebook.a.c:
//            c, a

public final class d
{

    private c a;

    public d(c c1)
    {
        a = c1;
    }

    public final void a(URL url, String s, a a1, String s1)
    {
        HttpURLConnection httpurlconnection;
        httpurlconnection = a.a(url);
        httpurlconnection.setRequestMethod("POST");
        httpurlconnection.setRequestProperty("User-Agent", "Android");
        httpurlconnection.setRequestProperty("Content-Type", s1);
        httpurlconnection.setRequestProperty("Content-Encoding", "gzip");
        httpurlconnection.setDoOutput(true);
        GZIPOutputStream gzipoutputstream = new GZIPOutputStream(httpurlconnection.getOutputStream());
        gzipoutputstream.write(s.getBytes());
        gzipoutputstream.close();
        a1.a(httpurlconnection.getResponseCode());
        httpurlconnection.getInputStream().close();
        httpurlconnection.disconnect();
        return;
        Exception exception;
        exception;
        httpurlconnection.disconnect();
        throw exception;
    }
}
