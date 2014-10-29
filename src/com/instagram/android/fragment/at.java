// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import com.instagram.android.feed.a.a.d;
import com.instagram.feed.d.l;
import java.util.Map;

// Referenced classes of package com.instagram.android.fragment:
//            ar, au

final class at
    implements d
{

    final ar a;

    private at(ar ar1)
    {
        a = ar1;
        super();
    }

    at(ar ar1, byte byte0)
    {
        this(ar1);
    }

    public final void a(l l1)
    {
    }

    public final void a(l l1, int i)
    {
        if (!ar.a(a).containsKey(l1.d()))
        {
            ar.a(a).put(l1.d(), new au(a, l1, i));
        }
    }

    public final void b(l l1)
    {
    }

    public final void b(l l1, int i)
    {
    }
}
