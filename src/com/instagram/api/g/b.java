// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.g;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HttpMessage;
import ch.boye.httpclientandroidlib.client.methods.HttpGet;
import ch.boye.httpclientandroidlib.params.HttpParams;
import com.instagram.common.y.e;
import java.net.URI;

// Referenced classes of package com.instagram.api.g:
//            c, a, i

public final class b
{

    private static final String a[] = {
        "igcdn.com", "cdninstagram.com"
    };

    private static c a(URI uri)
    {
        String s = uri.getHost();
        if (!e.c(s))
        {
            if (s.endsWith("ak.instagram.com"))
            {
                return c.a;
            }
            if (s.endsWith(a[0]) || s.endsWith(a[1]))
            {
                return c.b;
            }
        }
        return null;
    }

    public static void a(HttpMessage httpmessage, a a1)
    {
        if (httpmessage.containsHeader("X-Backend"))
        {
            a1.d(httpmessage.getFirstHeader("X-Backend").getValue());
        }
        if (httpmessage.containsHeader("X-BlockId"))
        {
            a1.a(Long.valueOf(httpmessage.getFirstHeader("X-BlockId").getValue()).longValue());
        }
        if (httpmessage.containsHeader("X-Object-Type"))
        {
            a1.e(httpmessage.getFirstHeader("X-Object-Type").getValue());
        }
        if (httpmessage.containsHeader("X-Origin-Hit"))
        {
            a1.a(Integer.valueOf(httpmessage.getFirstHeader("X-Origin-Hit").getValue()).intValue());
        }
        if (httpmessage.containsHeader("X-Origin-From-Pieces"))
        {
            a1.f(httpmessage.getFirstHeader("X-Origin-From-Pieces").getValue());
        }
        if (httpmessage.containsHeader("X-Origin-Hit-Original"))
        {
            a1.g(httpmessage.getFirstHeader("X-Origin-Hit-Original").getValue());
        }
        if (httpmessage.containsHeader("X-Origin-Is-Transcode"))
        {
            String s = httpmessage.getFirstHeader("X-Origin-Is-Transcode").getValue();
            if (!s.isEmpty())
            {
                a1.b(Integer.valueOf(s).intValue());
            }
        }
        if (httpmessage.containsHeader("X-Edge-Hit"))
        {
            a1.c(Integer.valueOf(httpmessage.getFirstHeader("X-Edge-Hit").getValue()).intValue());
        }
        if (httpmessage.containsHeader("X-Edge-From-Pieces"))
        {
            a1.h(httpmessage.getFirstHeader("X-Edge-From-Pieces").getValue());
        }
        if (httpmessage.containsHeader("X-FB-Edge-Debug"))
        {
            a1.i(httpmessage.getFirstHeader("X-FB-Edge-Debug").getValue());
        }
        if (httpmessage.containsHeader("X-Cache"))
        {
            a1.a(httpmessage.getFirstHeader("X-Cache").getValue());
        }
        if (httpmessage.containsHeader("X-Cache-Remote"))
        {
            a1.b(httpmessage.getFirstHeader("X-Cache-Remote").getValue());
        }
        if (httpmessage.containsHeader("X-Akamai-Pragma-Client-IP"))
        {
            a1.c(httpmessage.getFirstHeader("X-Akamai-Pragma-Client-IP").getValue());
        }
    }

    public static void a(HttpGet httpget)
    {
        c c1 = a(httpget.getURI());
        if (c1 == null)
        {
            return;
        }
        if (c1.equals(c.a))
        {
            httpget.addHeader("Pragma", "akamai-x-cache-on, akamai-x-cache-remote-on, akamai-x-get-client-ip");
        } else
        {
            httpget.addHeader("X-FB-Debug", "True");
            httpget.addHeader("X-FB-Origin-Debug", "True");
        }
        httpget.getParams().setParameter("Cdn", c1);
    }

    public static void a(HttpParams httpparams, i j)
    {
        if (httpparams.getParameter("Cdn") != null)
        {
            j.a(new a((c)httpparams.getParameter("Cdn")));
        }
    }

    public static boolean a(a a1)
    {
        return c.a.equals(a1.a());
    }

    public static boolean b(a a1)
    {
        return c.b.equals(a1.a());
    }

}
