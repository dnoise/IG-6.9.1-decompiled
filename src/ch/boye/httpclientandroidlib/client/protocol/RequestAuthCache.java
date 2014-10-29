// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.client.protocol;

import ch.boye.httpclientandroidlib.HttpHost;
import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.HttpRequestInterceptor;
import ch.boye.httpclientandroidlib.androidextra.HttpClientAndroidLog;
import ch.boye.httpclientandroidlib.auth.AuthScheme;
import ch.boye.httpclientandroidlib.auth.AuthScope;
import ch.boye.httpclientandroidlib.auth.AuthState;
import ch.boye.httpclientandroidlib.client.AuthCache;
import ch.boye.httpclientandroidlib.client.CredentialsProvider;
import ch.boye.httpclientandroidlib.protocol.HttpContext;

public class RequestAuthCache
    implements HttpRequestInterceptor
{

    public HttpClientAndroidLog log;

    public RequestAuthCache()
    {
        log = new HttpClientAndroidLog(getClass());
    }

    private void doPreemptiveAuth(HttpHost httphost, AuthScheme authscheme, AuthState authstate, CredentialsProvider credentialsprovider)
    {
        String s = authscheme.getSchemeName();
        if (log.isDebugEnabled())
        {
            log.debug((new StringBuilder("Re-using cached '")).append(s).append("' auth scheme for ").append(httphost).toString());
        }
        ch.boye.httpclientandroidlib.auth.Credentials credentials = credentialsprovider.getCredentials(new AuthScope(httphost.getHostName(), httphost.getPort(), AuthScope.ANY_REALM, s));
        if (credentials != null)
        {
            authstate.setAuthScheme(authscheme);
            authstate.setCredentials(credentials);
            return;
        } else
        {
            log.debug("No credentials for preemptive authentication");
            return;
        }
    }

    public void process(HttpRequest httprequest, HttpContext httpcontext)
    {
        if (httprequest == null)
        {
            throw new IllegalArgumentException("HTTP request may not be null");
        }
        if (httpcontext == null)
        {
            throw new IllegalArgumentException("HTTP context may not be null");
        }
        AuthCache authcache = (AuthCache)httpcontext.getAttribute("http.auth.auth-cache");
        if (authcache == null)
        {
            log.debug("Auth cache not set in the context");
        } else
        {
            CredentialsProvider credentialsprovider = (CredentialsProvider)httpcontext.getAttribute("http.auth.credentials-provider");
            if (credentialsprovider == null)
            {
                log.debug("Credentials provider not set in the context");
                return;
            }
            HttpHost httphost = (HttpHost)httpcontext.getAttribute("http.target_host");
            AuthState authstate = (AuthState)httpcontext.getAttribute("http.auth.target-scope");
            if (httphost != null && authstate != null && authstate.getAuthScheme() == null)
            {
                AuthScheme authscheme1 = authcache.get(httphost);
                if (authscheme1 != null)
                {
                    doPreemptiveAuth(httphost, authscheme1, authstate, credentialsprovider);
                }
            }
            HttpHost httphost1 = (HttpHost)httpcontext.getAttribute("http.proxy_host");
            AuthState authstate1 = (AuthState)httpcontext.getAttribute("http.auth.proxy-scope");
            if (httphost1 != null && authstate1 != null && authstate1.getAuthScheme() == null)
            {
                AuthScheme authscheme = authcache.get(httphost1);
                if (authscheme != null)
                {
                    doPreemptiveAuth(httphost1, authscheme, authstate1, credentialsprovider);
                    return;
                }
            }
        }
    }
}
