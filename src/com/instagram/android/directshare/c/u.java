// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.c;

import com.instagram.feed.d.l;
import java.util.Comparator;

// Referenced classes of package com.instagram.android.directshare.c:
//            t

final class u
    implements Comparator
{

    final t a;

    u(t t)
    {
        a = t;
        super();
    }

    private static int a(l l1, l l2)
    {
        Long long1 = l1.l();
        return l2.l().compareTo(long1);
    }

    public final int compare(Object obj, Object obj1)
    {
        return a((l)obj, (l)obj1);
    }
}
