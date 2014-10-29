// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.b;

import android.view.View;
import com.instagram.feed.d.l;
import com.instagram.o.f.a;
import com.instagram.o.f.b;

// Referenced classes of package com.instagram.android.feed.a.b:
//            m

final class n
    implements android.view.View.OnClickListener
{

    final l a;
    final m b;

    n(m m1, l l)
    {
        b = m1;
        a = l;
        super();
    }

    public final void onClick(View view)
    {
        com.instagram.o.f.b.a().a(com.instagram.android.feed.a.b.m.a(b), a, com.instagram.android.feed.a.b.m.b(b));
    }
}
