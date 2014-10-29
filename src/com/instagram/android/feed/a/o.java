// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a;

import com.instagram.android.i.c;
import com.instagram.user.c.a;

// Referenced classes of package com.instagram.android.feed.a:
//            n

final class o extends c
{

    final n a;

    o(n n1)
    {
        a = n1;
        super();
    }

    public final void a()
    {
        com.instagram.android.feed.a.n.a(a, false);
        a.notifyDataSetChanged();
    }

    public final void a(a a1)
    {
        com.instagram.android.feed.a.n.a(a, true);
        a.notifyDataSetChanged();
    }
}
