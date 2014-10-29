// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.io;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HttpMessage;
import ch.boye.httpclientandroidlib.ParseException;
import ch.boye.httpclientandroidlib.ProtocolException;
import ch.boye.httpclientandroidlib.io.HttpMessageParser;
import ch.boye.httpclientandroidlib.io.SessionInputBuffer;
import ch.boye.httpclientandroidlib.message.BasicLineParser;
import ch.boye.httpclientandroidlib.message.LineParser;
import ch.boye.httpclientandroidlib.params.HttpParams;
import ch.boye.httpclientandroidlib.util.CharArrayBuffer;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public abstract class AbstractMessageParser
    implements HttpMessageParser
{

    private static final int HEADERS = 1;
    private static final int HEAD_LINE;
    private final List headerLines = new ArrayList();
    protected final LineParser lineParser;
    private final int maxHeaderCount;
    private final int maxLineLen;
    private HttpMessage message;
    private final SessionInputBuffer sessionBuffer;
    private int state;

    public AbstractMessageParser(SessionInputBuffer sessioninputbuffer, LineParser lineparser, HttpParams httpparams)
    {
        if (sessioninputbuffer == null)
        {
            throw new IllegalArgumentException("Session input buffer may not be null");
        }
        if (httpparams == null)
        {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        }
        sessionBuffer = sessioninputbuffer;
        maxHeaderCount = httpparams.getIntParameter("http.connection.max-header-count", -1);
        maxLineLen = httpparams.getIntParameter("http.connection.max-line-length", -1);
        if (lineparser == null)
        {
            lineparser = BasicLineParser.DEFAULT;
        }
        lineParser = lineparser;
        state = 0;
    }

    public static Header[] parseHeaders(SessionInputBuffer sessioninputbuffer, int i, int j, LineParser lineparser)
    {
        if (lineparser == null)
        {
            lineparser = BasicLineParser.DEFAULT;
        }
        return parseHeaders(sessioninputbuffer, i, j, lineparser, ((List) (new ArrayList())));
    }

    public static Header[] parseHeaders(SessionInputBuffer sessioninputbuffer, int i, int j, LineParser lineparser, List list)
    {
        int k = 0;
        if (sessioninputbuffer == null)
        {
            throw new IllegalArgumentException("Session input buffer may not be null");
        }
        if (lineparser == null)
        {
            throw new IllegalArgumentException("Line parser may not be null");
        }
        if (list == null)
        {
            throw new IllegalArgumentException("Header line list may not be null");
        }
        CharArrayBuffer chararraybuffer = null;
        CharArrayBuffer chararraybuffer1 = null;
        do
        {
            if (chararraybuffer1 == null)
            {
                chararraybuffer1 = new CharArrayBuffer(64);
            } else
            {
                chararraybuffer1.clear();
            }
            if (sessioninputbuffer.readLine(chararraybuffer1) == -1 || chararraybuffer1.length() <= 0)
            {
                break;
            }
            CharArrayBuffer chararraybuffer3;
            if ((chararraybuffer1.charAt(0) == ' ' || chararraybuffer1.charAt(0) == '\t') && chararraybuffer != null)
            {
                int l = 0;
                do
                {
                    if (l >= chararraybuffer1.length())
                    {
                        break;
                    }
                    char c = chararraybuffer1.charAt(l);
                    if (c != ' ' && c != '\t')
                    {
                        break;
                    }
                    l++;
                } while (true);
                if (j > 0 && (1 + chararraybuffer.length() + chararraybuffer1.length()) - l > j)
                {
                    throw new IOException("Maximum line length limit exceeded");
                }
                chararraybuffer.append(' ');
                chararraybuffer.append(chararraybuffer1, l, chararraybuffer1.length() - l);
                chararraybuffer3 = chararraybuffer1;
                chararraybuffer1 = chararraybuffer;
            } else
            {
                list.add(chararraybuffer1);
                chararraybuffer3 = null;
            }
            if (i > 0 && list.size() >= i)
            {
                throw new IOException("Maximum header count exceeded");
            }
            chararraybuffer = chararraybuffer1;
            chararraybuffer1 = chararraybuffer3;
        } while (true);
        Header aheader[] = new Header[list.size()];
        while (k < list.size()) 
        {
            CharArrayBuffer chararraybuffer2 = (CharArrayBuffer)list.get(k);
            try
            {
                aheader[k] = lineparser.parseHeader(chararraybuffer2);
            }
            catch (ParseException parseexception)
            {
                throw new ProtocolException(parseexception.getMessage());
            }
            k++;
        }
        return aheader;
    }

    public HttpMessage parse()
    {
        switch (state)
        {
        default:
            throw new IllegalStateException("Inconsistent parser state");

        case 0: // '\0'
            Header aheader[];
            HttpMessage httpmessage;
            try
            {
                message = parseHead(sessionBuffer);
            }
            catch (ParseException parseexception)
            {
                throw new ProtocolException(parseexception.getMessage(), parseexception);
            }
            state = 1;
            // fall through

        case 1: // '\001'
            aheader = parseHeaders(sessionBuffer, maxHeaderCount, maxLineLen, lineParser, headerLines);
            message.setHeaders(aheader);
            httpmessage = message;
            message = null;
            headerLines.clear();
            state = 0;
            return httpmessage;
        }
    }

    protected abstract HttpMessage parseHead(SessionInputBuffer sessioninputbuffer);
}
