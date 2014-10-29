// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.message;

import ch.boye.httpclientandroidlib.FormattedHeader;
import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.ProtocolVersion;
import ch.boye.httpclientandroidlib.RequestLine;
import ch.boye.httpclientandroidlib.StatusLine;
import ch.boye.httpclientandroidlib.util.CharArrayBuffer;

// Referenced classes of package ch.boye.httpclientandroidlib.message:
//            LineFormatter

public class BasicLineFormatter
    implements LineFormatter
{

    public static final BasicLineFormatter DEFAULT = new BasicLineFormatter();

    public BasicLineFormatter()
    {
    }

    public static final String formatHeader(Header header, LineFormatter lineformatter)
    {
        if (lineformatter == null)
        {
            lineformatter = DEFAULT;
        }
        return lineformatter.formatHeader(null, header).toString();
    }

    public static final String formatProtocolVersion(ProtocolVersion protocolversion, LineFormatter lineformatter)
    {
        if (lineformatter == null)
        {
            lineformatter = DEFAULT;
        }
        return lineformatter.appendProtocolVersion(null, protocolversion).toString();
    }

    public static final String formatRequestLine(RequestLine requestline, LineFormatter lineformatter)
    {
        if (lineformatter == null)
        {
            lineformatter = DEFAULT;
        }
        return lineformatter.formatRequestLine(null, requestline).toString();
    }

    public static final String formatStatusLine(StatusLine statusline, LineFormatter lineformatter)
    {
        if (lineformatter == null)
        {
            lineformatter = DEFAULT;
        }
        return lineformatter.formatStatusLine(null, statusline).toString();
    }

    public CharArrayBuffer appendProtocolVersion(CharArrayBuffer chararraybuffer, ProtocolVersion protocolversion)
    {
        if (protocolversion == null)
        {
            throw new IllegalArgumentException("Protocol version may not be null");
        }
        int i = estimateProtocolVersionLen(protocolversion);
        if (chararraybuffer == null)
        {
            chararraybuffer = new CharArrayBuffer(i);
        } else
        {
            chararraybuffer.ensureCapacity(i);
        }
        chararraybuffer.append(protocolversion.getProtocol());
        chararraybuffer.append('/');
        chararraybuffer.append(Integer.toString(protocolversion.getMajor()));
        chararraybuffer.append('.');
        chararraybuffer.append(Integer.toString(protocolversion.getMinor()));
        return chararraybuffer;
    }

    protected void doFormatHeader(CharArrayBuffer chararraybuffer, Header header)
    {
        String s = header.getName();
        String s1 = header.getValue();
        int i = 2 + s.length();
        if (s1 != null)
        {
            i += s1.length();
        }
        chararraybuffer.ensureCapacity(i);
        chararraybuffer.append(s);
        chararraybuffer.append(": ");
        if (s1 != null)
        {
            chararraybuffer.append(s1);
        }
    }

    protected void doFormatRequestLine(CharArrayBuffer chararraybuffer, RequestLine requestline)
    {
        String s = requestline.getMethod();
        String s1 = requestline.getUri();
        chararraybuffer.ensureCapacity(1 + (1 + s.length() + s1.length()) + estimateProtocolVersionLen(requestline.getProtocolVersion()));
        chararraybuffer.append(s);
        chararraybuffer.append(' ');
        chararraybuffer.append(s1);
        chararraybuffer.append(' ');
        appendProtocolVersion(chararraybuffer, requestline.getProtocolVersion());
    }

    protected void doFormatStatusLine(CharArrayBuffer chararraybuffer, StatusLine statusline)
    {
        int i = 1 + (3 + (1 + estimateProtocolVersionLen(statusline.getProtocolVersion())));
        String s = statusline.getReasonPhrase();
        if (s != null)
        {
            i += s.length();
        }
        chararraybuffer.ensureCapacity(i);
        appendProtocolVersion(chararraybuffer, statusline.getProtocolVersion());
        chararraybuffer.append(' ');
        chararraybuffer.append(Integer.toString(statusline.getStatusCode()));
        chararraybuffer.append(' ');
        if (s != null)
        {
            chararraybuffer.append(s);
        }
    }

    protected int estimateProtocolVersionLen(ProtocolVersion protocolversion)
    {
        return 4 + protocolversion.getProtocol().length();
    }

    public CharArrayBuffer formatHeader(CharArrayBuffer chararraybuffer, Header header)
    {
        if (header == null)
        {
            throw new IllegalArgumentException("Header may not be null");
        }
        if (header instanceof FormattedHeader)
        {
            return ((FormattedHeader)header).getBuffer();
        } else
        {
            CharArrayBuffer chararraybuffer1 = initBuffer(chararraybuffer);
            doFormatHeader(chararraybuffer1, header);
            return chararraybuffer1;
        }
    }

    public CharArrayBuffer formatRequestLine(CharArrayBuffer chararraybuffer, RequestLine requestline)
    {
        if (requestline == null)
        {
            throw new IllegalArgumentException("Request line may not be null");
        } else
        {
            CharArrayBuffer chararraybuffer1 = initBuffer(chararraybuffer);
            doFormatRequestLine(chararraybuffer1, requestline);
            return chararraybuffer1;
        }
    }

    public CharArrayBuffer formatStatusLine(CharArrayBuffer chararraybuffer, StatusLine statusline)
    {
        if (statusline == null)
        {
            throw new IllegalArgumentException("Status line may not be null");
        } else
        {
            CharArrayBuffer chararraybuffer1 = initBuffer(chararraybuffer);
            doFormatStatusLine(chararraybuffer1, statusline);
            return chararraybuffer1;
        }
    }

    protected CharArrayBuffer initBuffer(CharArrayBuffer chararraybuffer)
    {
        if (chararraybuffer != null)
        {
            chararraybuffer.clear();
            return chararraybuffer;
        } else
        {
            return new CharArrayBuffer(64);
        }
    }

}
