// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.i;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class b
    implements ThreadFactory
{

    private final String a;
    private final AtomicInteger b = new AtomicInteger(1);

    public b(String s)
    {
        a = s;
    }

    public final Thread newThread(Runnable runnable)
    {
        return new Thread(runnable, (new StringBuilder()).append(a).append(b.getAndIncrement()).toString());
    }
}
