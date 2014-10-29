// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.share.b;

import com.instagram.api.e.a;
import com.instagram.common.a.a.n;
import com.instagram.common.a.c.b;

// Referenced classes of package com.instagram.share.b:
//            k

public final class j extends a
{

    public j(String s)
    {
        super(s);
    }

    public final b a()
    {
        b b1 = super.a();
        b1.a("fields", "id");
        return b1;
    }

    protected final String b()
    {
        return "me";
    }

    public final int c()
    {
        return com.instagram.common.a.c.a.c;
    }

    public final n d()
    {
        return new k(this);
    }
}
