// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.client.protocol;

import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.HttpRequestInterceptor;
import ch.boye.httpclientandroidlib.RequestLine;
import ch.boye.httpclientandroidlib.androidextra.HttpClientAndroidLog;
import ch.boye.httpclientandroidlib.auth.AuthScheme;
import ch.boye.httpclientandroidlib.auth.AuthState;
import ch.boye.httpclientandroidlib.auth.AuthenticationException;
import ch.boye.httpclientandroidlib.auth.ContextAwareAuthScheme;
import ch.boye.httpclientandroidlib.protocol.HttpContext;

public class RequestTargetAuthentication
    implements HttpRequestInterceptor
{

    public HttpClientAndroidLog log;

    public RequestTargetAuthentication()
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
        break MISSING_BLOCK_LABEL_28;
_L4:
        AuthState authstate;
        AuthScheme authscheme;
        ch.boye.httpclientandroidlib.auth.Credentials credentials;
        do
        {
            do
            {
                do
                {
                    return;
                } while (httprequest.getRequestLine().getMethod().equalsIgnoreCase("CONNECT") || httprequest.containsHeader("Authorization"));
                authstate = (AuthState)httpcontext.getAttribute("http.auth.target-scope");
                if (authstate == null)
                {
                    log.debug("Target auth state not set in the context");
                    return;
                }
                authscheme = authstate.getAuthScheme();
            } while (authscheme == null);
            credentials = authstate.getCredentials();
            if (credentials == null)
            {
                log.debug("User credentials not available");
                return;
            }
        } while (authstate.getAuthScope() == null && authscheme.isConnectionBased());
        if (!(authscheme instanceof ContextAwareAuthScheme)) goto _L2; else goto _L1
_L1:
        ch.boye.httpclientandroidlib.Header header1 = ((ContextAwareAuthScheme)authscheme).authenticate(credentials, httprequest, httpcontext);
_L5:
        httprequest.addHeader(header1);
        return;
        AuthenticationException authenticationexception;
        authenticationexception;
        if (!log.isErrorEnabled()) goto _L4; else goto _L3
_L3:
        log.error((new StringBuilder("Authentication error: ")).append(authenticationexception.getMessage()).toString());
        return;
_L2:
        ch.boye.httpclientandroidlib.Header header = authscheme.authenticate(credentials, httprequest);
        header1 = header;
          goto _L5
    }
}
