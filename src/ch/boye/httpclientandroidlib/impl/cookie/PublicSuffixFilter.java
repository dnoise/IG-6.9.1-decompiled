// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.cookie;

import ch.boye.httpclientandroidlib.client.utils.Punycode;
import ch.boye.httpclientandroidlib.cookie.Cookie;
import ch.boye.httpclientandroidlib.cookie.CookieAttributeHandler;
import ch.boye.httpclientandroidlib.cookie.CookieOrigin;
import ch.boye.httpclientandroidlib.cookie.SetCookie;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

public class PublicSuffixFilter
    implements CookieAttributeHandler
{

    private Set exceptions;
    private Set suffixes;
    private final CookieAttributeHandler wrapped;

    public PublicSuffixFilter(CookieAttributeHandler cookieattributehandler)
    {
        wrapped = cookieattributehandler;
    }

    private boolean isForPublicSuffix(Cookie cookie)
    {
        String s = cookie.getDomain();
        if (s.startsWith("."))
        {
            s = s.substring(1);
        }
        String s1 = Punycode.toUnicode(s);
        if (exceptions != null && exceptions.contains(s1))
        {
            return false;
        }
        if (suffixes == null)
        {
            return false;
        }
        do
        {
            if (suffixes.contains(s1))
            {
                return true;
            }
            if (s1.startsWith("*."))
            {
                s1 = s1.substring(2);
            }
            int i = s1.indexOf('.');
            if (i == -1)
            {
                break;
            }
            s1 = (new StringBuilder("*")).append(s1.substring(i)).toString();
        } while (s1.length() > 0);
        return false;
    }

    public boolean match(Cookie cookie, CookieOrigin cookieorigin)
    {
        if (isForPublicSuffix(cookie))
        {
            return false;
        } else
        {
            return wrapped.match(cookie, cookieorigin);
        }
    }

    public void parse(SetCookie setcookie, String s)
    {
        wrapped.parse(setcookie, s);
    }

    public void setExceptions(Collection collection)
    {
        exceptions = new HashSet(collection);
    }

    public void setPublicSuffixes(Collection collection)
    {
        suffixes = new HashSet(collection);
    }

    public void validate(Cookie cookie, CookieOrigin cookieorigin)
    {
        wrapped.validate(cookie, cookieorigin);
    }
}
