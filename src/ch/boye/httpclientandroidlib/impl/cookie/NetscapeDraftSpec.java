// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.cookie;

import ch.boye.httpclientandroidlib.FormattedHeader;
import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HeaderElement;
import ch.boye.httpclientandroidlib.cookie.Cookie;
import ch.boye.httpclientandroidlib.cookie.CookieOrigin;
import ch.boye.httpclientandroidlib.cookie.MalformedCookieException;
import ch.boye.httpclientandroidlib.message.BufferedHeader;
import ch.boye.httpclientandroidlib.message.ParserCursor;
import ch.boye.httpclientandroidlib.util.CharArrayBuffer;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.cookie:
//            CookieSpecBase, BasicPathHandler, NetscapeDomainHandler, BasicMaxAgeHandler, 
//            BasicSecureHandler, BasicCommentHandler, BasicExpiresHandler, NetscapeDraftHeaderParser

public class NetscapeDraftSpec extends CookieSpecBase
{

    protected static final String EXPIRES_PATTERN = "EEE, dd-MMM-yy HH:mm:ss z";
    private final String datepatterns[];

    public NetscapeDraftSpec()
    {
        this(null);
    }

    public NetscapeDraftSpec(String as[])
    {
        if (as != null)
        {
            datepatterns = (String[])as.clone();
        } else
        {
            datepatterns = (new String[] {
                "EEE, dd-MMM-yy HH:mm:ss z"
            });
        }
        registerAttribHandler("path", new BasicPathHandler());
        registerAttribHandler("domain", new NetscapeDomainHandler());
        registerAttribHandler("max-age", new BasicMaxAgeHandler());
        registerAttribHandler("secure", new BasicSecureHandler());
        registerAttribHandler("comment", new BasicCommentHandler());
        registerAttribHandler("expires", new BasicExpiresHandler(datepatterns));
    }

    public List formatCookies(List list)
    {
        if (list == null)
        {
            throw new IllegalArgumentException("List of cookies may not be null");
        }
        if (list.isEmpty())
        {
            throw new IllegalArgumentException("List of cookies may not be empty");
        }
        CharArrayBuffer chararraybuffer = new CharArrayBuffer(20 * list.size());
        chararraybuffer.append("Cookie");
        chararraybuffer.append(": ");
        for (int i = 0; i < list.size(); i++)
        {
            Cookie cookie = (Cookie)list.get(i);
            if (i > 0)
            {
                chararraybuffer.append("; ");
            }
            chararraybuffer.append(cookie.getName());
            String s = cookie.getValue();
            if (s != null)
            {
                chararraybuffer.append("=");
                chararraybuffer.append(s);
            }
        }

        ArrayList arraylist = new ArrayList(1);
        arraylist.add(new BufferedHeader(chararraybuffer));
        return arraylist;
    }

    public int getVersion()
    {
        return 0;
    }

    public Header getVersionHeader()
    {
        return null;
    }

    public List parse(Header header, CookieOrigin cookieorigin)
    {
        if (header == null)
        {
            throw new IllegalArgumentException("Header may not be null");
        }
        if (cookieorigin == null)
        {
            throw new IllegalArgumentException("Cookie origin may not be null");
        }
        if (!header.getName().equalsIgnoreCase("Set-Cookie"))
        {
            throw new MalformedCookieException((new StringBuilder("Unrecognized cookie header '")).append(header.toString()).append("'").toString());
        }
        NetscapeDraftHeaderParser netscapedraftheaderparser = NetscapeDraftHeaderParser.DEFAULT;
        CharArrayBuffer chararraybuffer;
        ParserCursor parsercursor;
        HeaderElement aheaderelement[];
        if (header instanceof FormattedHeader)
        {
            chararraybuffer = ((FormattedHeader)header).getBuffer();
            parsercursor = new ParserCursor(((FormattedHeader)header).getValuePos(), chararraybuffer.length());
        } else
        {
            String s = header.getValue();
            if (s == null)
            {
                throw new MalformedCookieException("Header value is null");
            }
            chararraybuffer = new CharArrayBuffer(s.length());
            chararraybuffer.append(s);
            parsercursor = new ParserCursor(0, chararraybuffer.length());
        }
        aheaderelement = new HeaderElement[1];
        aheaderelement[0] = netscapedraftheaderparser.parseHeader(chararraybuffer, parsercursor);
        return parse(aheaderelement, cookieorigin);
    }

    public String toString()
    {
        return "netscape";
    }
}
