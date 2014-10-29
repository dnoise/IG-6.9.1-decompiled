// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.client.cache;

import ch.boye.httpclientandroidlib.HttpHost;
import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.ProtocolException;
import ch.boye.httpclientandroidlib.androidextra.HttpClientAndroidLog;
import ch.boye.httpclientandroidlib.client.cache.HttpCacheEntry;
import ch.boye.httpclientandroidlib.protocol.HttpContext;
import java.io.IOException;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.client.cache:
//            CachingHttpClient, AsynchronousValidator

class AsynchronousValidationRequest
    implements Runnable
{

    private final HttpCacheEntry cacheEntry;
    private final CachingHttpClient cachingClient;
    private final HttpContext context;
    private final String identifier;
    public HttpClientAndroidLog log;
    private final AsynchronousValidator parent;
    private final HttpRequest request;
    private final HttpHost target;

    AsynchronousValidationRequest(AsynchronousValidator asynchronousvalidator, CachingHttpClient cachinghttpclient, HttpHost httphost, HttpRequest httprequest, HttpContext httpcontext, HttpCacheEntry httpcacheentry, String s)
    {
        log = new HttpClientAndroidLog(getClass());
        parent = asynchronousvalidator;
        cachingClient = cachinghttpclient;
        target = httphost;
        request = httprequest;
        context = httpcontext;
        cacheEntry = httpcacheentry;
        identifier = s;
    }

    String getIdentifier()
    {
        return identifier;
    }

    public void run()
    {
        cachingClient.revalidateCacheEntry(target, request, context, cacheEntry);
        parent.markComplete(identifier);
        return;
        IOException ioexception;
        ioexception;
        log.debug((new StringBuilder("Asynchronous revalidation failed due to exception: ")).append(ioexception).toString());
        parent.markComplete(identifier);
        return;
        ProtocolException protocolexception;
        protocolexception;
        log.error((new StringBuilder("ProtocolException thrown during asynchronous revalidation: ")).append(protocolexception).toString());
        parent.markComplete(identifier);
        return;
        Exception exception;
        exception;
        parent.markComplete(identifier);
        throw exception;
    }
}
