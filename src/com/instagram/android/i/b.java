// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.i;

import com.instagram.common.analytics.d;
import com.instagram.common.analytics.g;
import com.instagram.user.c.a;
import com.instagram.user.c.c;
import com.instagram.user.c.i;
import com.instagram.user.c.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.android.i:
//            a

public final class b
{

    public static List a(a a1)
    {
        ArrayList arraylist;
        if (a1 == null)
        {
            return null;
        }
        arraylist = new ArrayList();
        if (a1.F() == null) goto _L2; else goto _L1
_L1:
        Iterator iterator;
        int k;
        iterator = a1.F().iterator();
        k = 0;
_L3:
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        a a2 = (a)iterator.next();
        a a3 = j.a().a(a2.g());
        int l;
        if (a3 != null)
        {
            if (a3.t() == c.a)
            {
                a3.a(c.c);
                a2 = a3;
            } else
            {
                a2 = a3;
            }
        } else
        {
            a2.a(c.c);
            j.a().a(a2.g(), a2);
        }
        if (a2.t() != c.c)
        {
            break MISSING_BLOCK_LABEL_162;
        }
        arraylist.add(a2);
        l = k + 1;
        if (l >= 3)
        {
            break; /* Loop/switch isn't completed */
        }
_L4:
        k = l;
        if (true) goto _L3; else goto _L2
_L2:
        return arraylist;
        l = k;
          goto _L4
    }

    public static void a(g g, com.instagram.android.i.a a1, String s, String s1, String s2)
    {
        com.instagram.common.analytics.a.a().a((new com.instagram.common.analytics.b(a1.a(), g)).a("uid_based_on", s).a("uid", s1).a("view", s2));
    }
}
