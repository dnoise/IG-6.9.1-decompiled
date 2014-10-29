// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.f.a.a;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.instagram.f.b.b;

// Referenced classes of package com.instagram.f.a.a:
//            e

public final class f
{

    public static e a(l l1)
    {
        e e1 = new e();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            e1 = null;
        } else
        {
            while (l1.nextToken() != r.c) 
            {
                String s = l1.getCurrentName();
                l1.nextToken();
                a(e1, s, l1);
                l1.skipChildren();
            }
        }
        return e1;
    }

    private static boolean a(e e1, String s, l l1)
    {
        if ("new_shares_info".equals(s))
        {
            e1.a = b.a(l1);
            return true;
        } else
        {
            return com.instagram.api.k.a.f.a(e1, s, l1);
        }
    }
}
