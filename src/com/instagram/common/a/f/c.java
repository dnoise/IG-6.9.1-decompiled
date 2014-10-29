// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.a.f;


// Referenced classes of package com.instagram.common.a.f:
//            j

final class c
{

    private final j a;
    private final long b;
    private final long c;

    public c(j j1, long l, long l1)
    {
        a = j1;
        b = l;
        c = l1;
    }

    public final void a(long l)
    {
        a.a(Math.min(l + b, c), c);
    }
}
