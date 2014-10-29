// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.r;

import java.util.Iterator;

// Referenced classes of package com.instagram.common.r:
//            c, a

final class b
    implements Iterable
{

    final String a;
    final a b;

    b(a a1, String s)
    {
        b = a1;
        a = s;
        super();
    }

    public final Iterator iterator()
    {
        return new c(a);
    }
}
