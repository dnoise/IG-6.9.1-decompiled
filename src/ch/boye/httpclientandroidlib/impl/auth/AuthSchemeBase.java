// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.auth;

import ch.boye.httpclientandroidlib.FormattedHeader;
import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HttpRequest;
import ch.boye.httpclientandroidlib.auth.ContextAwareAuthScheme;
import ch.boye.httpclientandroidlib.auth.Credentials;
import ch.boye.httpclientandroidlib.auth.MalformedChallengeException;
import ch.boye.httpclientandroidlib.protocol.HTTP;
import ch.boye.httpclientandroidlib.protocol.HttpContext;
import ch.boye.httpclientandroidlib.util.CharArrayBuffer;

public abstract class AuthSchemeBase
    implements ContextAwareAuthScheme
{

    private boolean proxy;

    public AuthSchemeBase()
    {
    }

    public Header authenticate(Credentials credentials, HttpRequest httprequest, HttpContext httpcontext)
    {
        return authenticate(credentials, httprequest);
    }

    public boolean isProxy()
    {
        return proxy;
    }

    protected abstract void parseChallenge(CharArrayBuffer chararraybuffer, int i, int j);

    public void processChallenge(Header header)
    {
        if (header == null)
        {
            throw new IllegalArgumentException("Header may not be null");
        }
        String s = header.getName();
        CharArrayBuffer chararraybuffer;
        int i;
        if (s.equalsIgnoreCase("WWW-Authenticate"))
        {
            proxy = false;
        } else
        if (s.equalsIgnoreCase("Proxy-Authenticate"))
        {
            proxy = true;
        } else
        {
            throw new MalformedChallengeException((new StringBuilder("Unexpected header name: ")).append(s).toString());
        }
        if (header instanceof FormattedHeader)
        {
            chararraybuffer = ((FormattedHeader)header).getBuffer();
        } else
        {
            String s1 = header.getValue();
            if (s1 == null)
            {
                throw new MalformedChallengeException("Header value is null");
            }
            chararraybuffer = new CharArrayBuffer(s1.length());
            chararraybuffer.append(s1);
            i = 0;
        }
        for (i = ((FormattedHeader)header).getValuePos(); i < chararraybuffer.length() && HTTP.isWhitespace(chararraybuffer.charAt(i)); i++) { }
        int j;
        for (j = i; j < chararraybuffer.length() && !HTTP.isWhitespace(chararraybuffer.charAt(j)); j++) { }
        String s2 = chararraybuffer.substring(i, j);
        if (!s2.equalsIgnoreCase(getSchemeName()))
        {
            throw new MalformedChallengeException((new StringBuilder("Invalid scheme identifier: ")).append(s2).toString());
        } else
        {
            parseChallenge(chararraybuffer, j, chararraybuffer.length());
            return;
        }
    }

    public String toString()
    {
        return getSchemeName();
    }
}
