// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.b;

import java.util.Comparator;

// Referenced classes of package com.instagram.android.maps.b:
//            h, f

final class g
    implements Comparator
{

    final f a;

    g(f f)
    {
        a = f;
        super();
    }

    private static int a(h h1, h h2)
    {
        return h1.b(h2);
    }

    public final int compare(Object obj, Object obj1)
    {
        return a((h)obj, (h)obj1);
    }
}
