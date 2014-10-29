// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c.b;

import com.instagram.api.e.a;
import com.instagram.common.a.a.n;
import com.instagram.common.a.c.b;

// Referenced classes of package com.instagram.android.c.b:
//            f

public final class e extends a
{

    public e(String s)
    {
        super(s);
    }

    public final b a()
    {
        b b1 = super.a();
        b1.a("type", "page");
        return b1;
    }

    protected final String b()
    {
        return "me/accounts/";
    }

    public final n d()
    {
        return new f(this);
    }
}
