// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.entity;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HttpMessage;
import ch.boye.httpclientandroidlib.HttpVersion;
import ch.boye.httpclientandroidlib.ProtocolException;
import ch.boye.httpclientandroidlib.ProtocolVersion;
import ch.boye.httpclientandroidlib.entity.ContentLengthStrategy;

public class StrictContentLengthStrategy
    implements ContentLengthStrategy
{

    public StrictContentLengthStrategy()
    {
    }

    public long determineLength(HttpMessage httpmessage)
    {
        long l;
        Header header;
        Header header1;
        l = -1L;
        if (httpmessage == null)
        {
            throw new IllegalArgumentException("HTTP message may not be null");
        }
        header = httpmessage.getFirstHeader("Transfer-Encoding");
        header1 = httpmessage.getFirstHeader("Content-Length");
        if (header == null) goto _L2; else goto _L1
_L1:
        String s1 = header.getValue();
        if (!"chunked".equalsIgnoreCase(s1)) goto _L4; else goto _L3
_L3:
        if (httpmessage.getProtocolVersion().lessEquals(HttpVersion.HTTP_1_0))
        {
            throw new ProtocolException((new StringBuilder("Chunked transfer encoding not allowed for ")).append(httpmessage.getProtocolVersion()).toString());
        }
        l = -2L;
_L6:
        return l;
_L4:
        if ("identity".equalsIgnoreCase(s1)) goto _L6; else goto _L5
_L5:
        throw new ProtocolException((new StringBuilder("Unsupported transfer encoding: ")).append(s1).toString());
_L2:
        if (header1 == null) goto _L6; else goto _L7
_L7:
        String s = header1.getValue();
        try
        {
            l = Long.parseLong(s);
        }
        catch (NumberFormatException numberformatexception)
        {
            throw new ProtocolException((new StringBuilder("Invalid content length: ")).append(s).toString());
        }
        if (l >= 0L) goto _L6; else goto _L8
_L8:
        throw new ProtocolException((new StringBuilder("Negative content length: ")).append(s).toString());
    }
}
