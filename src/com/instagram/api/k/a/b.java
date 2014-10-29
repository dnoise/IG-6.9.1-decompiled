// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.k.a;

import com.instagram.api.b.a;

// Referenced classes of package com.instagram.api.k.a:
//            a

public abstract class b extends com.instagram.api.k.a.a
{

    private com.instagram.common.a.c.b a;

    public b()
    {
    }

    public final com.instagram.common.a.c.b a()
    {
        if (a == null)
        {
            a a1 = new a();
            a(a1);
            com.instagram.api.i.a.a(a1, this);
            a = com.instagram.api.i.b.a(a1.toString());
        }
        return a;
    }

    protected abstract void a(a a1);

    public final boolean b()
    {
        return true;
    }

    public int c()
    {
        return com.instagram.common.a.c.a.a;
    }
}
