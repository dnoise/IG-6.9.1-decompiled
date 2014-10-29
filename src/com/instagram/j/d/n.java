// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.d;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;

// Referenced classes of package com.instagram.j.d:
//            c, m

public final class n
{

    public static c a(l l1)
    {
        c c1 = new c();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            return null;
        }
        for (; l1.nextToken() != r.c; l1.skipChildren())
        {
            String s = l1.getCurrentName();
            l1.nextToken();
            a(c1, s, l1);
        }

        return c1.l();
    }

    private static boolean a(c c1, String s, l l1)
    {
        if ("type".equals(s))
        {
            c1.a = l1.getValueAsInt();
            return true;
        }
        if ("args".equals(s))
        {
            c1.b = m.a(l1);
            return true;
        } else
        {
            return false;
        }
    }
}
