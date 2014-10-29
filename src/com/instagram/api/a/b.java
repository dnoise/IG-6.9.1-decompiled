// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.a;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.HttpResponseInterceptor;
import ch.boye.httpclientandroidlib.protocol.HttpContext;
import com.instagram.l.b.a;

public final class b
    implements HttpResponseInterceptor
{

    public b()
    {
    }

    private static void a(boolean flag)
    {
        if (com.instagram.l.b.a.a().I() != flag)
        {
            com.instagram.l.b.a.a().i(flag);
        }
    }

    private static void b(boolean flag)
    {
        if (com.instagram.l.b.a.a().J() != flag)
        {
            com.instagram.l.b.a.a().j(flag);
        }
    }

    public final void process(HttpResponse httpresponse, HttpContext httpcontext)
    {
        if (httpresponse != null)
        {
            Header header = httpresponse.getFirstHeader("X-Instagram-Ssl-Everywhere");
            if (header != null)
            {
                a(header.getValue().equalsIgnoreCase("True"));
            }
            Header header1 = httpresponse.getFirstHeader("X-Instagram-Ssl-Wifi");
            if (header1 != null)
            {
                b(header1.getValue().equalsIgnoreCase("True"));
            }
        }
    }
}
