// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.d;

import android.content.Context;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.instagram.o.g.a;

// Referenced classes of package com.instagram.feed.d:
//            d, c, l

public final class b
    implements Comparable
{

    String a;
    long b;
    String c;
    String d;
    com.instagram.user.c.a e;
    int f;
    private com.instagram.feed.d.l g;
    private c h;
    private String i;

    public b()
    {
        f = com.instagram.feed.d.d.a;
        a = String.valueOf(hashCode());
    }

    private int a(b b1)
    {
        int i1 = -1;
        if (!equals(b1)) goto _L2; else goto _L1
_L1:
        i1 = 0;
_L4:
        return i1;
_L2:
        if (f == b1.f)
        {
            break; /* Loop/switch isn't completed */
        }
        if (f != d.b)
        {
            return 1;
        }
        if (true) goto _L4; else goto _L3
_L3:
        long l1;
        l1 = b - b1.b;
        if (l1 != 0L)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (a == null || b1.a == null)
        {
            break; /* Loop/switch isn't completed */
        }
        i1 = a.compareTo(b1.a);
        if (i1 != 0) goto _L4; else goto _L5
_L5:
        return hashCode() - b1.hashCode();
        if (l1 <= 0L) goto _L4; else goto _L6
_L6:
        return 1;
    }

    static long a(l l1)
    {
        if (l1.getCurrentToken() == r.h)
        {
            return Long.parseLong(l1.getValueAsString());
        } else
        {
            return 0xf4240L * l1.getValueAsLong();
        }
    }

    private long o()
    {
        return b / 0xf4240L;
    }

    final b a()
    {
        a(c.f);
        return this;
    }

    public final CharSequence a(Context context)
    {
        return com.instagram.o.g.a.a(context, o());
    }

    public final void a(long l1)
    {
        b = l1;
    }

    public final void a(c c1)
    {
        h = c1;
    }

    public final void a(com.instagram.feed.d.l l1)
    {
        g = l1;
        String s;
        if (l1 == null)
        {
            s = null;
        } else
        {
            s = l1.f();
        }
        c = s;
    }

    public final void a(com.instagram.user.c.a a1)
    {
        e = a1;
    }

    public final void a(String s)
    {
        d = s;
    }

    public final void a(boolean flag, String s)
    {
        h = c.b;
        if (flag && s != null)
        {
            i = s;
        }
    }

    public final String b()
    {
        return a;
    }

    public final boolean b(String s)
    {
        if (a == null || s == null)
        {
            return false;
        } else
        {
            return a.equals(s);
        }
    }

    public final long c()
    {
        return b;
    }

    public final int compareTo(Object obj)
    {
        return a((b)obj);
    }

    public final String d()
    {
        return c;
    }

    public final com.instagram.feed.d.l e()
    {
        return g;
    }

    public final String f()
    {
        return d;
    }

    public final com.instagram.user.c.a g()
    {
        return e;
    }

    public final c h()
    {
        return h;
    }

    public final int i()
    {
        return f;
    }

    public final boolean j()
    {
        return i != null;
    }

    public final String k()
    {
        return i;
    }

    public final void l()
    {
        a(c.e);
        e().G();
    }

    public final void m()
    {
        a(c.d);
        e().H();
    }

    public final void n()
    {
        a(c.f);
        e().I();
    }
}
