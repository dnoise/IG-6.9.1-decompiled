// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.menu;

import java.util.List;

public final class g
{

    private List a;
    private String b;
    private android.widget.RadioGroup.OnCheckedChangeListener c;

    public g(List list, String s, android.widget.RadioGroup.OnCheckedChangeListener oncheckedchangelistener)
    {
        a = list;
        b = s;
        c = oncheckedchangelistener;
    }

    public final List a()
    {
        return a;
    }

    public final String b()
    {
        return b;
    }

    public final android.widget.RadioGroup.OnCheckedChangeListener c()
    {
        return c;
    }
}
