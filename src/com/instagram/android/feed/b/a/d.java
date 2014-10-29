// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.b.a;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.instagram.api.k.a.f;

// Referenced classes of package com.instagram.android.feed.b.a:
//            c

public final class d
{

    public static c a(l l1)
    {
        c c1 = new c();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            c1 = null;
        } else
        {
            while (l1.nextToken() != r.c) 
            {
                String s = l1.getCurrentName();
                l1.nextToken();
                a(c1, s, l1);
                l1.skipChildren();
            }
        }
        return c1;
    }

    private static boolean a(c c1, String s, l l1)
    {
        if ("media_id".equals(s))
        {
            r r3 = l1.getCurrentToken();
            r r4 = r.m;
            String s2 = null;
            if (r3 != r4)
            {
                s2 = l1.getText();
            }
            c1.a = s2;
            return true;
        }
        if ("can_view".equals(s))
        {
            c1.c = l1.getValueAsBoolean();
            return true;
        }
        if ("author_id".equals(s))
        {
            r r1 = l1.getCurrentToken();
            r r2 = r.m;
            String s1 = null;
            if (r1 != r2)
            {
                s1 = l1.getText();
            }
            c1.b = s1;
            return true;
        } else
        {
            return f.a(c1, s, l1);
        }
    }
}
