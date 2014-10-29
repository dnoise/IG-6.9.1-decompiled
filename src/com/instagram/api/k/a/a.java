// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.k.a;

import com.fasterxml.jackson.a.l;
import com.instagram.api.b.b;
import com.instagram.api.i.c;
import com.instagram.common.a.a.n;
import com.instagram.common.l.a.e;
import java.io.File;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.api.k.a:
//            d, e

public abstract class a extends com.instagram.common.a.a.a
    implements com.instagram.api.c.a
{

    public a()
    {
    }

    protected abstract d a(l l);

    public final void a(e e1)
    {
        super.a(e1);
        if (e1.a())
        {
            d d1 = (d)e1.b();
            if (d1.g() != null)
            {
                for (Iterator iterator = d1.g().iterator(); iterator.hasNext(); c.a((b)iterator.next())) { }
            }
            if (!((d)e1.b()).f_())
            {
                if ("login_required".equals(d1.k()))
                {
                    com.instagram.common.y.f.b.a(com.instagram.common.h.a.a());
                } else
                if ("checkpoint_required".equals(d1.k()))
                {
                    com.instagram.o.d.a.a(com.instagram.common.h.a.a(), d1.h(), d1.i());
                    return;
                }
            }
        }
    }

    public final n d()
    {
        return new com.instagram.api.k.a.e(this);
    }

    protected abstract String d_();

    public boolean e_()
    {
        return com.instagram.l.b.a.a().I() || com.instagram.l.b.a.a().J() && com.instagram.common.y.g.a.b(com.instagram.common.h.a.a());
    }

    public File f()
    {
        return null;
    }

    protected final e g()
    {
        com.instagram.api.d.a.a();
        e e1;
        try
        {
            e1 = super.g();
        }
        catch (UnsatisfiedLinkError unsatisfiedlinkerror)
        {
            com.instagram.common.i.c.b("failed_to_load_library_network_layer", "failed_to_load_library_network_layer");
            return e.c();
        }
        return e1;
    }

    public final String g_()
    {
        return com.instagram.api.h.a.a(d_(), e_());
    }
}
