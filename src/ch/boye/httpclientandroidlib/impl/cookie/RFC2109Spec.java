// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.cookie;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.cookie.ClientCookie;
import ch.boye.httpclientandroidlib.cookie.Cookie;
import ch.boye.httpclientandroidlib.cookie.CookieOrigin;
import ch.boye.httpclientandroidlib.cookie.CookiePathComparator;
import ch.boye.httpclientandroidlib.cookie.CookieRestrictionViolationException;
import ch.boye.httpclientandroidlib.cookie.MalformedCookieException;
import ch.boye.httpclientandroidlib.message.BufferedHeader;
import ch.boye.httpclientandroidlib.util.CharArrayBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.cookie:
//            CookieSpecBase, RFC2109VersionHandler, BasicPathHandler, RFC2109DomainHandler, 
//            BasicMaxAgeHandler, BasicSecureHandler, BasicCommentHandler, BasicExpiresHandler

public class RFC2109Spec extends CookieSpecBase
{

    private static final String DATE_PATTERNS[] = {
        "EEE, dd MMM yyyy HH:mm:ss zzz", "EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy"
    };
    private static final CookiePathComparator PATH_COMPARATOR = new CookiePathComparator();
    private final String datepatterns[];
    private final boolean oneHeader;

    public RFC2109Spec()
    {
        this(null, false);
    }

    public RFC2109Spec(String as[], boolean flag)
    {
        if (as != null)
        {
            datepatterns = (String[])as.clone();
        } else
        {
            datepatterns = DATE_PATTERNS;
        }
        oneHeader = flag;
        registerAttribHandler("version", new RFC2109VersionHandler());
        registerAttribHandler("path", new BasicPathHandler());
        registerAttribHandler("domain", new RFC2109DomainHandler());
        registerAttribHandler("max-age", new BasicMaxAgeHandler());
        registerAttribHandler("secure", new BasicSecureHandler());
        registerAttribHandler("comment", new BasicCommentHandler());
        registerAttribHandler("expires", new BasicExpiresHandler(datepatterns));
    }

    private List doFormatManyHeaders(List list)
    {
        ArrayList arraylist = new ArrayList(list.size());
        CharArrayBuffer chararraybuffer;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); arraylist.add(new BufferedHeader(chararraybuffer)))
        {
            Cookie cookie = (Cookie)iterator.next();
            int i = cookie.getVersion();
            chararraybuffer = new CharArrayBuffer(40);
            chararraybuffer.append("Cookie: ");
            chararraybuffer.append("$Version=");
            chararraybuffer.append(Integer.toString(i));
            chararraybuffer.append("; ");
            formatCookieAsVer(chararraybuffer, cookie, i);
        }

        return arraylist;
    }

    private List doFormatOneHeader(List list)
    {
        Iterator iterator = list.iterator();
        int i = 0x7fffffff;
        while (iterator.hasNext()) 
        {
            Cookie cookie1 = (Cookie)iterator.next();
            CharArrayBuffer chararraybuffer;
            Iterator iterator1;
            ArrayList arraylist;
            Cookie cookie;
            int j;
            if (cookie1.getVersion() < i)
            {
                j = cookie1.getVersion();
            } else
            {
                j = i;
            }
            i = j;
        }
        chararraybuffer = new CharArrayBuffer(40 * list.size());
        chararraybuffer.append("Cookie");
        chararraybuffer.append(": ");
        chararraybuffer.append("$Version=");
        chararraybuffer.append(Integer.toString(i));
        for (iterator1 = list.iterator(); iterator1.hasNext(); formatCookieAsVer(chararraybuffer, cookie, i))
        {
            cookie = (Cookie)iterator1.next();
            chararraybuffer.append("; ");
        }

        arraylist = new ArrayList(1);
        arraylist.add(new BufferedHeader(chararraybuffer));
        return arraylist;
    }

    protected void formatCookieAsVer(CharArrayBuffer chararraybuffer, Cookie cookie, int i)
    {
        formatParamAsVer(chararraybuffer, cookie.getName(), cookie.getValue(), i);
        if (cookie.getPath() != null && (cookie instanceof ClientCookie) && ((ClientCookie)cookie).containsAttribute("path"))
        {
            chararraybuffer.append("; ");
            formatParamAsVer(chararraybuffer, "$Path", cookie.getPath(), i);
        }
        if (cookie.getDomain() != null && (cookie instanceof ClientCookie) && ((ClientCookie)cookie).containsAttribute("domain"))
        {
            chararraybuffer.append("; ");
            formatParamAsVer(chararraybuffer, "$Domain", cookie.getDomain(), i);
        }
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
        if (list.size() > 1)
        {
            ArrayList arraylist = new ArrayList(list);
            Collections.sort(arraylist, PATH_COMPARATOR);
            list = arraylist;
        }
        if (oneHeader)
        {
            return doFormatOneHeader(list);
        } else
        {
            return doFormatManyHeaders(list);
        }
    }

    protected void formatParamAsVer(CharArrayBuffer chararraybuffer, String s, String s1, int i)
    {
label0:
        {
            chararraybuffer.append(s);
            chararraybuffer.append("=");
            if (s1 != null)
            {
                if (i <= 0)
                {
                    break label0;
                }
                chararraybuffer.append('"');
                chararraybuffer.append(s1);
                chararraybuffer.append('"');
            }
            return;
        }
        chararraybuffer.append(s1);
    }

    public int getVersion()
    {
        return 1;
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
        } else
        {
            return parse(header.getElements(), cookieorigin);
        }
    }

    public String toString()
    {
        return "rfc2109";
    }

    public void validate(Cookie cookie, CookieOrigin cookieorigin)
    {
        if (cookie == null)
        {
            throw new IllegalArgumentException("Cookie may not be null");
        }
        String s = cookie.getName();
        if (s.indexOf(' ') != -1)
        {
            throw new CookieRestrictionViolationException("Cookie name may not contain blanks");
        }
        if (s.startsWith("$"))
        {
            throw new CookieRestrictionViolationException("Cookie name may not start with $");
        } else
        {
            super.validate(cookie, cookieorigin);
            return;
        }
    }

}
