// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.e;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.instagram.api.k.a.f;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.user.e:
//            b

public final class c
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

        return b1.c();
    }

    private static boolean a(b b1, String s, l l1)
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
            b1.a = arraylist;
            return true;
        } else
        {
            return f.a(b1, s, l1);
        }
    }
}
