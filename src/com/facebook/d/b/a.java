// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.d.b;


// Referenced classes of package com.facebook.d.b:
//            b, f, g

public abstract class a
    implements b
{

    public a()
    {
    }

    public final void a(String s, String s1)
    {
        a(f.b(s, s1));
    }

    public final void a(String s, String s1, Throwable throwable)
    {
        a(f.a(s, s1).a(throwable).h());
    }

    public final void a(String s, Throwable throwable)
    {
        a(s, throwable.getMessage(), throwable);
    }

    public final void b(String s, String s1)
    {
        a(f.a(s, s1).e().h());
    }

    public final void b(String s, String s1, Throwable throwable)
    {
        a(f.a(s, s1).e().a(throwable).h());
    }

    public final void b(String s, Throwable throwable)
    {
        b(s, throwable.getMessage(), throwable);
    }
}
