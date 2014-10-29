// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.a;

import android.content.Context;
import android.net.ConnectivityManager;
import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.HttpRequestInterceptor;
import ch.boye.httpclientandroidlib.protocol.HttpContext;
import com.instagram.api.h.b;

final class a
    implements HttpRequestInterceptor
{

    private final ConnectivityManager a;

    a(Context context)
    {
        a = (ConnectivityManager)context.getSystemService("connectivity");
    }

    private String a()
    {
        this;
        JVM INSTR monitorenter ;
        String s = com.instagram.common.y.g.a.a(a.getActiveNetworkInfo());
        this;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        throw exception;
    }

    public final void process(HttpRequest httprequest, HttpContext httpcontext)
    {
        String s;
        if (httprequest.containsHeader("Host"))
        {
            s = httprequest.getFirstHeader("Host").getValue();
        } else
        {
            s = null;
        }
        if (b.b(s) || b.c(s))
        {
            httprequest.addHeader("X-IG-Connection-Type", a());
        }
    }
}
