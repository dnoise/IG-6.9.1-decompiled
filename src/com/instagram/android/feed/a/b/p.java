// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.b;

import android.view.View;
import com.instagram.feed.c.g;
import com.instagram.feed.d.l;
import com.instagram.o.f.e;
import com.instagram.o.f.f;
import com.instagram.user.c.a;

// Referenced classes of package com.instagram.android.feed.a.b:
//            m

final class p
    implements android.view.View.OnClickListener
{

    final l a;
    final m b;

    p(m m1, l l1)
    {
        b = m1;
        a = l1;
        super();
    }

    public final void onClick(View view)
    {
        f.a().a(m.c(b), a.c().g()).b("media_owner").a();
        g.a(a.c(), a, m.b(b));
    }
}
