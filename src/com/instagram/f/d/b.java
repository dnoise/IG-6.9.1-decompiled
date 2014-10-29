// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.f.d;

import com.instagram.user.c.a;
import java.util.Comparator;

// Referenced classes of package com.instagram.f.d:
//            a

final class b
    implements Comparator
{

    final com.instagram.f.d.a a;

    b(com.instagram.f.d.a a1)
    {
        a = a1;
        super();
    }

    private static int a(a a1, a a2)
    {
        return a1.b().compareToIgnoreCase(a2.b());
    }

    public final int compare(Object obj, Object obj1)
    {
        return a((a)obj, (a)obj1);
    }
}
