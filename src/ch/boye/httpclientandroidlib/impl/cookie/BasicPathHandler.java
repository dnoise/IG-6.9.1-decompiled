// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.cookie;

import ch.boye.httpclientandroidlib.cookie.Cookie;
import ch.boye.httpclientandroidlib.cookie.CookieAttributeHandler;
import ch.boye.httpclientandroidlib.cookie.CookieOrigin;
import ch.boye.httpclientandroidlib.cookie.CookieRestrictionViolationException;
import ch.boye.httpclientandroidlib.cookie.SetCookie;

public class BasicPathHandler
    implements CookieAttributeHandler
{

    public BasicPathHandler()
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
        String s = cookieorigin.getPath();
        String s1 = cookie.getPath();
        if (s1 == null)
        {
            s1 = "/";
        }
        if (s1.length() > 1 && s1.endsWith("/"))
        {
            s1 = s1.substring(0, -1 + s1.length());
        }
        boolean flag = s.startsWith(s1);
        if (flag && s.length() != s1.length() && !s1.endsWith("/"))
        {
            return s.charAt(s1.length()) == '/';
        } else
        {
            return flag;
        }
    }

    public void parse(SetCookie setcookie, String s)
    {
        if (setcookie == null)
        {
            throw new IllegalArgumentException("Cookie may not be null");
        }
        if (s == null || s.trim().length() == 0)
        {
            s = "/";
        }
        setcookie.setPath(s);
    }

    public void validate(Cookie cookie, CookieOrigin cookieorigin)
    {
        if (!match(cookie, cookieorigin))
        {
            throw new CookieRestrictionViolationException((new StringBuilder("Illegal path attribute \"")).append(cookie.getPath()).append("\". Path of origin: \"").append(cookieorigin.getPath()).append("\"").toString());
        } else
        {
            return;
        }
    }
}
