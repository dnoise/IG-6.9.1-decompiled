// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.o.b;

import com.instagram.api.e.a;
import com.instagram.common.a.a.n;
import com.instagram.common.a.c.b;

// Referenced classes of package com.instagram.o.b:
//            i

final class h extends a
{

    h(String s)
    {
        super(s);
    }

    public final b a()
    {
        b b1 = super.a();
        b1.a("fields", "client_config");
        return b1;
    }

    protected final String b()
    {
        return "app";
    }

    public final n d()
    {
        return new i(this);
    }
}
