// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.e.a.a;

import android.support.v4.app.an;
import android.view.View;
import com.instagram.common.analytics.g;
import com.instagram.feed.f.c;
import com.instagram.user.d.a;
import com.instagram.user.d.b;

// Referenced classes of package com.instagram.feed.e.a.a:
//            h, a, g

final class e
    implements android.view.View.OnClickListener
{

    final g a;
    final a b;
    final int c;
    final h d;
    final com.instagram.feed.e.a.a.g e;
    final an f;
    final c g;
    final com.instagram.feed.e.a h;

    e(g g1, a a1, int i, h h1, com.instagram.feed.e.a.a.g g2, an an, c c1, 
            com.instagram.feed.e.a a2)
    {
        a = g1;
        b = a1;
        c = i;
        d = h1;
        e = g2;
        f = an;
        g = c1;
        h = a2;
        super();
    }

    public final void onClick(View view)
    {
        com.instagram.user.d.b.a(a, b, c);
        com.instagram.feed.e.a.a.h.c(d).startAnimation(com.instagram.feed.e.a.a.a.a(a, e, d, f, g, c, h));
    }
}
