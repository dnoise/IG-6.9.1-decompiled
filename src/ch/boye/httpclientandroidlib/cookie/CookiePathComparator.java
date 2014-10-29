// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.cookie;

import java.io.Serializable;
import java.util.Comparator;

// Referenced classes of package ch.boye.httpclientandroidlib.cookie:
//            Cookie

public class CookiePathComparator
    implements Serializable, Comparator
{

    private static final long serialVersionUID = 0x68695b9a07ff953aL;

    public CookiePathComparator()
    {
    }

    private String normalizePath(Cookie cookie)
    {
        String s = cookie.getPath();
        if (s == null)
        {
            s = "/";
        }
        if (!s.endsWith("/"))
        {
            s = (new StringBuilder()).append(s).append('/').toString();
        }
        return s;
    }

    public int compare(Cookie cookie, Cookie cookie1)
    {
        String s = normalizePath(cookie);
        String s1 = normalizePath(cookie1);
        if (!s.equals(s1))
        {
            if (s.startsWith(s1))
            {
                return -1;
            }
            if (s1.startsWith(s))
            {
                return 1;
            }
        }
        return 0;
    }

    public volatile int compare(Object obj, Object obj1)
    {
        return compare((Cookie)obj, (Cookie)obj1);
    }
}
