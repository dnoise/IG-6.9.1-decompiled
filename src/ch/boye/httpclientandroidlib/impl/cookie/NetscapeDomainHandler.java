// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.cookie;

import ch.boye.httpclientandroidlib.cookie.Cookie;
import ch.boye.httpclientandroidlib.cookie.CookieOrigin;
import ch.boye.httpclientandroidlib.cookie.CookieRestrictionViolationException;
import java.util.Locale;
import java.util.StringTokenizer;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.cookie:
//            BasicDomainHandler

public class NetscapeDomainHandler extends BasicDomainHandler
{

    public NetscapeDomainHandler()
    {
    }

    private static boolean isSpecialDomain(String s)
    {
        String s1 = s.toUpperCase(Locale.ENGLISH);
        return s1.endsWith(".COM") || s1.endsWith(".EDU") || s1.endsWith(".NET") || s1.endsWith(".GOV") || s1.endsWith(".MIL") || s1.endsWith(".ORG") || s1.endsWith(".INT");
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
        String s = cookieorigin.getHost();
        String s1 = cookie.getDomain();
        if (s1 == null)
        {
            return false;
        } else
        {
            return s.endsWith(s1);
        }
    }

    public void validate(Cookie cookie, CookieOrigin cookieorigin)
    {
        super.validate(cookie, cookieorigin);
        String s = cookieorigin.getHost();
        String s1 = cookie.getDomain();
        if (s.contains("."))
        {
            int i = (new StringTokenizer(s1, ".")).countTokens();
            if (isSpecialDomain(s1))
            {
                if (i < 2)
                {
                    throw new CookieRestrictionViolationException((new StringBuilder("Domain attribute \"")).append(s1).append("\" violates the Netscape cookie specification for special domains").toString());
                }
            } else
            if (i < 3)
            {
                throw new CookieRestrictionViolationException((new StringBuilder("Domain attribute \"")).append(s1).append("\" violates the Netscape cookie specification").toString());
            }
        }
    }
}
