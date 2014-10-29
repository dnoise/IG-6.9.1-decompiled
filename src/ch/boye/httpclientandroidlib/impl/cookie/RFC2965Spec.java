// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.cookie;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HeaderElement;
import ch.boye.httpclientandroidlib.NameValuePair;
import ch.boye.httpclientandroidlib.cookie.ClientCookie;
import ch.boye.httpclientandroidlib.cookie.Cookie;
import ch.boye.httpclientandroidlib.cookie.CookieAttributeHandler;
import ch.boye.httpclientandroidlib.cookie.CookieOrigin;
import ch.boye.httpclientandroidlib.cookie.MalformedCookieException;
import ch.boye.httpclientandroidlib.message.BufferedHeader;
import ch.boye.httpclientandroidlib.util.CharArrayBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.cookie:
//            RFC2109Spec, RFC2965DomainAttributeHandler, RFC2965PortAttributeHandler, RFC2965CommentUrlAttributeHandler, 
//            RFC2965DiscardAttributeHandler, RFC2965VersionAttributeHandler, BasicClientCookie2

public class RFC2965Spec extends RFC2109Spec
{

    public RFC2965Spec()
    {
        this(null, false);
    }

    public RFC2965Spec(String as[], boolean flag)
    {
        super(as, flag);
        registerAttribHandler("domain", new RFC2965DomainAttributeHandler());
        registerAttribHandler("port", new RFC2965PortAttributeHandler());
        registerAttribHandler("commenturl", new RFC2965CommentUrlAttributeHandler());
        registerAttribHandler("discard", new RFC2965DiscardAttributeHandler());
        registerAttribHandler("version", new RFC2965VersionAttributeHandler());
    }

    private static CookieOrigin adjustEffectiveHost(CookieOrigin cookieorigin)
    {
        String s;
        int i;
        s = cookieorigin.getHost();
        i = 0;
_L4:
        boolean flag;
        char c;
        if (i >= s.length())
        {
            break MISSING_BLOCK_LABEL_91;
        }
        c = s.charAt(i);
        flag = false;
        if (c == '.') goto _L2; else goto _L1
_L1:
        flag = false;
        if (c != ':') goto _L3; else goto _L2
_L2:
        if (flag)
        {
            cookieorigin = new CookieOrigin((new StringBuilder()).append(s).append(".local").toString(), cookieorigin.getPort(), cookieorigin.getPath(), cookieorigin.isSecure());
        }
        return cookieorigin;
_L3:
        i++;
          goto _L4
        flag = true;
          goto _L2
    }

    private List createCookies(HeaderElement aheaderelement[], CookieOrigin cookieorigin)
    {
        ArrayList arraylist = new ArrayList(aheaderelement.length);
        int i = aheaderelement.length;
        for (int j = 0; j < i; j++)
        {
            HeaderElement headerelement = aheaderelement[j];
            String s = headerelement.getName();
            String s1 = headerelement.getValue();
            if (s == null || s.length() == 0)
            {
                throw new MalformedCookieException("Cookie name may not be empty");
            }
            BasicClientCookie2 basicclientcookie2 = new BasicClientCookie2(s, s1);
            basicclientcookie2.setPath(getDefaultPath(cookieorigin));
            basicclientcookie2.setDomain(getDefaultDomain(cookieorigin));
            int ai[] = new int[1];
            ai[0] = cookieorigin.getPort();
            basicclientcookie2.setPorts(ai);
            NameValuePair anamevaluepair[] = headerelement.getParameters();
            HashMap hashmap = new HashMap(anamevaluepair.length);
            for (int k = -1 + anamevaluepair.length; k >= 0; k--)
            {
                NameValuePair namevaluepair1 = anamevaluepair[k];
                hashmap.put(namevaluepair1.getName().toLowerCase(Locale.ENGLISH), namevaluepair1);
            }

            Iterator iterator = hashmap.entrySet().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                NameValuePair namevaluepair = (NameValuePair)((java.util.Map.Entry)iterator.next()).getValue();
                String s2 = namevaluepair.getName().toLowerCase(Locale.ENGLISH);
                basicclientcookie2.setAttribute(s2, namevaluepair.getValue());
                CookieAttributeHandler cookieattributehandler = findAttribHandler(s2);
                if (cookieattributehandler != null)
                {
                    cookieattributehandler.parse(basicclientcookie2, namevaluepair.getValue());
                }
            } while (true);
            arraylist.add(basicclientcookie2);
        }

        return arraylist;
    }

    protected void formatCookieAsVer(CharArrayBuffer chararraybuffer, Cookie cookie, int i)
    {
        super.formatCookieAsVer(chararraybuffer, cookie, i);
        if (cookie instanceof ClientCookie)
        {
            String s = ((ClientCookie)cookie).getAttribute("port");
            if (s != null)
            {
                chararraybuffer.append("; $Port");
                chararraybuffer.append("=\"");
                if (s.trim().length() > 0)
                {
                    int ai[] = cookie.getPorts();
                    if (ai != null)
                    {
                        int j = 0;
                        for (int k = ai.length; j < k; j++)
                        {
                            if (j > 0)
                            {
                                chararraybuffer.append(",");
                            }
                            chararraybuffer.append(Integer.toString(ai[j]));
                        }

                    }
                }
                chararraybuffer.append("\"");
            }
        }
    }

    public int getVersion()
    {
        return 1;
    }

    public Header getVersionHeader()
    {
        CharArrayBuffer chararraybuffer = new CharArrayBuffer(40);
        chararraybuffer.append("Cookie2");
        chararraybuffer.append(": ");
        chararraybuffer.append("$Version=");
        chararraybuffer.append(Integer.toString(getVersion()));
        return new BufferedHeader(chararraybuffer);
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
        } else
        {
            return super.match(cookie, adjustEffectiveHost(cookieorigin));
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
        if (!header.getName().equalsIgnoreCase("Set-Cookie2"))
        {
            throw new MalformedCookieException((new StringBuilder("Unrecognized cookie header '")).append(header.toString()).append("'").toString());
        } else
        {
            CookieOrigin cookieorigin1 = adjustEffectiveHost(cookieorigin);
            return createCookies(header.getElements(), cookieorigin1);
        }
    }

    protected List parse(HeaderElement aheaderelement[], CookieOrigin cookieorigin)
    {
        return createCookies(aheaderelement, adjustEffectiveHost(cookieorigin));
    }

    public String toString()
    {
        return "rfc2965";
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
        } else
        {
            super.validate(cookie, adjustEffectiveHost(cookieorigin));
            return;
        }
    }
}
