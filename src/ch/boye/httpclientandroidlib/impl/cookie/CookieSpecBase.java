// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.cookie;

import ch.boye.httpclientandroidlib.HeaderElement;
import ch.boye.httpclientandroidlib.NameValuePair;
import ch.boye.httpclientandroidlib.cookie.Cookie;
import ch.boye.httpclientandroidlib.cookie.CookieAttributeHandler;
import ch.boye.httpclientandroidlib.cookie.CookieOrigin;
import ch.boye.httpclientandroidlib.cookie.MalformedCookieException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.cookie:
//            AbstractCookieSpec, BasicClientCookie

public abstract class CookieSpecBase extends AbstractCookieSpec
{

    public CookieSpecBase()
    {
    }

    protected static String getDefaultDomain(CookieOrigin cookieorigin)
    {
        return cookieorigin.getHost();
    }

    protected static String getDefaultPath(CookieOrigin cookieorigin)
    {
        String s = cookieorigin.getPath();
        int i = s.lastIndexOf('/');
        if (i >= 0)
        {
            if (i == 0)
            {
                i = 1;
            }
            return s.substring(0, i);
        } else
        {
            return s;
        }
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
        for (Iterator iterator = getAttribHandlers().iterator(); iterator.hasNext();)
        {
            if (!((CookieAttributeHandler)iterator.next()).match(cookie, cookieorigin))
            {
                return false;
            }
        }

        return true;
    }

    protected List parse(HeaderElement aheaderelement[], CookieOrigin cookieorigin)
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
            BasicClientCookie basicclientcookie = new BasicClientCookie(s, s1);
            basicclientcookie.setPath(getDefaultPath(cookieorigin));
            basicclientcookie.setDomain(getDefaultDomain(cookieorigin));
            NameValuePair anamevaluepair[] = headerelement.getParameters();
            for (int k = -1 + anamevaluepair.length; k >= 0; k--)
            {
                NameValuePair namevaluepair = anamevaluepair[k];
                String s2 = namevaluepair.getName().toLowerCase(Locale.ENGLISH);
                basicclientcookie.setAttribute(s2, namevaluepair.getValue());
                CookieAttributeHandler cookieattributehandler = findAttribHandler(s2);
                if (cookieattributehandler != null)
                {
                    cookieattributehandler.parse(basicclientcookie, namevaluepair.getValue());
                }
            }

            arraylist.add(basicclientcookie);
        }

        return arraylist;
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
        for (Iterator iterator = getAttribHandlers().iterator(); iterator.hasNext(); ((CookieAttributeHandler)iterator.next()).validate(cookie, cookieorigin)) { }
    }
}
