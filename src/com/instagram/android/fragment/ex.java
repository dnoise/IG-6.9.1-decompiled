// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import com.instagram.common.y.e;
import com.instagram.feed.a.a;

// Referenced classes of package com.instagram.android.fragment:
//            ev

final class ex extends a
{

    final ev a;

    ex(ev ev1, com.instagram.feed.f.a a1, boolean flag)
    {
        a = ev1;
        super(a1, flag);
    }

    protected final String e()
    {
        Object aobj[] = new Object[1];
        aobj[0] = com.instagram.android.fragment.ev.a(a);
        return com.instagram.common.y.e.a("media/%s/info/", aobj);
    }
}
