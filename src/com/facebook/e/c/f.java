// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.e.c;

import java.util.Comparator;

// Referenced classes of package com.facebook.e.c:
//            g

final class f
    implements Comparator
{

    f()
    {
    }

    private static int a(g g1, g g2)
    {
        long l = g1.f() - g1.e();
        long l1 = g2.f() - g2.e();
        if (l < l1)
        {
            return -1;
        }
        return l <= l1 ? 0 : 1;
    }

    public final int compare(Object obj, Object obj1)
    {
        return a((g)obj, (g)obj1);
    }
}
