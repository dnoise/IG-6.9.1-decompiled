// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.gallery;

import java.util.Comparator;

// Referenced classes of package com.instagram.creation.photo.gallery:
//            j

final class i
    implements Comparator
{

    private i()
    {
    }

    i(byte byte0)
    {
        this();
    }

    private static int a(j j1, j j2)
    {
        if (j1.b != j2.b)
        {
            return j1.b >= j2.b ? -1 : 1;
        } else
        {
            return j1.a - j2.a;
        }
    }

    public final int compare(Object obj, Object obj1)
    {
        return a((j)obj, (j)obj1);
    }
}
