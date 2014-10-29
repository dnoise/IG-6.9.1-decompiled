// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.view;

import android.view.View;

final class ax
{

    public static void a(View view)
    {
        view.postInvalidateOnAnimation();
    }

    public static void a(View view, int i)
    {
        view.setImportantForAccessibility(i);
    }

    public static void a(View view, int i, int j, int k, int l)
    {
        view.postInvalidate(i, j, k, l);
    }

    public static void a(View view, Runnable runnable)
    {
        view.postOnAnimation(runnable);
    }

    public static void a(View view, boolean flag)
    {
        view.setHasTransientState(flag);
    }

    public static int b(View view)
    {
        return view.getImportantForAccessibility();
    }
}
