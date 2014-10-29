// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.cookie;

import java.io.Serializable;
import java.util.Comparator;

// Referenced classes of package ch.boye.httpclientandroidlib.cookie:
//            Cookie

public class CookieIdentityComparator
    implements Serializable, Comparator
{

    private static final long serialVersionUID = 0x3dfc6d99bbaa936cL;

    public CookieIdentityComparator()
    {
    }

    public int compare(Cookie cookie, Cookie cookie1)
    {
        int i = cookie.getName().compareTo(cookie1.getName());
        if (i == 0)
        {
            String s2 = cookie.getDomain();
            String s;
            String s1;
            String s3;
            if (s2 == null)
            {
                s2 = "";
            } else
            if (s2.indexOf('.') == -1)
            {
                s2 = (new StringBuilder()).append(s2).append(".local").toString();
            }
            s3 = cookie1.getDomain();
            if (s3 == null)
            {
                s3 = "";
            } else
            if (s3.indexOf('.') == -1)
            {
                s3 = (new StringBuilder()).append(s3).append(".local").toString();
            }
            i = s2.compareToIgnoreCase(s3);
        }
        if (i == 0)
        {
            s = cookie.getPath();
            if (s == null)
            {
                s = "/";
            }
            s1 = cookie1.getPath();
            if (s1 == null)
            {
                s1 = "/";
            }
            i = s.compareTo(s1);
        }
        return i;
    }

    public volatile int compare(Object obj, Object obj1)
    {
        return compare((Cookie)obj, (Cookie)obj1);
    }
}
