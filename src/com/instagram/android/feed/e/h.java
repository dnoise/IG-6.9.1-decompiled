// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.e;

import android.content.Context;
import android.support.v4.app.an;
import android.widget.Toast;
import com.facebook.az;
import com.instagram.android.c.a.e;
import com.instagram.android.fragment.ab;
import com.instagram.android.g.g;
import com.instagram.api.j.a;
import com.instagram.common.a.a.k;
import com.instagram.f.a.a.p;
import com.instagram.feed.d.l;
import com.instagram.feed.d.o;
import com.instagram.feed.d.u;
import com.instagram.l.a.b;

// Referenced classes of package com.instagram.android.feed.e:
//            j, i

public final class h
{

    private static a a()
    {
        return new j();
    }

    private static void a(Context context)
    {
        b b1 = b.a();
        int i1 = b1.b();
        if (i1 < 3 && !b1.c())
        {
            Toast toast = Toast.makeText(context, az.double_tap_to_like_hint, 1);
            toast.setGravity(17, 0, 0);
            toast.show();
            b1.a(i1 + 1);
        }
    }

    public static void a(Context context, an an, l l1, int i1, int j1, int k1, ab ab1, com.instagram.feed.g.a a1)
    {
        if (k1 == g.a && j1 == o.a)
        {
            a(context);
        }
        if (k1 == g.b)
        {
            b.a().d();
        }
        if (l1.q() != j1)
        {
            u.a(l1, j1);
            (new e(context, an, l1, j1, k1, ab1.ac(), a())).g();
            a(l1, i1, j1, a1);
        }
    }

    public static void a(Context context, k k1, l l1, int i1, int j1)
    {
        if (j1 == g.a && i1 == o.a)
        {
            a(context);
        }
        if (l1.q() != i1)
        {
            u.a(l1, i1);
            p p1 = new p(l1, i1);
            p1.a(new i(l1));
            k1.a(p1);
        }
    }

    private static void a(l l1, int i1, int j1, com.instagram.feed.g.a a1)
    {
        String s;
        if (j1 == o.a)
        {
            s = "like";
        } else
        {
            s = "unlike";
        }
        com.instagram.feed.c.g.a(s, l1, i1, a1);
    }
}
