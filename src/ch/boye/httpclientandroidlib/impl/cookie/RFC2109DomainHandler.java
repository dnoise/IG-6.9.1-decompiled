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
import java.util.Locale;

public class RFC2109DomainHandler
    implements CookieAttributeHandler
{

    public RFC2109DomainHandler()
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
        for (String s1 = cookie.getDomain(); s1 == null || !s.equals(s1) && (!s1.startsWith(".") || !s.endsWith(s1));)
        {
            return false;
        }

        return true;
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
        if (!s1.equals(s))
        {
            if (s1.indexOf('.') == -1)
            {
                throw new CookieRestrictionViolationException((new StringBuilder("Domain attribute \"")).append(s1).append("\" does not match the host \"").append(s).append("\"").toString());
            }
            if (!s1.startsWith("."))
            {
                throw new CookieRestrictionViolationException((new StringBuilder("Domain attribute \"")).append(s1).append("\" violates RFC 2109: domain must start with a dot").toString());
            }
            int i = s1.indexOf('.', 1);
            if (i < 0 || i == -1 + s1.length())
            {
                throw new CookieRestrictionViolationException((new StringBuilder("Domain attribute \"")).append(s1).append("\" violates RFC 2109: domain must contain an embedded dot").toString());
            }
            String s2 = s.toLowerCase(Locale.ENGLISH);
            if (!s2.endsWith(s1))
            {
                throw new CookieRestrictionViolationException((new StringBuilder("Illegal domain attribute \"")).append(s1).append("\". Domain of origin: \"").append(s2).append("\"").toString());
            }
            if (s2.substring(0, s2.length() - s1.length()).indexOf('.') != -1)
            {
                throw new CookieRestrictionViolationException((new StringBuilder("Domain attribute \"")).append(s1).append("\" violates RFC 2109: host minus domain may not contain any dots").toString());
            }
        }
    }
}
