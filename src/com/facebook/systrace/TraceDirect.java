// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.systrace;


class TraceDirect
{

    private static final String a;
    private static final boolean b;

    TraceDirect()
    {
    }

    public static void a()
    {
        if (b)
        {
            return;
        } else
        {
            nativeEndSection();
            return;
        }
    }

    public static void a(String s)
    {
        if (b)
        {
            return;
        } else
        {
            nativeBeginSection(s);
            return;
        }
    }

    public static void a(String s, int i)
    {
        if (b)
        {
            return;
        } else
        {
            nativeAsyncTraceBegin(s, i, 0L);
            return;
        }
    }

    public static void a(String s, String s1, int i)
    {
        if (b)
        {
            return;
        } else
        {
            nativeTraceMetadata(s, s1, i);
            return;
        }
    }

    public static String b()
    {
        if (b)
        {
            return "";
        } else
        {
            return nativeGetMyCommandLine();
        }
    }

    public static void b(String s, int i)
    {
        if (b)
        {
            return;
        } else
        {
            nativeAsyncTraceEnd(s, i, 0L);
            return;
        }
    }

    private static native void nativeAsyncTraceBegin(String s, int i, long l);

    private static native void nativeAsyncTraceEnd(String s, int i, long l);

    private static native void nativeBeginSection(String s);

    private static native void nativeEndSection();

    private static native String nativeGetMyCommandLine();

    private static native void nativeTraceMetadata(String s, String s1, int i);

    static 
    {
        boolean flag;
        flag = true;
        a = com/facebook/systrace/TraceDirect.getSimpleName();
        System.loadLibrary("fbsystrace");
        boolean flag1 = flag;
_L1:
        UnsatisfiedLinkError unsatisfiedlinkerror;
        if (flag1)
        {
            flag = false;
        }
        b = flag;
        return;
        unsatisfiedlinkerror;
        a;
        flag1 = false;
          goto _L1
    }
}
