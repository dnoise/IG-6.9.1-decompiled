// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.d;

import android.content.Context;
import android.util.SparseArray;
import com.instagram.common.y.e;
import com.instagram.o.g.a;
import com.instagram.user.follow.n;
import java.util.List;

// Referenced classes of package com.instagram.j.d:
//            d, f, e, g

public final class c
{

    int a;
    d b;
    private g c;
    private String d;

    public c()
    {
    }

    private f m()
    {
        List list;
        if (b != null && b.e != null)
        {
            if (!(list = b.e).isEmpty())
            {
                return (f)list.get(-1 + list.size());
            }
        }
        return null;
    }

    private long n()
    {
        if (b != null)
        {
            return b.f;
        } else
        {
            return 0L;
        }
    }

    public final g a()
    {
        return c;
    }

    public final String a(Context context)
    {
        if (d == null)
        {
            d = com.instagram.o.g.a.a(context, n());
        }
        return d;
    }

    public final String b()
    {
        if (b != null)
        {
            return b.a;
        } else
        {
            return null;
        }
    }

    public final String c()
    {
        if (b != null)
        {
            return com.instagram.common.y.e.d(b.b);
        } else
        {
            return null;
        }
    }

    public final String d()
    {
        if (b != null)
        {
            return b.c;
        } else
        {
            return null;
        }
    }

    public final String e()
    {
        if (b != null)
        {
            return b.d;
        } else
        {
            return null;
        }
    }

    public final String f()
    {
        f f1 = m();
        if (f1 != null)
        {
            return f1.a();
        } else
        {
            return null;
        }
    }

    public final String g()
    {
        f f1 = m();
        if (f1 != null)
        {
            return f1.b();
        } else
        {
            return null;
        }
    }

    public final List h()
    {
        if (b != null)
        {
            return b.e;
        } else
        {
            return null;
        }
    }

    public final com.instagram.user.c.a i()
    {
        if (b != null && b.g != null)
        {
            return b.g.a;
        } else
        {
            return null;
        }
    }

    public final int j()
    {
        if (b != null)
        {
            return b.h;
        } else
        {
            return 0;
        }
    }

    public final List k()
    {
        if (b != null)
        {
            return b.i;
        } else
        {
            return null;
        }
    }

    final c l()
    {
        c = (g)com.instagram.j.d.g.a().get(a);
        if (b != null && b.g != null && b.g.a != null)
        {
            com.instagram.service.a.a.a();
            if (com.instagram.service.a.a.d())
            {
                com.instagram.user.follow.n.a().a(b.g.a, b.g.b, b.g.c, null);
            }
        }
        return this;
    }
}
