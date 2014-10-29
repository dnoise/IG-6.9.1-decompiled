// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.client.protocol;

import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.HttpRequestInterceptor;
import ch.boye.httpclientandroidlib.androidextra.HttpClientAndroidLog;
import ch.boye.httpclientandroidlib.auth.AuthScheme;
import ch.boye.httpclientandroidlib.auth.AuthState;
import ch.boye.httpclientandroidlib.auth.AuthenticationException;
import ch.boye.httpclientandroidlib.auth.ContextAwareAuthScheme;
import ch.boye.httpclientandroidlib.conn.HttpRoutedConnection;
import ch.boye.httpclientandroidlib.conn.routing.HttpRoute;
import ch.boye.httpclientandroidlib.protocol.HttpContext;

public class RequestProxyAuthentication
    implements HttpRequestInterceptor
{

    public HttpClientAndroidLog log;

    public RequestProxyAuthentication()
    {
        log = new HttpClientAndroidLog(getClass());
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
        if (!httprequest.containsHeader("Proxy-Authorization")) goto _L2; else goto _L1
_L1:
        return;
_L2:
        HttpRoutedConnection httproutedconnection;
        httproutedconnection = (HttpRoutedConnection)httpcontext.getAttribute("http.connection");
        if (httproutedconnection == null)
        {
            log.debug("HTTP connection not set in the context");
            return;
        }
        if (httproutedconnection.getRoute().isTunnelled()) goto _L1; else goto _L3
_L3:
        AuthState authstate;
        AuthScheme authscheme;
        authstate = (AuthState)httpcontext.getAttribute("http.auth.proxy-scope");
        if (authstate == null)
        {
            log.debug("Proxy auth state not set in the context");
            return;
        }
        authscheme = authstate.getAuthScheme();
        if (authscheme == null) goto _L1; else goto _L4
_L4:
        ch.boye.httpclientandroidlib.auth.Credentials credentials;
        credentials = authstate.getCredentials();
        if (credentials == null)
        {
            log.debug("User credentials not available");
            return;
        }
        if (authstate.getAuthScope() == null && authscheme.isConnectionBased()) goto _L1; else goto _L5
_L5:
        if (!(authscheme instanceof ContextAwareAuthScheme)) goto _L7; else goto _L6
_L6:
        ch.boye.httpclientandroidlib.Header header1 = ((ContextAwareAuthScheme)authscheme).authenticate(credentials, httprequest, httpcontext);
_L9:
        httprequest.addHeader(header1);
        return;
        AuthenticationException authenticationexception;
        authenticationexception;
        if (!log.isErrorEnabled()) goto _L1; else goto _L8
_L8:
        log.error((new StringBuilder("Proxy authentication error: ")).append(authenticationexception.getMessage()).toString());
        return;
_L7:
        ch.boye.httpclientandroidlib.Header header = authscheme.authenticate(credentials, httprequest);
        header1 = header;
          goto _L9
    }
}
