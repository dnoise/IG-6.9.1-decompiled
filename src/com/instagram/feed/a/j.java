// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.a;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.instagram.api.k.a.f;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.feed.a:
//            i

public final class j
{

    public static i a(l l1)
    {
        i k = new i();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            return null;
        }
        for (; l1.nextToken() != r.c; l1.skipChildren())
        {
            String s = l1.getCurrentName();
            l1.nextToken();
            a(k, s, l1);
        }

        return k.c();
    }

    public static boolean a(i k, String s, l l1)
    {
        if ("more_available".equals(s))
        {
            k.s = Boolean.valueOf(l1.getValueAsBoolean());
            return true;
        }
        if ("items".equals(s))
        {
            r r3 = l1.getCurrentToken();
            r r4 = r.d;
            ArrayList arraylist = null;
            if (r3 == r4)
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
            k.e = arraylist;
            return true;
        }
        if ("next_max_id".equals(s))
        {
            r r1 = l1.getCurrentToken();
            r r2 = r.m;
            String s1 = null;
            if (r1 != r2)
            {
                s1 = l1.getText();
            }
            k.u = s1;
            return true;
        }
        if ("live_timestamp".equals(s))
        {
            k.v = Integer.valueOf(l1.getValueAsInt());
            return true;
        }
        if ("auto_load_more_enabled".equals(s))
        {
            k.t = l1.getValueAsBoolean();
            return true;
        } else
        {
            return f.a(k, s, l1);
        }
    }
}
