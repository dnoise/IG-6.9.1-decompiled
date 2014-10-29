// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.d;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;

// Referenced classes of package com.instagram.j.d:
//            h

public final class j
{

    public static h a(l l1)
    {
        h h1 = new h();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            return null;
        }
        for (; l1.nextToken() != r.c; l1.skipChildren())
        {
            String s = l1.getCurrentName();
            l1.nextToken();
            a(h1, s, l1);
        }

        return h1.e();
    }

    private static boolean a(h h1, String s, l l1)
    {
        if ("type".equals(s))
        {
            r r3 = l1.getCurrentToken();
            r r4 = r.m;
            String s2 = null;
            if (r3 != r4)
            {
                s2 = l1.getText();
            }
            h1.a = s2;
            return true;
        }
        if ("id".equals(s))
        {
            r r1 = l1.getCurrentToken();
            r r2 = r.m;
            String s1 = null;
            if (r1 != r2)
            {
                s1 = l1.getText();
            }
            h1.d = s1;
            return true;
        }
        if ("start".equals(s))
        {
            h1.b = l1.getValueAsInt();
            return true;
        }
        if ("end".equals(s))
        {
            h1.c = l1.getValueAsInt();
            return true;
        } else
        {
            return false;
        }
    }
}
