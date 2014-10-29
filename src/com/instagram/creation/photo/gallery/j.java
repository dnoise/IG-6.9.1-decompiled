// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.gallery;


// Referenced classes of package com.instagram.creation.photo.gallery:
//            d, c

final class j
{

    int a;
    long b;
    c c;
    private int d;
    private final d e;

    public j(d d1, int i)
    {
        d = -1;
        e = d1;
        a = i;
    }

    public final boolean a()
    {
        if (d >= -1 + e.b())
        {
            return false;
        } else
        {
            d d1 = e;
            int i = 1 + d;
            d = i;
            c = d1.a(i);
            b = c.b();
            return true;
        }
    }
}
