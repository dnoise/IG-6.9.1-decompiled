// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.a;

import ch.boye.httpclientandroidlib.HttpVersion;
import ch.boye.httpclientandroidlib.client.HttpClient;
import ch.boye.httpclientandroidlib.impl.client.AbstractHttpClient;
import ch.boye.httpclientandroidlib.impl.conn.tsccm.ThreadSafeClientConnManager;
import ch.boye.httpclientandroidlib.params.BasicHttpParams;
import ch.boye.httpclientandroidlib.params.HttpConnectionParams;
import ch.boye.httpclientandroidlib.params.HttpProtocolParams;
import com.instagram.api.useragent.a;
import com.instagram.common.a.e.e;
import com.instagram.common.a.g.d;
import com.instagram.common.s.b;
import com.instagram.service.persistentcookiestore.PersistentCookieStore;

// Referenced classes of package com.instagram.api.a:
//            a, b

public final class c
    implements com.instagram.common.a.b.c
{

    public c()
    {
    }

    public final HttpClient a()
    {
        BasicHttpParams basichttpparams = new BasicHttpParams();
        HttpConnectionParams.setTcpNoDelay(basichttpparams, true);
        HttpConnectionParams.setConnectionTimeout(basichttpparams, 10000);
        HttpConnectionParams.setSoTimeout(basichttpparams, 30000);
        HttpProtocolParams.setVersion(basichttpparams, HttpVersion.HTTP_1_1);
        HttpProtocolParams.setUserAgent(basichttpparams, com.instagram.api.useragent.a.a());
        ThreadSafeClientConnManager threadsafeclientconnmanager = new ThreadSafeClientConnManager(d.a());
        threadsafeclientconnmanager.setDefaultMaxPerRoute(20);
        android.content.Context context = com.instagram.common.h.a.a();
        AbstractHttpClient abstracthttpclient = (new com.instagram.api.f.a(context)).a(threadsafeclientconnmanager, basichttpparams);
        abstracthttpclient.setCookieStore(PersistentCookieStore.c());
        abstracthttpclient.addRequestInterceptor(new com.instagram.common.a.e.a());
        abstracthttpclient.addRequestInterceptor(new com.instagram.api.a.a(context));
        abstracthttpclient.addRequestInterceptor(new com.instagram.common.a.e.c());
        abstracthttpclient.addResponseInterceptor(new com.instagram.common.a.e.d());
        abstracthttpclient.addResponseInterceptor(new com.instagram.api.a.b());
        if (!b.d())
        {
            abstracthttpclient.addRequestInterceptor(new com.instagram.common.a.e.b());
            abstracthttpclient.addResponseInterceptor(new e());
        }
        return abstracthttpclient;
    }
}
