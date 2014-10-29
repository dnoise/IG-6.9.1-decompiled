// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c.a;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.instagram.feed.a.j;

// Referenced classes of package com.instagram.android.c.a:
//            o

public final class p
{

    public static o a(l l1)
    {
        o o1 = new o();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            return null;
        }
        for (; l1.nextToken() != r.c; l1.skipChildren())
        {
            String s = l1.getCurrentName();
            l1.nextToken();
            a(o1, s, l1);
        }

        return o1.a();
    }

    private static boolean a(o o1, String s, l l1)
    {
        if ("requires_review".equals(s))
        {
            o1.a = Boolean.valueOf(l1.getValueAsBoolean());
            return true;
        } else
        {
            return j.a(o1, s, l1);
        }
    }
}
