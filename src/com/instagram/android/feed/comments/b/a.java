// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.comments.b;

import android.content.Context;
import android.support.v4.app.Fragment;
import android.support.v4.app.an;
import com.instagram.f.a.a.q;
import com.instagram.feed.c.g;
import com.instagram.feed.d.b;
import com.instagram.feed.d.c;
import com.instagram.feed.d.l;

// Referenced classes of package com.instagram.android.feed.comments.b:
//            b

public final class a
{

    private static com.instagram.api.j.a a(b b1, com.instagram.android.feed.comments.a.a a1)
    {
        return new com.instagram.android.feed.comments.b.b(a1, b1);
    }

    public static void a(Context context, an an, String s, l l1, com.instagram.user.c.a a1)
    {
        com.instagram.h.a.a.b(s);
        long l2 = Math.max(1L + l1.aq(), 1000L * System.currentTimeMillis());
        b b1 = new b();
        b1.a(s);
        b1.a(l1);
        b1.a(a1);
        b1.a(l2);
        b1.a(c.c);
        a(b1, context, an);
    }

    private static void a(b b1, Context context, an an)
    {
        b1.e().c(b1);
        (new q(context, an, b1, null)).g();
    }

    private static void a(b b1, Context context, an an, com.instagram.api.j.a a1)
    {
        b1.e().c(b1);
        (new com.instagram.android.feed.comments.c.a(context, an, a1)).a(b1);
    }

    public static void a(b b1, Fragment fragment)
    {
        a(b1, fragment.n(), fragment.z(), ((com.instagram.api.j.a) (null)));
    }

    public static void a(String s, l l1, com.instagram.user.c.a a1, com.instagram.android.feed.comments.a.a a2)
    {
        com.instagram.h.a.a.b(s);
        long l2 = Math.max(1L + l1.aq(), 1000L * System.currentTimeMillis());
        b b1 = new b();
        b1.a(s);
        b1.a(l1);
        b1.a(a1);
        b1.a(l2);
        b1.a(c.c);
        a(b1, a2.n(), a2.z(), a(b1, a2));
        g.b("comment", l1, a2);
    }

    public static void b(b b1, Fragment fragment)
    {
        a(b1, fragment.n(), fragment.z());
    }
}
