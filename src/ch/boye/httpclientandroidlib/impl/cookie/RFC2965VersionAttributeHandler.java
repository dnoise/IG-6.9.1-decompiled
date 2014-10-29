// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.cookie;

import ch.boye.httpclientandroidlib.cookie.ClientCookie;
import ch.boye.httpclientandroidlib.cookie.Cookie;
import ch.boye.httpclientandroidlib.cookie.CookieAttributeHandler;
import ch.boye.httpclientandroidlib.cookie.CookieOrigin;
import ch.boye.httpclientandroidlib.cookie.CookieRestrictionViolationException;
import ch.boye.httpclientandroidlib.cookie.MalformedCookieException;
import ch.boye.httpclientandroidlib.cookie.SetCookie;
import ch.boye.httpclientandroidlib.cookie.SetCookie2;

public class RFC2965VersionAttributeHandler
    implements CookieAttributeHandler
{

    public RFC2965VersionAttributeHandler()
    {
    }

    public boolean match(Cookie cookie, CookieOrigin cookieorigin)
    {
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
            throw new MalformedCookieException("Missing value for version attribute");
        }
        int j = Integer.parseInt(s);
        int i = j;
_L1:
        NumberFormatException numberformatexception;
        if (i < 0)
        {
            throw new MalformedCookieException("Invalid cookie version.");
        } else
        {
            setcookie.setVersion(i);
            return;
        }
        numberformatexception;
        i = -1;
          goto _L1
    }

    public void validate(Cookie cookie, CookieOrigin cookieorigin)
    {
        if (cookie == null)
        {
            throw new IllegalArgumentException("Cookie may not be null");
        }
        if ((cookie instanceof SetCookie2) && (cookie instanceof ClientCookie) && !((ClientCookie)cookie).containsAttribute("version"))
        {
            throw new CookieRestrictionViolationException("Violates RFC 2965. Version attribute is required.");
        } else
        {
            return;
        }
    }
}
