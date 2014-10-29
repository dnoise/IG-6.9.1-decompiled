// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.m;

import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.client.HttpClient;
import ch.boye.httpclientandroidlib.client.methods.HttpGet;
import ch.boye.httpclientandroidlib.util.EntityUtils;
import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package com.instagram.common.m:
//            b

public final class a
    implements Runnable
{

    private final HttpClient a;
    private final String b;
    private final b c;

    public a(HttpClient httpclient, String s, b b1)
    {
        a = httpclient;
        b = s;
        c = b1;
        if (c == null)
        {
            throw new IllegalArgumentException("Listener must not be null.");
        } else
        {
            return;
        }
    }

    private void a(HttpEntity httpentity)
    {
        InputStream inputstream = httpentity.getContent();
        Exception exception;
        if (inputstream == null)
        {
            try
            {
                EntityUtils.consume(httpentity);
                return;
            }
            catch (IOException ioexception2)
            {
                return;
            }
        }
        if (httpentity.getContentLength() > 0x7fffffffL)
        {
            throw new IllegalArgumentException("HTTP entity too large to be buffered in memory");
        }
        break MISSING_BLOCK_LABEL_48;
        exception;
        byte abyte0[];
        int i;
        IOException ioexception1;
        try
        {
            EntityUtils.consume(httpentity);
        }
        catch (IOException ioexception) { }
        throw exception;
        abyte0 = new byte[4096];
_L1:
        i = inputstream.read(abyte0);
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_86;
        }
        c.a(abyte0, i);
          goto _L1
        try
        {
            EntityUtils.consume(httpentity);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception1)
        {
            return;
        }
    }

    public final void run()
    {
        HttpResponse httpresponse;
        HttpGet httpget = new HttpGet(b);
        c.a(httpget);
        httpresponse = a.execute(httpget);
        if (httpresponse == null)
        {
            b b1;
            ch.boye.httpclientandroidlib.StatusLine statusline;
            try
            {
                c.b();
                return;
            }
            catch (IOException ioexception)
            {
                com.facebook.e.a.a.a("ListenableHttpDownloader", ioexception.toString());
            }
            break MISSING_BLOCK_LABEL_119;
        }
        b1 = c;
        statusline = httpresponse.getStatusLine();
        httpresponse.getAllHeaders();
        httpresponse.getEntity().getContentLength();
        b1.a(statusline);
        a(httpresponse.getEntity());
        c.a();
        return;
        c.b();
        return;
    }
}
