// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.net.Uri;
import com.instagram.feed.a.a;
import com.instagram.venue.model.Venue;

// Referenced classes of package com.instagram.android.fragment:
//            cp

final class cq extends a
{

    final cp a;

    cq(cp cp1, com.instagram.feed.f.a a1, boolean flag)
    {
        a = cp1;
        super(a1, flag);
    }

    protected final String e()
    {
        Object aobj[] = new Object[1];
        aobj[0] = Uri.encode(com.instagram.android.fragment.cp.a(a).b());
        return String.format("feed/location/%s/", aobj);
    }
}
