// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.b;

import java.util.ArrayList;
import java.util.Comparator;

// Referenced classes of package com.instagram.android.maps.b:
//            f, b

final class e
    implements Comparator
{

    final b a;

    e(b b)
    {
        a = b;
        super();
    }

    private static int a(f f1, f f2)
    {
        if (f1.c().size() == f2.c().size())
        {
            return 0;
        }
        return f1.c().size() <= f2.c().size() ? 1 : -1;
    }

    public final int compare(Object obj, Object obj1)
    {
        return a((f)obj, (f)obj1);
    }
}
