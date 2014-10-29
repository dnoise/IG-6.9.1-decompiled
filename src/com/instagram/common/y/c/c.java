// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.y.c;

import android.os.Process;

public final class c extends Thread
{

    private final int a;

    public c(Runnable runnable, String s, int i)
    {
        super(runnable, s);
        a = i;
    }

    public final void run()
    {
        Process.setThreadPriority(a);
        super.run();
    }
}
