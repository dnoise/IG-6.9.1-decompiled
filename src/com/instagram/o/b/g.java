// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.o.b;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;

// Referenced classes of package com.instagram.o.b:
//            f

public final class g
{

    public static f a(l l1)
    {
        f f1 = new f();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            f1 = null;
        } else
        {
            while (l1.nextToken() != r.c) 
            {
                String s = l1.getCurrentName();
                l1.nextToken();
                a(f1, s, l1);
                l1.skipChildren();
            }
        }
        return f1;
    }

    private static boolean a(f f1, String s, l l1)
    {
        if ("new_version".equals(s))
        {
            f1.a = l1.getValueAsInt();
            return true;
        }
        if ("new_version_url".equals(s))
        {
            String s1;
            if (l1.getCurrentToken() == r.m)
            {
                s1 = null;
            } else
            {
                s1 = l1.getText();
            }
            f1.c = s1;
            return true;
        }
        if ("min_version".equals(s))
        {
            f1.b = l1.getValueAsInt();
            return true;
        } else
        {
            return false;
        }
    }
}
