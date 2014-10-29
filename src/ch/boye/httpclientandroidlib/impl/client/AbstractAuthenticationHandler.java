// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.client;

import ch.boye.httpclientandroidlib.FormattedHeader;
import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.androidextra.HttpClientAndroidLog;
import ch.boye.httpclientandroidlib.auth.AuthScheme;
import ch.boye.httpclientandroidlib.auth.AuthSchemeRegistry;
import ch.boye.httpclientandroidlib.auth.AuthenticationException;
import ch.boye.httpclientandroidlib.auth.MalformedChallengeException;
import ch.boye.httpclientandroidlib.client.AuthenticationHandler;
import ch.boye.httpclientandroidlib.protocol.HTTP;
import ch.boye.httpclientandroidlib.protocol.HttpContext;
import ch.boye.httpclientandroidlib.util.CharArrayBuffer;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public abstract class AbstractAuthenticationHandler
    implements AuthenticationHandler
{

    private static final List DEFAULT_SCHEME_PRIORITY = Collections.unmodifiableList(Arrays.asList(new String[] {
        "negotiate", "NTLM", "Digest", "Basic"
    }));
    public HttpClientAndroidLog log;

    public AbstractAuthenticationHandler()
    {
        log = new HttpClientAndroidLog(getClass());
    }

    protected List getAuthPreferences()
    {
        return DEFAULT_SCHEME_PRIORITY;
    }

    protected List getAuthPreferences(HttpResponse httpresponse, HttpContext httpcontext)
    {
        return getAuthPreferences();
    }

    protected Map parseChallenges(Header aheader[])
    {
        HashMap hashmap = new HashMap(aheader.length);
        int i = aheader.length;
        for (int j = 0; j < i; j++)
        {
            Header header = aheader[j];
            CharArrayBuffer chararraybuffer1;
            int k;
            if (header instanceof FormattedHeader)
            {
                chararraybuffer1 = ((FormattedHeader)header).getBuffer();
            } else
            {
                String s = header.getValue();
                if (s == null)
                {
                    throw new MalformedChallengeException("Header value is null");
                }
                CharArrayBuffer chararraybuffer = new CharArrayBuffer(s.length());
                chararraybuffer.append(s);
                chararraybuffer1 = chararraybuffer;
                k = 0;
            }
            for (k = ((FormattedHeader)header).getValuePos(); k < chararraybuffer1.length() && HTTP.isWhitespace(chararraybuffer1.charAt(k)); k++) { }
            int l;
            for (l = k; l < chararraybuffer1.length() && !HTTP.isWhitespace(chararraybuffer1.charAt(l)); l++) { }
            hashmap.put(chararraybuffer1.substring(k, l).toLowerCase(Locale.ENGLISH), header);
        }

        return hashmap;
    }

    public AuthScheme selectScheme(Map map, HttpResponse httpresponse, HttpContext httpcontext)
    {
        AuthSchemeRegistry authschemeregistry;
        Iterator iterator;
        authschemeregistry = (AuthSchemeRegistry)httpcontext.getAttribute("http.authscheme-registry");
        if (authschemeregistry == null)
        {
            throw new IllegalStateException("AuthScheme registry not set in HTTP context");
        }
        List list = getAuthPreferences(httpresponse, httpcontext);
        if (list == null)
        {
            list = DEFAULT_SCHEME_PRIORITY;
        }
        if (log.isDebugEnabled())
        {
            log.debug((new StringBuilder("Authentication schemes in the order of preference: ")).append(list).toString());
        }
        iterator = list.iterator();
_L3:
        String s;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_305;
        }
        s = (String)iterator.next();
        if ((Header)map.get(s.toLowerCase(Locale.ENGLISH)) == null) goto _L2; else goto _L1
_L1:
        if (log.isDebugEnabled())
        {
            log.debug((new StringBuilder()).append(s).append(" authentication scheme selected").toString());
        }
        AuthScheme authscheme1 = authschemeregistry.getAuthScheme(s, httpresponse.getParams());
        AuthScheme authscheme = authscheme1;
_L4:
        IllegalStateException illegalstateexception;
        if (authscheme == null)
        {
            throw new AuthenticationException((new StringBuilder("Unable to respond to any of these challenges: ")).append(map).toString());
        } else
        {
            return authscheme;
        }
        illegalstateexception;
        if (log.isWarnEnabled())
        {
            log.warn((new StringBuilder("Authentication scheme ")).append(s).append(" not supported").toString());
        }
          goto _L3
_L2:
        if (log.isDebugEnabled())
        {
            log.debug((new StringBuilder("Challenge for ")).append(s).append(" authentication scheme not available").toString());
        }
          goto _L3
        authscheme = null;
          goto _L4
    }

}
