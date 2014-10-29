// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.client.protocol;

import ch.boye.httpclientandroidlib.HttpHost;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.HttpResponseInterceptor;
import ch.boye.httpclientandroidlib.androidextra.HttpClientAndroidLog;
import ch.boye.httpclientandroidlib.auth.AuthScheme;
import ch.boye.httpclientandroidlib.auth.AuthState;
import ch.boye.httpclientandroidlib.client.AuthCache;
import ch.boye.httpclientandroidlib.impl.client.BasicAuthCache;
import ch.boye.httpclientandroidlib.protocol.HttpContext;

public class ResponseAuthCache
    implements HttpResponseInterceptor
{

    public HttpClientAndroidLog log;

    public ResponseAuthCache()
    {
        log = new HttpClientAndroidLog(getClass());
    }

    private void cache(AuthCache authcache, HttpHost httphost, AuthState authstate)
    {
label0:
        {
            AuthScheme authscheme = authstate.getAuthScheme();
            if (authstate.getAuthScope() != null)
            {
                if (authstate.getCredentials() == null)
                {
                    break label0;
                }
                if (log.isDebugEnabled())
                {
                    log.debug((new StringBuilder("Caching '")).append(authscheme.getSchemeName()).append("' auth scheme for ").append(httphost).toString());
                }
                authcache.put(httphost, authscheme);
            }
            return;
        }
        authcache.remove(httphost);
    }

    private boolean isCachable(AuthState authstate)
    {
        AuthScheme authscheme = authstate.getAuthScheme();
        String s;
        if (authscheme != null && authscheme.isComplete())
        {
            if ((s = authscheme.getSchemeName()).equalsIgnoreCase("Basic") || s.equalsIgnoreCase("Digest"))
            {
                return true;
            }
        }
        return false;
    }

    public void process(HttpResponse httpresponse, HttpContext httpcontext)
    {
        if (httpresponse == null)
        {
            throw new IllegalArgumentException("HTTP request may not be null");
        }
        if (httpcontext == null)
        {
            throw new IllegalArgumentException("HTTP context may not be null");
        }
        Object obj = (AuthCache)httpcontext.getAttribute("http.auth.auth-cache");
        HttpHost httphost = (HttpHost)httpcontext.getAttribute("http.target_host");
        AuthState authstate = (AuthState)httpcontext.getAttribute("http.auth.target-scope");
        Object obj1;
        HttpHost httphost1;
        AuthState authstate1;
        if (httphost != null && authstate != null && isCachable(authstate))
        {
            if (obj == null)
            {
                obj = new BasicAuthCache();
                httpcontext.setAttribute("http.auth.auth-cache", obj);
            }
            cache(((AuthCache) (obj)), httphost, authstate);
            obj1 = obj;
        } else
        {
            obj1 = obj;
        }
        httphost1 = (HttpHost)httpcontext.getAttribute("http.proxy_host");
        authstate1 = (AuthState)httpcontext.getAttribute("http.auth.proxy-scope");
        if (httphost1 != null && authstate1 != null && isCachable(authstate1))
        {
            if (obj1 == null)
            {
                obj1 = new BasicAuthCache();
                httpcontext.setAttribute("http.auth.auth-cache", obj1);
            }
            cache(((AuthCache) (obj1)), httphost1, authstate1);
        }
    }
}
