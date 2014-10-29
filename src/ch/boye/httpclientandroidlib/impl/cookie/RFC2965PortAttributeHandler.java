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
import java.util.StringTokenizer;

public class RFC2965PortAttributeHandler
    implements CookieAttributeHandler
{

    public RFC2965PortAttributeHandler()
    {
    }

    private static int[] parsePortAttribute(String s)
    {
        StringTokenizer stringtokenizer = new StringTokenizer(s, ",");
        int ai[] = new int[stringtokenizer.countTokens()];
        int i = 0;
        do
        {
            try
            {
                if (!stringtokenizer.hasMoreTokens())
                {
                    break;
                }
                ai[i] = Integer.parseInt(stringtokenizer.nextToken().trim());
                if (ai[i] < 0)
                {
                    throw new MalformedCookieException("Invalid Port attribute.");
                }
            }
            catch (NumberFormatException numberformatexception)
            {
                throw new MalformedCookieException((new StringBuilder("Invalid Port attribute: ")).append(numberformatexception.getMessage()).toString());
            }
            i++;
        } while (true);
        return ai;
    }

    private static boolean portMatch(int i, int ai[])
    {
        int j = ai.length;
        int k = 0;
        do
        {
label0:
            {
                boolean flag = false;
                if (k < j)
                {
                    if (i != ai[k])
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            k++;
        } while (true);
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
        int i = cookieorigin.getPort();
        if ((cookie instanceof ClientCookie) && ((ClientCookie)cookie).containsAttribute("port"))
        {
            if (cookie.getPorts() == null)
            {
                return false;
            }
            if (!portMatch(i, cookie.getPorts()))
            {
                return false;
            }
        }
        return true;
    }

    public void parse(SetCookie setcookie, String s)
    {
        if (setcookie == null)
        {
            throw new IllegalArgumentException("Cookie may not be null");
        }
        if (setcookie instanceof SetCookie2)
        {
            SetCookie2 setcookie2 = (SetCookie2)setcookie;
            if (s != null && s.trim().length() > 0)
            {
                setcookie2.setPorts(parsePortAttribute(s));
            }
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
        int i = cookieorigin.getPort();
        if ((cookie instanceof ClientCookie) && ((ClientCookie)cookie).containsAttribute("port") && !portMatch(i, cookie.getPorts()))
        {
            throw new CookieRestrictionViolationException("Port attribute violates RFC 2965: Request port not found in cookie's port list.");
        } else
        {
            return;
        }
    }
}
