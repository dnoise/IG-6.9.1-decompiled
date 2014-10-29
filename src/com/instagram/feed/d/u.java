// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.d;

import com.instagram.service.a.a;
import java.util.Set;

// Referenced classes of package com.instagram.feed.d:
//            l, o, v

public final class u
{

    public static void a(l l1)
    {
        int i;
        if (l1.r())
        {
            i = o.b;
        } else
        {
            i = com.instagram.feed.d.o.a;
        }
        a(l1, i);
    }

    public static void a(l l1, int i)
    {
        com.instagram.user.c.a a1 = com.instagram.service.a.a.a().b();
        if (l1.i != i)
        {
            l1.i = i;
            int j;
            if (l1.h != null)
            {
                if (l1.r())
                {
                    l1.h.add(a1);
                } else
                {
                    l1.h.remove(a1);
                }
            }
            if (i == com.instagram.feed.d.o.a)
            {
                j = 1 + l1.g;
            } else
            {
                j = -1 + l1.g;
            }
            l1.g = j;
            if (l1.ak())
            {
                com.instagram.feed.d.v.a(l1);
            }
            l1.a(true);
        }
    }
}
