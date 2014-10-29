// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.k.a;

import com.instagram.api.i.a;
import com.instagram.common.a.c.b;

// Referenced classes of package com.instagram.api.k.a:
//            a

public abstract class c extends com.instagram.api.k.a.a
{

    private b a;

    public c()
    {
    }

    public final b a()
    {
        if (a == null)
        {
            a = new b();
            com.instagram.api.i.a.a(a, this);
            a(a);
        }
        return a;
    }

    protected abstract void a(b b1);

    public final boolean b()
    {
        return false;
    }
}
