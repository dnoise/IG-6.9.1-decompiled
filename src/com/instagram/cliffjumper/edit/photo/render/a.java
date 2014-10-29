// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.render;

import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.render:
//            b, j

public final class a
{

    private b a;
    private Exception b;
    private final List c = new ArrayList();

    private a(b b1)
    {
        a = b1;
    }

    public static a a()
    {
        return new a(b.e);
    }

    public static a a(Exception exception)
    {
        a a1 = new a(b.d);
        a1.b = exception;
        return a1;
    }

    public static a b()
    {
        return new a(b.c);
    }

    public final void a(b b1)
    {
        a = b1;
    }

    public final void a(j j)
    {
        c.add(j);
    }

    public final b c()
    {
        return a;
    }

    public final Exception d()
    {
        return b;
    }

    public final List e()
    {
        return c;
    }
}
