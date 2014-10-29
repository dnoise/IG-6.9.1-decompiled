// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl;

import ch.boye.httpclientandroidlib.ConnectionReuseStrategy;
import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HeaderIterator;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.HttpVersion;
import ch.boye.httpclientandroidlib.ParseException;
import ch.boye.httpclientandroidlib.ProtocolVersion;
import ch.boye.httpclientandroidlib.StatusLine;
import ch.boye.httpclientandroidlib.TokenIterator;
import ch.boye.httpclientandroidlib.message.BasicTokenIterator;
import ch.boye.httpclientandroidlib.protocol.HttpContext;

public class DefaultConnectionReuseStrategy
    implements ConnectionReuseStrategy
{

    public DefaultConnectionReuseStrategy()
    {
    }

    protected TokenIterator createTokenIterator(HeaderIterator headeriterator)
    {
        return new BasicTokenIterator(headeriterator);
    }

    public boolean keepAlive(HttpResponse httpresponse, HttpContext httpcontext)
    {
        boolean flag;
        ProtocolVersion protocolversion;
        Header header;
        flag = true;
        if (httpresponse == null)
        {
            throw new IllegalArgumentException("HTTP response may not be null.");
        }
        if (httpcontext == null)
        {
            throw new IllegalArgumentException("HTTP context may not be null.");
        }
        protocolversion = httpresponse.getStatusLine().getProtocolVersion();
        header = httpresponse.getFirstHeader("Transfer-Encoding");
        if (header == null) goto _L2; else goto _L1
_L1:
        if ("chunked".equalsIgnoreCase(header.getValue())) goto _L4; else goto _L3
_L3:
        flag = false;
_L8:
        return flag;
_L2:
        Header aheader[] = httpresponse.getHeaders("Content-Length");
        if (aheader == null || aheader.length != flag)
        {
            return false;
        }
        Header header1 = aheader[0];
        int i;
        try
        {
            i = Integer.parseInt(header1.getValue());
        }
        catch (NumberFormatException numberformatexception)
        {
            return false;
        }
        if (i < 0)
        {
            return false;
        }
_L4:
        HeaderIterator headeriterator = httpresponse.headerIterator("Connection");
        if (!headeriterator.hasNext())
        {
            headeriterator = httpresponse.headerIterator("Proxy-Connection");
        }
        if (!headeriterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        TokenIterator tokeniterator;
        int j;
        String s;
        boolean flag1;
        try
        {
            tokeniterator = createTokenIterator(headeriterator);
        }
        catch (ParseException parseexception)
        {
            return false;
        }
        j = 0;
        if (!tokeniterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        s = tokeniterator.nextToken();
        if ("Close".equalsIgnoreCase(s))
        {
            return false;
        }
        flag1 = "Keep-Alive".equalsIgnoreCase(s);
        if (flag1)
        {
            j = ((flag) ? 1 : 0);
        }
        if (true) goto _L6; else goto _L5
_L5:
        continue; /* Loop/switch isn't completed */
_L6:
        break MISSING_BLOCK_LABEL_181;
        if (j != 0) goto _L8; else goto _L7
_L7:
        if (!protocolversion.lessEquals(HttpVersion.HTTP_1_0)) goto _L8; else goto _L9
_L9:
        return false;
    }
}
