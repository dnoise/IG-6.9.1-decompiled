// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.b;

import android.view.View;
import com.instagram.android.feed.d.a;
import com.instagram.feed.c.g;
import com.instagram.feed.d.l;

// Referenced classes of package com.instagram.android.feed.a.b:
//            m

final class q
    implements android.view.View.OnClickListener
{

    final l a;
    final m b;

    q(m m1, l l)
    {
        b = m1;
        a = l;
        super();
    }

    public final void onClick(View view)
    {
        (new a(com.instagram.android.feed.a.b.m.a(b))).a();
        g.b("sponsored_label", a, m.b(b));
    }
}
