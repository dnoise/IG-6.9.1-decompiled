// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.quicksand;

import com.facebook.k.a;

public class QuickSandSolverBridge
{

    private static boolean b = false;
    private long a;

    public QuickSandSolverBridge(int i, int j)
    {
        a = createQuickSandSolver(i, j);
    }

    private native long createQuickSandSolver(int i, int j);

    private native boolean getStopFlagNative(long l);

    private native void resetStopFlagNative(long l);

    private native void setStopFlagNative(long l);

    private native int[] solveNative(String s, int i, long l);

    public final void a()
    {
        setStopFlagNative(a);
    }

    public final int[] a(String s, int i)
    {
        return solveNative(s, i, a);
    }

    public final boolean b()
    {
        return getStopFlagNative(a);
    }

    public final void c()
    {
        resetStopFlagNative(a);
    }

    static 
    {
        try
        {
            com.facebook.k.a.a("quicksand");
        }
        catch (Throwable throwable)
        {
            b = true;
        }
    }
}
