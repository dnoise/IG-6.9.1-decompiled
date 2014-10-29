// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.e;

import android.content.Intent;
import com.instagram.common.a.a.j;
import com.instagram.common.l.a.e;
import com.instagram.common.y.d;
import com.instagram.feed.f.a;
import com.instagram.feed.f.b;
import com.instagram.j.d.o;
import com.instagram.j.d.p;
import java.util.HashSet;

// Referenced classes of package com.instagram.j.e:
//            a

public final class c extends j
{

    final com.instagram.j.e.a a;

    public c(com.instagram.j.e.a a1)
    {
        a = a1;
        super();
    }

    private void a(o o1)
    {
        com.instagram.j.e.a.a(a).clear();
        a.a(false);
        com.instagram.j.e.a.a(a, o1.f());
        com.instagram.j.e.a.b(a, o1.t());
        com.instagram.j.e.a.c(a, o1.u());
        com.instagram.j.e.a.d(a, o1.v());
        com.instagram.j.e.a.a(a, o1.d());
        com.instagram.j.e.a.b(a).b();
        b _tmp = b.a;
        p p1 = o1.b();
        int i = p1.b();
        int k = p1.a();
        int l = p1.d();
        int i1 = p1.c();
        if (i1 + (l + (i + k)) > 0)
        {
            Intent intent = new Intent("NewsfeedStore.BROADCAST_TOAST");
            intent.putExtra("NewsfeedStore.EXTRA_BROADCAST_TOAST_LIKES", i);
            intent.putExtra("NewsfeedStore.EXTRA_BROADCAST_TOAST_COMMENTS", k);
            intent.putExtra("NewsfeedStore.EXTRA_BROADCAST_TOAST_RELATIONSHIPS", l);
            intent.putExtra("NewsfeedStore.EXTRA_BROADCAST_TOAST_USERTAGS", i1);
            d.a(intent);
        }
        Intent intent1 = new Intent("NewsfeedStore.BROADCAST_NEW_PHOTOS_OF_YOU");
        intent1.putExtra("NewsfeedStore.EXTRA_BROADCAST_NEW_PHOTOS_OF_YOU_COUNT", o1.c());
        d.a(intent1);
        com.instagram.j.e.a _tmp1 = a;
        com.instagram.j.e.a.m();
    }

    public final void a()
    {
        super.a();
        com.instagram.j.e.a.a(a, true);
    }

    public final void a(e e)
    {
        super.a(e);
        com.instagram.j.e.a.a(a, false);
    }

    public final volatile void a(Object obj)
    {
        a((o)obj);
    }

    public final void b(e e)
    {
        a.a(true);
        com.instagram.j.e.a _tmp = a;
        com.instagram.j.e.a.m();
    }
}
