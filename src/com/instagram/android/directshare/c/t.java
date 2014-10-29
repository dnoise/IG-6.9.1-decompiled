// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.c;

import android.content.Intent;
import com.instagram.android.feed.e.d;
import com.instagram.common.a.a.k;
import com.instagram.common.a.a.o;
import com.instagram.common.d.a;
import com.instagram.common.d.g;
import com.instagram.common.d.h;
import com.instagram.common.d.j;
import com.instagram.f.a.a.l;
import com.instagram.feed.d.ad;
import com.instagram.feed.f.b;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

// Referenced classes of package com.instagram.android.directshare.c:
//            u, w, v

public final class t
    implements d, a
{

    private boolean a;
    private k b;
    private com.instagram.feed.f.a c;
    private Set d;
    private int e;
    private Set f;

    private t()
    {
        b = new o();
        d = new HashSet();
        f = new TreeSet(new u(this));
        (new j(com.instagram.common.h.a.a())).a().a("InboxFragment.REFRESH_INBOX", this).a("InboxFragment.ADD_MEDIA_TO_INBOX", this).a("InboxFragment.REMOVE_MEDIA_FROM_INBOX", this).a().b();
    }

    t(byte byte0)
    {
        this();
    }

    public static t a()
    {
        return com.instagram.android.directshare.c.w.a;
    }

    static com.instagram.feed.f.a a(t t1, com.instagram.feed.f.a a1)
    {
        t1.c = a1;
        return a1;
    }

    static Set a(t t1)
    {
        return t1.d;
    }

    private void a(boolean flag)
    {
        k k1 = b;
        com.instagram.feed.f.a a1;
        if (flag)
        {
            a1 = c;
        } else
        {
            a1 = null;
        }
        k1.a((new l(a1)).a(new v(this, flag, (byte)0)));
    }

    static boolean a(t t1, boolean flag)
    {
        t1.a = flag;
        return flag;
    }

    static com.instagram.feed.f.a b(t t1)
    {
        return t1.c;
    }

    private boolean b(String s)
    {
        for (Iterator iterator = f.iterator(); iterator.hasNext();)
        {
            if (((com.instagram.feed.d.l)iterator.next()).d().equals(s))
            {
                iterator.remove();
                return true;
            }
        }

        return false;
    }

    private boolean c(String s)
    {
        com.instagram.feed.d.l l1 = ad.a().b(s);
        return l1 != null && a(l1);
    }

    private static void k()
    {
        com.instagram.common.y.d.a(new Intent("InboxFragment.UPDATE_INBOX"));
    }

    public final void a(int i1)
    {
        e = i1;
    }

    public final void a(Intent intent)
    {
        if (!"InboxFragment.REFRESH_INBOX".equals(intent.getAction())) goto _L2; else goto _L1
_L1:
        i();
_L4:
        return;
_L2:
        if (!"InboxFragment.ADD_MEDIA_TO_INBOX".equals(intent.getAction()))
        {
            continue; /* Loop/switch isn't completed */
        }
        if (!c(intent.getStringExtra("mediaId"))) goto _L4; else goto _L3
_L3:
        k();
        return;
        if (!"InboxFragment.REMOVE_MEDIA_FROM_INBOX".equals(intent.getAction()) || !b(intent.getStringExtra("mediaId"))) goto _L4; else goto _L5
_L5:
        k();
        return;
    }

    public final void a(com.instagram.common.a.a.j j1)
    {
        d.add(j1);
        if (a)
        {
            j1.a();
        }
    }

    public final void a(String s)
    {
        c(s);
    }

    public final void a(List list)
    {
        f.addAll(list);
    }

    public final boolean a(com.instagram.feed.d.l l1)
    {
        return f.add(l1);
    }

    public final void b(com.instagram.common.a.a.j j1)
    {
        d.remove(j1);
    }

    public final boolean b()
    {
        return c != null;
    }

    public final boolean c()
    {
        return e != 0 && e < f.size();
    }

    public final boolean d()
    {
        return c != null && c.b() != b.a;
    }

    public final boolean e()
    {
        return a;
    }

    public final List f()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.addAll(f);
        return arraylist;
    }

    public final void g()
    {
        f.clear();
        c = null;
    }

    public final boolean h()
    {
        int i1;
        for (i1 = 0; e == 0 || f.size() <= e;)
        {
            return false;
        }

        for (Iterator iterator = f.iterator(); iterator.hasNext();)
        {
            iterator.next();
            if (i1 >= e)
            {
                iterator.remove();
            }
            i1++;
        }

        return true;
    }

    public final void i()
    {
        a(false);
    }

    public final void j()
    {
        a(true);
    }
}
