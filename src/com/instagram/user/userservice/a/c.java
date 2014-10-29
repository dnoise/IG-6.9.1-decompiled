// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.userservice.a;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.instagram.api.k.a.f;
import com.instagram.user.c.a;
import java.util.List;

// Referenced classes of package com.instagram.user.userservice.a:
//            b

public final class c
{

    public c()
    {
    }

    public static b a(l l1)
    {
        b b1 = new b();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            b1 = null;
        } else
        {
            while (l1.nextToken() != r.c) 
            {
                String s = l1.getCurrentName();
                l1.nextToken();
                a(b1, s, l1);
                l1.skipChildren();
            }
        }
        return b1;
    }

    private static boolean a(b b1, String s, l l1)
    {
        if ("users".equals(s))
        {
            if (l1.getCurrentToken() == r.b)
            {
                do
                {
                    if (l1.nextToken() == r.c)
                    {
                        break;
                    }
                    if (l1.nextToken() == r.d)
                    {
                        b1.a.add(com.instagram.user.c.a.b(l1));
                    }
                } while (true);
            }
            return true;
        }
        if ("expires".equals(s))
        {
            b1.b = 1000L * l1.getLongValue();
        }
        return f.a(b1, s, l1);
    }
}
