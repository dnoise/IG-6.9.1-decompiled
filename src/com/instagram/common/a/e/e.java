// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.a.e;

import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.HttpResponseInterceptor;
import ch.boye.httpclientandroidlib.StatusLine;
import ch.boye.httpclientandroidlib.protocol.HttpContext;

public class e
    implements HttpResponseInterceptor
{

    private static final Class a = com/instagram/common/a/e/e;

    public e()
    {
    }

    public void process(HttpResponse httpresponse, HttpContext httpcontext)
    {
        if (httpresponse.getStatusLine() != null)
        {
            Class _tmp = a;
            Integer.valueOf(httpresponse.getStatusLine().getStatusCode());
        }
    }

}
