// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.io;

import ch.boye.httpclientandroidlib.ConnectionClosedException;
import ch.boye.httpclientandroidlib.HttpMessage;
import ch.boye.httpclientandroidlib.HttpRequestFactory;
import ch.boye.httpclientandroidlib.io.SessionInputBuffer;
import ch.boye.httpclientandroidlib.message.LineParser;
import ch.boye.httpclientandroidlib.message.ParserCursor;
import ch.boye.httpclientandroidlib.params.HttpParams;
import ch.boye.httpclientandroidlib.util.CharArrayBuffer;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.io:
//            AbstractMessageParser

public class HttpRequestParser extends AbstractMessageParser
{

    private final CharArrayBuffer lineBuf;
    private final HttpRequestFactory requestFactory;

    public HttpRequestParser(SessionInputBuffer sessioninputbuffer, LineParser lineparser, HttpRequestFactory httprequestfactory, HttpParams httpparams)
    {
        super(sessioninputbuffer, lineparser, httpparams);
        if (httprequestfactory == null)
        {
            throw new IllegalArgumentException("Request factory may not be null");
        } else
        {
            requestFactory = httprequestfactory;
            lineBuf = new CharArrayBuffer(128);
            return;
        }
    }

    protected HttpMessage parseHead(SessionInputBuffer sessioninputbuffer)
    {
        lineBuf.clear();
        if (sessioninputbuffer.readLine(lineBuf) == -1)
        {
            throw new ConnectionClosedException("Client closed connection");
        } else
        {
            ParserCursor parsercursor = new ParserCursor(0, lineBuf.length());
            ch.boye.httpclientandroidlib.RequestLine requestline = lineParser.parseRequestLine(lineBuf, parsercursor);
            return requestFactory.newHttpRequest(requestline);
        }
    }
}
