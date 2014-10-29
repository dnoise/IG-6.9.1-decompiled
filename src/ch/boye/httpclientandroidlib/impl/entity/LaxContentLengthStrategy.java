// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.entity;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HeaderElement;
import ch.boye.httpclientandroidlib.HttpMessage;
import ch.boye.httpclientandroidlib.ParseException;
import ch.boye.httpclientandroidlib.ProtocolException;
import ch.boye.httpclientandroidlib.entity.ContentLengthStrategy;
import ch.boye.httpclientandroidlib.params.HttpParams;

public class LaxContentLengthStrategy
    implements ContentLengthStrategy
{

    public LaxContentLengthStrategy()
    {
    }

    public long determineLength(HttpMessage httpmessage)
    {
        boolean flag;
        Header header;
        Header header1;
        if (httpmessage == null)
        {
            throw new IllegalArgumentException("HTTP message may not be null");
        }
        flag = httpmessage.getParams().isParameterTrue("http.protocol.strict-transfer-encoding");
        header = httpmessage.getFirstHeader("Transfer-Encoding");
        header1 = httpmessage.getFirstHeader("Content-Length");
        if (header == null) goto _L2; else goto _L1
_L1:
        HeaderElement aheaderelement[];
        int j;
        try
        {
            aheaderelement = header.getElements();
        }
        catch (ParseException parseexception)
        {
            throw new ProtocolException((new StringBuilder("Invalid Transfer-Encoding header value: ")).append(header).toString(), parseexception);
        }
        if (flag)
        {
            for (int k = 0; k < aheaderelement.length; k++)
            {
                String s = aheaderelement[k].getName();
                if (s != null && s.length() > 0 && !s.equalsIgnoreCase("chunked") && !s.equalsIgnoreCase("identity"))
                {
                    throw new ProtocolException((new StringBuilder("Unsupported transfer encoding: ")).append(s).toString());
                }
            }

        }
        j = aheaderelement.length;
        if (!"identity".equalsIgnoreCase(header.getValue())) goto _L4; else goto _L3
_L3:
        long l = -1L;
_L7:
        return l;
_L4:
        if (j > 0 && "chunked".equalsIgnoreCase(aheaderelement[j - 1].getName()))
        {
            return -2L;
        }
        if (flag)
        {
            throw new ProtocolException("Chunk-encoding must be the last one applied");
        } else
        {
            return -1L;
        }
_L2:
        if (header1 == null) goto _L6; else goto _L5
_L5:
        Header aheader[];
        int i;
        aheader = httpmessage.getHeaders("Content-Length");
        if (flag && aheader.length > 1)
        {
            throw new ProtocolException("Multiple content length headers");
        }
        i = -1 + aheader.length;
_L8:
        Header header2;
        if (i < 0)
        {
            break MISSING_BLOCK_LABEL_380;
        }
        header2 = aheader[i];
        long l1 = Long.parseLong(header2.getValue());
        l = l1;
_L9:
        if (l < 0L)
        {
            return -1L;
        }
          goto _L7
        NumberFormatException numberformatexception;
        numberformatexception;
        if (flag)
        {
            throw new ProtocolException((new StringBuilder("Invalid content length: ")).append(header2.getValue()).toString());
        }
        i--;
          goto _L8
_L6:
        return -1L;
        l = -1L;
          goto _L9
    }
}
