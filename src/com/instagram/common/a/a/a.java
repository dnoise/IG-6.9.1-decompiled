// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.a.a;

import com.instagram.common.l.a.e;
import java.util.List;

// Referenced classes of package com.instagram.common.a.a:
//            j, m, l, n

public abstract class a
    implements com.instagram.common.a.d.a
{

    protected j c;

    public a()
    {
    }

    public final a a(j j1)
    {
        c = j1;
        return this;
    }

    protected void a(e e1)
    {
label0:
        {
            if (c != null)
            {
                c.a(e1);
                if (!e1.a() || !((m)e1.b()).f_())
                {
                    break label0;
                }
                c.a(e1.b());
            }
            return;
        }
        c.b(e1);
    }

    public n d()
    {
        return null;
    }

    protected e g()
    {
        e e1;
label0:
        {
            e1 = com.instagram.common.a.a.l.a(this);
            if (c != null)
            {
                if (!e1.a() || !((m)e1.b()).f_())
                {
                    break label0;
                }
                c.b(e1.b());
            }
            return e1;
        }
        c.b();
        return e1;
    }

    public abstract String g_();

    protected final void i()
    {
        if (c != null)
        {
            c.a();
        }
    }

    public List l()
    {
        return null;
    }
}
