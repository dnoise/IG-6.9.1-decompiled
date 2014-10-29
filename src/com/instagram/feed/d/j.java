// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.d;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.instagram.common.y.e;

// Referenced classes of package com.instagram.feed.d:
//            b, d

public final class j
{

    public static b a(l l1)
    {
        b b1 = new b();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            return null;
        }
        for (; l1.nextToken() != r.c; l1.skipChildren())
        {
            String s = l1.getCurrentName();
            l1.nextToken();
            a(b1, s, l1);
        }

        return b1.a();
    }

    private static boolean a(b b1, String s, l l1)
    {
        if ("type".equals(s))
        {
            b1.f = d.a(l1.getValueAsInt());
            return true;
        }
        if ("pk".equals(s) || "id".equals(s))
        {
            r r1 = l1.getCurrentToken();
            r r2 = r.m;
            String s1 = null;
            if (r1 != r2)
            {
                s1 = l1.getText();
            }
            b1.a = s1;
            return true;
        }
        if ("text".equals(s))
        {
            r r5 = l1.getCurrentToken();
            r r6 = r.m;
            String s3 = null;
            if (r5 != r6)
            {
                s3 = l1.getText();
            }
            b1.d = e.d(s3);
            return true;
        }
        if ("media_id".equals(s))
        {
            r r3 = l1.getCurrentToken();
            r r4 = r.m;
            String s2 = null;
            if (r3 != r4)
            {
                s2 = l1.getText();
            }
            b1.c = s2;
            return true;
        }
        if ("created_at".equals(s))
        {
            b1.b = b.a(l1);
            return true;
        }
        if ("user".equals(s))
        {
            b1.e = com.instagram.user.c.l.a(l1);
            return true;
        } else
        {
            return false;
        }
    }
}
