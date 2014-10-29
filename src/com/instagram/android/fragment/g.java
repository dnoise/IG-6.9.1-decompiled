// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.content.Context;
import com.instagram.android.feed.a.a;
import com.instagram.api.k.a.d;
import com.instagram.common.a.a.j;
import com.instagram.common.l.a.e;
import com.instagram.feed.a.i;
import com.instagram.feed.d.l;
import com.instagram.feed.d.w;
import com.instagram.g.c;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.android.fragment:
//            a

public final class g extends j
{

    protected final boolean a;
    final com.instagram.android.fragment.a b;
    private final Context c;

    private g(com.instagram.android.fragment.a a1, Context context, boolean flag)
    {
        b = a1;
        super();
        c = context.getApplicationContext();
        a = flag;
    }

    g(com.instagram.android.fragment.a a1, Context context, boolean flag, byte byte0)
    {
        this(a1, context, flag);
    }

    private void a(i k)
    {
        b.ab = Boolean.valueOf(true);
        com.instagram.android.fragment.a.a(b, false);
        b.ac = k.u();
        if (a)
        {
            b.W().b(k.t());
        } else
        {
            b.W().c(k.t());
        }
        b.b(k, a);
    }

    private void b(i k)
    {
label0:
        {
label1:
            {
                if (k.t() == null)
                {
                    break label0;
                }
                if (!a || !com.instagram.creation.c.a.a(c))
                {
                    break label1;
                }
                Iterator iterator = k.t().iterator();
                l l1;
                do
                {
                    if (!iterator.hasNext())
                    {
                        break label1;
                    }
                    l1 = (l)iterator.next();
                } while (!l1.g());
                com.instagram.common.g.c.a.a().a(l1.a(c));
            }
            if (b.ak())
            {
                w.a(c).a(k.t());
            }
        }
        b.a(k, a);
    }

    public final void a()
    {
        com.instagram.android.fragment.a.a(b, false);
        com.instagram.android.fragment.a.b(b, true);
        b.Z();
    }

    public final void a(e e1)
    {
        com.instagram.android.fragment.a.b(b, false);
        b.aa();
    }

    public final volatile void a(Object obj)
    {
        a((i)obj);
    }

    public final void b(e e1)
    {
        b.ab = Boolean.valueOf(false);
        com.instagram.android.fragment.a.a(b, true);
        if (b.a(e1))
        {
            b.aj();
        }
        if (e1.a())
        {
            com.instagram.g.c.a((d)e1.b());
        }
        b.W().notifyDataSetChanged();
        b.ab();
    }

    public final volatile void b(Object obj)
    {
        b((i)obj);
    }
}
