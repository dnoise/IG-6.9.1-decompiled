// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.f.a.b;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.instagram.api.k.a.f;
import com.instagram.f.b.b;
import com.instagram.realtimeclient.RealtimeSubscription__JsonHelper;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.f.a.b:
//            c, d

public final class e
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
        if ("new_shares_info".equals(s))
        {
            c1.b = b.a(l1);
            return true;
        }
        if ("patches".equals(s))
        {
            c1.d = d.a(l1);
            return true;
        }
        if ("max_id".equals(s))
        {
            r r3 = l1.getCurrentToken();
            r r4 = r.m;
            String s1 = null;
            if (r3 != r4)
            {
                s1 = l1.getText();
            }
            c1.a(s1);
            return true;
        }
        if ("subscription".equals(s))
        {
            c1.c = RealtimeSubscription__JsonHelper.parseFromJson(l1);
            return true;
        }
        if ("shares".equals(s))
        {
            r r1 = l1.getCurrentToken();
            r r2 = r.d;
            ArrayList arraylist = null;
            if (r1 == r2)
            {
                arraylist = new ArrayList();
                do
                {
                    if (l1.nextToken() == r.e)
                    {
                        break;
                    }
                    com.instagram.feed.d.l l2 = com.instagram.feed.d.l.a(l1, true);
                    if (l2 != null)
                    {
                        arraylist.add(l2);
                    }
                } while (true);
            }
            c1.a = arraylist;
            return true;
        } else
        {
            return f.a(c1, s, l1);
        }
    }
}
