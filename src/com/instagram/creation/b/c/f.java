// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.c;

import com.instagram.creation.b.c.a.d;
import java.util.Comparator;

final class f
    implements Comparator
{

    f()
    {
    }

    private static int a(d d1, d d2)
    {
        return d1.a - d2.a;
    }

    public final int compare(Object obj, Object obj1)
    {
        return a((d)obj, (d)obj1);
    }
}
