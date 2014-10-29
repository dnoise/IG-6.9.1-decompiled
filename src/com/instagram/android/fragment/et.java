// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import com.instagram.common.y.e;
import com.instagram.feed.a.a;

// Referenced classes of package com.instagram.android.fragment:
//            eo

final class et extends a
{

    final eo a;

    et(eo eo1, com.instagram.feed.f.a a1, boolean flag)
    {
        a = eo1;
        super(a1, flag);
    }

    protected final String e()
    {
        Object aobj[] = new Object[1];
        aobj[0] = eo.b(a);
        return com.instagram.common.y.e.a("media/%s/info/", aobj);
    }
}
