// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.k;

import android.net.TrafficStats;

public final class g
{

    public g()
    {
    }

    public static long a(int i)
    {
        return TrafficStats.getUidRxBytes(i);
    }

    public static long b(int i)
    {
        return TrafficStats.getUidTxBytes(i);
    }
}
