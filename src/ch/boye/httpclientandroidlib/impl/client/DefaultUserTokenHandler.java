// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.client;

import ch.boye.httpclientandroidlib.auth.AuthScheme;
import ch.boye.httpclientandroidlib.auth.AuthState;
import ch.boye.httpclientandroidlib.auth.Credentials;
import ch.boye.httpclientandroidlib.client.UserTokenHandler;
import ch.boye.httpclientandroidlib.conn.HttpRoutedConnection;
import ch.boye.httpclientandroidlib.protocol.HttpContext;
import java.security.Principal;
import javax.net.ssl.SSLSession;

public class DefaultUserTokenHandler
    implements UserTokenHandler
{

    public DefaultUserTokenHandler()
    {
    }

    private static Principal getAuthPrincipal(AuthState authstate)
    {
        AuthScheme authscheme = authstate.getAuthScheme();
        if (authscheme != null && authscheme.isComplete() && authscheme.isConnectionBased())
        {
            Credentials credentials = authstate.getCredentials();
            if (credentials != null)
            {
                return credentials.getUserPrincipal();
            }
        }
        return null;
    }

    public Object getUserToken(HttpContext httpcontext)
    {
        AuthState authstate = (AuthState)httpcontext.getAttribute("http.auth.target-scope");
        Principal principal = null;
        if (authstate != null)
        {
            principal = getAuthPrincipal(authstate);
            if (principal == null)
            {
                principal = getAuthPrincipal((AuthState)httpcontext.getAttribute("http.auth.proxy-scope"));
            }
        }
        if (principal == null)
        {
            HttpRoutedConnection httproutedconnection = (HttpRoutedConnection)httpcontext.getAttribute("http.connection");
            if (httproutedconnection.isOpen())
            {
                SSLSession sslsession = httproutedconnection.getSSLSession();
                if (sslsession != null)
                {
                    return sslsession.getLocalPrincipal();
                }
            }
        }
        return principal;
    }
}
