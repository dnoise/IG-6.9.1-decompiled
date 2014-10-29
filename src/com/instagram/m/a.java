// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.m;


// Referenced classes of package com.instagram.m:
//            b

public final class a extends b
{

    public a(String s)
    {
        super(s, "is_enabled", "disabled");
    }

    private static boolean a(String s)
    {
        return "enabled".equals(s);
    }

    public final boolean a()
    {
        return a(f());
    }

    public final boolean b()
    {
        return a(h());
    }
}
