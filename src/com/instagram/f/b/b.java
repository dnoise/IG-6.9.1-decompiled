// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.f.b;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;

// Referenced classes of package com.instagram.f.b:
//            a

public final class b
{

    public static a a(l l1)
    {
        a a1 = new a();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            a1 = null;
        } else
        {
            while (l1.nextToken() != r.c) 
            {
                String s = l1.getCurrentName();
                l1.nextToken();
                a(a1, s, l1);
                l1.skipChildren();
            }
        }
        return a1;
    }

    private static boolean a(a a1, String s, l l1)
    {
        if ("ts".equals(s))
        {
            a1.b = l1.getValueAsLong();
            return true;
        }
        if ("count".equals(s))
        {
            a1.a = l1.getValueAsInt();
            return true;
        } else
        {
            return false;
        }
    }
}
