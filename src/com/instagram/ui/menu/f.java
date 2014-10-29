// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.menu;


public final class f
{

    private int a;
    private CharSequence b;
    private android.view.View.OnClickListener c;

    public f(int i, android.view.View.OnClickListener onclicklistener)
    {
        a = i;
        c = onclicklistener;
    }

    public f(CharSequence charsequence)
    {
        b = charsequence;
    }

    public final android.view.View.OnClickListener a()
    {
        return c;
    }

    public final int b()
    {
        return a;
    }

    public final CharSequence c()
    {
        return b;
    }
}
