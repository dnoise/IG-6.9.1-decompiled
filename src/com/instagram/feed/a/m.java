// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.a;

import com.instagram.user.c.a;

// Referenced classes of package com.instagram.feed.a:
//            a

public final class m extends com.instagram.feed.a.a
{

    private a a;

    public m(com.instagram.feed.f.a a1, boolean flag, a a2)
    {
        super(a1, flag);
        a = a2;
    }

    protected final String e()
    {
        Object aobj[] = new Object[1];
        aobj[0] = a.g();
        return String.format("feed/user/%s/", aobj);
    }
}
