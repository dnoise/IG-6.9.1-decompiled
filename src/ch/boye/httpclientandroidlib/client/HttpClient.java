// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.client;

import ch.boye.httpclientandroidlib.HttpHost;
import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.client.methods.HttpUriRequest;
import ch.boye.httpclientandroidlib.conn.ClientConnectionManager;
import ch.boye.httpclientandroidlib.params.HttpParams;
import ch.boye.httpclientandroidlib.protocol.HttpContext;

// Referenced classes of package ch.boye.httpclientandroidlib.client:
//            ResponseHandler

public interface HttpClient
{

    public abstract HttpResponse execute(HttpHost httphost, HttpRequest httprequest);

    public abstract HttpResponse execute(HttpHost httphost, HttpRequest httprequest, HttpContext httpcontext);

    public abstract HttpResponse execute(HttpUriRequest httpurirequest);

    public abstract HttpResponse execute(HttpUriRequest httpurirequest, HttpContext httpcontext);

    public abstract Object execute(HttpHost httphost, HttpRequest httprequest, ResponseHandler responsehandler);

    public abstract Object execute(HttpHost httphost, HttpRequest httprequest, ResponseHandler responsehandler, HttpContext httpcontext);

    public abstract Object execute(HttpUriRequest httpurirequest, ResponseHandler responsehandler);

    public abstract Object execute(HttpUriRequest httpurirequest, ResponseHandler responsehandler, HttpContext httpcontext);

    public abstract ClientConnectionManager getConnectionManager();

    public abstract HttpParams getParams();
}
