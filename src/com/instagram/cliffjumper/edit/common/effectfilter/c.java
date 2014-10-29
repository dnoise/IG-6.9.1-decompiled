// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.common.effectfilter;

import com.instagram.cliffjumper.edit.common.ui.a;

// Referenced classes of package com.instagram.cliffjumper.edit.common.effectfilter:
//            d, CjFilter, BorderFilter

public final class c extends com.instagram.cliffjumper.edit.common.ui.c
{

    private a a;
    private CjFilter b;
    private BorderFilter c;

    public c(String s, int i, a a1, CjFilter cjfilter, BorderFilter borderfilter)
    {
        super(s, i);
        b = cjfilter;
        c = borderfilter;
        a = a1;
    }

    public static d c()
    {
        return new d();
    }

    public final CjFilter a()
    {
        return b;
    }

    public final BorderFilter b()
    {
        return c;
    }

    public final a d()
    {
        return a;
    }
}
