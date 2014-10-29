// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.cookie;

import ch.boye.httpclientandroidlib.cookie.Cookie;
import ch.boye.httpclientandroidlib.cookie.CookieAttributeHandler;
import ch.boye.httpclientandroidlib.cookie.CookieOrigin;
import ch.boye.httpclientandroidlib.cookie.CookieRestrictionViolationException;
import ch.boye.httpclientandroidlib.cookie.MalformedCookieException;
import ch.boye.httpclientandroidlib.cookie.SetCookie;

public class BasicDomainHandler
    implements CookieAttributeHandler
{

    public BasicDomainHandler()
    {
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
        }
        if (s.equals(s1))
        {
            return true;
        }
        if (!s1.startsWith("."))
        {
            s1 = (new StringBuilder(".")).append(s1).toString();
        }
        return s.endsWith(s1) || s.equals(s1.substring(1));
    }

    public void parse(SetCookie setcookie, String s)
    {
        if (setcookie == null)
        {
            throw new IllegalArgumentException("Cookie may not be null");
        }
        if (s == null)
        {
            throw new MalformedCookieException("Missing value for domain attribute");
        }
        if (s.trim().length() == 0)
        {
            throw new MalformedCookieException("Blank value for domain attribute");
        } else
        {
            setcookie.setDomain(s);
            return;
        }
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
        String s = cookieorigin.getHost();
        String s1 = cookie.getDomain();
        if (s1 == null)
        {
            throw new CookieRestrictionViolationException("Cookie domain may not be null");
        }
        if (s.contains("."))
        {
            if (!s.endsWith(s1))
            {
                if (s1.startsWith("."))
                {
                    s1 = s1.substring(1, s1.length());
                }
                if (!s.equals(s1))
                {
                    throw new CookieRestrictionViolationException((new StringBuilder("Illegal domain attribute \"")).append(s1).append("\". Domain of origin: \"").append(s).append("\"").toString());
                }
            }
        } else
        if (!s.equals(s1))
        {
            throw new CookieRestrictionViolationException((new StringBuilder("Illegal domain attribute \"")).append(s1).append("\". Domain of origin: \"").append(s).append("\"").toString());
        }
    }
}
