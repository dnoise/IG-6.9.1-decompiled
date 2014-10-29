// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.cookie;

import ch.boye.httpclientandroidlib.cookie.MalformedCookieException;
import ch.boye.httpclientandroidlib.cookie.SetCookie;
import java.util.Date;

// Referenced classes of package ch.boye.httpclientandroidlib.impl.cookie:
//            AbstractCookieAttributeHandler

public class BasicMaxAgeHandler extends AbstractCookieAttributeHandler
{

    public BasicMaxAgeHandler()
    {
    }

    public void parse(SetCookie setcookie, String s)
    {
        if (setcookie == null)
        {
            throw new IllegalArgumentException("Cookie may not be null");
        }
        if (s == null)
        {
            throw new MalformedCookieException("Missing value for max-age attribute");
        }
        int i;
        try
        {
            i = Integer.parseInt(s);
        }
        catch (NumberFormatException numberformatexception)
        {
            throw new MalformedCookieException((new StringBuilder("Invalid max-age attribute: ")).append(s).toString());
        }
        if (i < 0)
        {
            throw new MalformedCookieException((new StringBuilder("Negative max-age attribute: ")).append(s).toString());
        } else
        {
            setcookie.setExpiryDate(new Date(System.currentTimeMillis() + 1000L * (long)i));
            return;
        }
    }
}
