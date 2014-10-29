// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.a.b;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.client.HttpClient;
import ch.boye.httpclientandroidlib.client.methods.HttpDelete;
import ch.boye.httpclientandroidlib.client.methods.HttpGet;
import ch.boye.httpclientandroidlib.client.methods.HttpPost;
import ch.boye.httpclientandroidlib.client.methods.HttpUriRequest;
import com.instagram.common.a.c.b;
import com.instagram.common.a.f.e;
import com.instagram.common.a.f.j;
import com.instagram.common.i.c;
import java.io.IOException;
import java.net.URI;
import java.net.UnknownHostException;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.common.a.b:
//            c, d, b

public class a
{

    private static final Class a = com/instagram/common/a/b/a;
    private static a b;
    private static com.instagram.common.a.b.c c;
    private final HttpClient d;

    public a()
    {
        d = c.a();
    }

    private HttpResponse a(HttpUriRequest httpurirequest)
    {
        HttpResponse httpresponse;
        try
        {
            httpresponse = d.execute(httpurirequest);
        }
        catch (IOException ioexception)
        {
            if (!(ioexception instanceof UnknownHostException))
            {
                com.instagram.common.i.c.b("network_request", httpurirequest.getURI().getPath(), ioexception);
            }
            httpurirequest.abort();
            com.facebook.e.a.a.a(a, "Send request failed", ioexception);
            return null;
        }
        return httpresponse;
    }

    public static a a()
    {
        if (b == null)
        {
            c();
        }
        return b;
    }

    private static void a(HttpUriRequest httpurirequest, List list)
    {
        if (list != null)
        {
            for (Iterator iterator = list.iterator(); iterator.hasNext(); httpurirequest.addHeader((Header)iterator.next())) { }
        }
    }

    public static void a(com.instagram.common.a.b.c c1)
    {
        c = c1;
    }

    private static HttpUriRequest b(com.instagram.common.a.d.a a1, j j)
    {
        HttpPost httppost = new HttpPost(a1.g_());
        b b1 = a1.a();
        if (b1 != null)
        {
            ch.boye.httpclientandroidlib.HttpEntity httpentity = b1.d();
            if ((httpentity instanceof e) && j != null)
            {
                ((e)httpentity).a(j);
            } else
            if (j != null)
            {
                throw new UnsupportedOperationException("Can only listen to multi-part uploads");
            }
            httppost.setEntity(httpentity);
        }
        a(httppost, a1.l());
        return httppost;
    }

    private static String b(com.instagram.common.a.d.a a1)
    {
        String s = a1.g_();
        b b1 = a1.a();
        if (b1 != null && b1.a() != 0)
        {
            String s1 = b1.e();
            s = (new StringBuilder()).append(s).append("?").append(s1).toString();
        }
        return s;
    }

    public static void b()
    {
        b = null;
    }

    private static HttpUriRequest c(com.instagram.common.a.d.a a1)
    {
        List list = a1.l();
        HttpGet httpget = new HttpGet(b(a1));
        a(httpget, list);
        return httpget;
    }

    private static void c()
    {
        com/instagram/common/a/b/a;
        JVM INSTR monitorenter ;
        a a1 = b;
        if (a1 == null) goto _L2; else goto _L1
_L1:
        com/instagram/common/a/b/a;
        JVM INSTR monitorexit ;
        return;
_L2:
        a;
        b = new a();
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    private static HttpUriRequest d(com.instagram.common.a.d.a a1)
    {
        List list = a1.l();
        HttpDelete httpdelete = new HttpDelete(b(a1));
        a(httpdelete, list);
        return httpdelete;
    }

    private static HttpUriRequest e(com.instagram.common.a.d.a a1)
    {
        d d1 = new d(a1.g_());
        b b1 = a1.a();
        if (b1 != null)
        {
            d1.setEntity(b1.d());
        }
        a(d1, a1.l());
        return d1;
    }

    public final HttpResponse a(com.instagram.common.a.d.a a1)
    {
        return a(a1, ((j) (null)));
    }

    public final HttpResponse a(com.instagram.common.a.d.a a1, j j)
    {
        switch (b.a[-1 + a1.c()])
        {
        default:
            throw new UnsupportedOperationException();

        case 1: // '\001'
            return a(c(a1));

        case 2: // '\002'
            return a(b(a1, j));

        case 3: // '\003'
            return a(d(a1));

        case 4: // '\004'
            return a(e(a1));
        }
    }

}
