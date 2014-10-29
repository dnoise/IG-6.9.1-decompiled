// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.y.e;

import java.util.concurrent.atomic.AtomicInteger;

public final class a
{

    private static final AtomicInteger a = new AtomicInteger(0x5f5e100);

    public static int a()
    {
        return a.getAndIncrement();
    }

}
