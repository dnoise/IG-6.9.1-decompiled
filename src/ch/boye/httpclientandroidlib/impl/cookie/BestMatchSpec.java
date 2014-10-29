// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.cookie;

import ch.boye.httpclientandroidlib.FormattedHeader;
import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HeaderElement;
import ch.boye.httpclientandroidlib.cookie.Cookie;
import ch.boye.httpclientandroidlib.cookie.CookieOrigin;
import ch.boye.httpclientandroidlib.cookie.CookieSpec;
import ch.boye.httpclientandroidlib.cookie.MalformedCookieException;
import ch.boye.httpclientandroidlib.cookie.SetCookie2;
import ch.boye.httpclientandroidlib.message.ParserCursor;
import ch.boye.httpclientandroidlib.util.CharArrayBuffer;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.cookie:
//            BrowserCompatSpec, RFC2109Spec, RFC2965Spec, NetscapeDraftHeaderParser

public class BestMatchSpec
    implements CookieSpec
{

    private BrowserCompatSpec compat;
    private final String datepatterns[];
    private RFC2109Spec obsoleteStrict;
    private final boolean oneHeader;
    private RFC2965Spec strict;

    public BestMatchSpec()
    {
        this(null, false);
    }

    public BestMatchSpec(String as[], boolean flag)
    {
        String as1[];
        if (as == null)
        {
            as1 = null;
        } else
        {
            as1 = (String[])as.clone();
        }
        datepatterns = as1;
        oneHeader = flag;
    }

    private BrowserCompatSpec getCompat()
    {
        if (compat == null)
        {
            compat = new BrowserCompatSpec(datepatterns);
        }
        return compat;
    }

    private RFC2109Spec getObsoleteStrict()
    {
        if (obsoleteStrict == null)
        {
            obsoleteStrict = new RFC2109Spec(datepatterns, oneHeader);
        }
        return obsoleteStrict;
    }

    private RFC2965Spec getStrict()
    {
        if (strict == null)
        {
            strict = new RFC2965Spec(datepatterns, oneHeader);
        }
        return strict;
    }

    public List formatCookies(List list)
    {
        if (list == null)
        {
            throw new IllegalArgumentException("List of cookies may not be null");
        }
        Iterator iterator = list.iterator();
        int i = 0x7fffffff;
        boolean flag = true;
        while (iterator.hasNext()) 
        {
            Cookie cookie = (Cookie)iterator.next();
            if (!(cookie instanceof SetCookie2))
            {
                flag = false;
            }
            int j;
            if (cookie.getVersion() < i)
            {
                j = cookie.getVersion();
            } else
            {
                j = i;
            }
            i = j;
        }
        if (i > 0)
        {
            if (flag)
            {
                return getStrict().formatCookies(list);
            } else
            {
                return getObsoleteStrict().formatCookies(list);
            }
        } else
        {
            return getCompat().formatCookies(list);
        }
    }

    public int getVersion()
    {
        return getStrict().getVersion();
    }

    public Header getVersionHeader()
    {
        return getStrict().getVersionHeader();
    }

    public boolean match(Cookie cookie, CookieOrigin cookieorigin)
    {
        if (cookie == null)
        {
            throw new IllegalArgumentException("Cookie may not be null");
        }
        if (cookieorigin == null)
        {
            throw new IllegalArgumentException("Cookie origin may not be null");
        }
        if (cookie.getVersion() > 0)
        {
            if (cookie instanceof SetCookie2)
            {
                return getStrict().match(cookie, cookieorigin);
            } else
            {
                return getObsoleteStrict().match(cookie, cookieorigin);
            }
        } else
        {
            return getCompat().match(cookie, cookieorigin);
        }
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
        HeaderElement aheaderelement[] = header.getElements();
        int i = aheaderelement.length;
        int j = 0;
        boolean flag = false;
        boolean flag1 = false;
        for (; j < i; j++)
        {
            HeaderElement headerelement = aheaderelement[j];
            if (headerelement.getParameterByName("version") != null)
            {
                flag1 = true;
            }
            if (headerelement.getParameterByName("expires") != null)
            {
                flag = true;
            }
        }

        if (flag || !flag1)
        {
            NetscapeDraftHeaderParser netscapedraftheaderparser = NetscapeDraftHeaderParser.DEFAULT;
            CharArrayBuffer chararraybuffer;
            ParserCursor parsercursor;
            HeaderElement aheaderelement1[];
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
            aheaderelement1 = new HeaderElement[1];
            aheaderelement1[0] = netscapedraftheaderparser.parseHeader(chararraybuffer, parsercursor);
            return getCompat().parse(aheaderelement1, cookieorigin);
        }
        if ("Set-Cookie2".equals(header.getName()))
        {
            return getStrict().parse(aheaderelement, cookieorigin);
        } else
        {
            return getObsoleteStrict().parse(aheaderelement, cookieorigin);
        }
    }

    public String toString()
    {
        return "best-match";
    }

    public void validate(Cookie cookie, CookieOrigin cookieorigin)
    {
        if (cookie == null)
        {
            throw new IllegalArgumentException("Cookie may not be null");
        }
        if (cookieorigin == null)
        {
            throw new IllegalArgumentException("Cookie origin may not be null");
        }
        if (cookie.getVersion() > 0)
        {
            if (cookie instanceof SetCookie2)
            {
                getStrict().validate(cookie, cookieorigin);
                return;
            } else
            {
                getObsoleteStrict().validate(cookie, cookieorigin);
                return;
            }
        } else
        {
            getCompat().validate(cookie, cookieorigin);
            return;
        }
    }
}
