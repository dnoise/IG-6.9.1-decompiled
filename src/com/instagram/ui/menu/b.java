// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.menu;


public final class b
{

    private int a;
    private int b;
    private boolean c;
    private android.view.View.OnClickListener d;

    public b(int i, int j, boolean flag, android.view.View.OnClickListener onclicklistener)
    {
        a = i;
        b = j;
        c = flag;
        d = onclicklistener;
    }

    public final boolean a()
    {
        return c;
    }

    public final int b()
    {
        return a;
    }

    public final int c()
    {
        return b;
    }

    public final android.view.View.OnClickListener d()
    {
        return d;
    }
}
