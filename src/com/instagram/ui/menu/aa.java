// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.menu;


public final class aa
{

    private final android.widget.CompoundButton.OnCheckedChangeListener a;
    private boolean b;
    private CharSequence c;
    private int d;

    public aa(int i, boolean flag, android.widget.CompoundButton.OnCheckedChangeListener oncheckedchangelistener)
    {
        d = i;
        b = flag;
        a = oncheckedchangelistener;
    }

    public final int a()
    {
        return d;
    }

    public final void a(boolean flag)
    {
        b = flag;
    }

    public final CharSequence b()
    {
        return c;
    }

    public final boolean c()
    {
        return b;
    }

    public final android.widget.CompoundButton.OnCheckedChangeListener d()
    {
        return a;
    }
}
