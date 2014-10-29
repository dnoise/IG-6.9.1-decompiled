// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.k.b;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.android.k.b:
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
        if ("users".equals(s))
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
                    com.instagram.user.c.a a1 = com.instagram.user.c.l.a(l1);
                    if (a1 != null)
                    {
                        arraylist.add(a1);
                    }
                } while (true);
            }
            e1.a = arraylist;
            return true;
        }
        if ("next_max_id".equals(s))
        {
            e1.b = l1.getValueAsLong();
            return true;
        } else
        {
            return com.instagram.api.k.a.f.a(e1, s, l1);
        }
    }
}
