// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a;

import com.instagram.feed.d.l;
import com.instagram.l.b.a;

// Referenced classes of package com.instagram.android.feed.a:
//            c

final class d
    implements Runnable
{

    final l a;
    final c b;

    d(c c, l l1)
    {
        b = c;
        a = l1;
        super();
    }

    public final void run()
    {
        com.instagram.l.b.a.a().a(a.d(), true);
    }
}
