// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.b;

import android.view.View;
import com.instagram.feed.c.g;
import com.instagram.feed.d.ad;
import com.instagram.feed.d.l;
import com.instagram.feed.g.a;
import com.instagram.o.f.e;
import com.instagram.o.f.f;

// Referenced classes of package com.instagram.android.feed.a.b:
//            a

final class c
    implements android.view.View.OnClickListener
{

    final l a;
    final int b;
    final com.instagram.android.feed.a.b.a c;

    c(com.instagram.android.feed.a.b.a a1, l l1, int i)
    {
        c = a1;
        a = l1;
        b = i;
        super();
    }

    public final void onClick(View view)
    {
        g.a("comment_button", a, b, com.instagram.android.feed.a.b.a.d(c));
        f.a().a(com.instagram.android.feed.a.b.a.e(c), ad.a().b(a.d()), true, com.instagram.android.feed.a.b.a.d(c).p_(), com.instagram.android.feed.a.b.a.d(c).V()).b("media_comments").a();
    }
}
