// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.userservice.a;

import com.instagram.user.c.a;
import com.instagram.user.c.c;
import com.instagram.user.c.d;
import com.instagram.user.c.i;
import com.instagram.user.c.j;

// Referenced classes of package com.instagram.user.userservice.a:
//            f, d, g

public final class e
    implements com.instagram.common.j.e
{

    public e()
    {
    }

    private void a(d d1)
    {
        a a1 = j.a().a(d1.a);
        if (a1 == null || a1.u() == null || a1.u() == a1.t() || a1.u() != c.e && a1.u() != c.d && a1.u() != c.c) goto _L2; else goto _L1
_L1:
        if (a1.t() != c.d) goto _L4; else goto _L3
_L3:
        Object obj = new f(this, a1);
_L6:
        if (obj != null)
        {
            d.e().execute(((Runnable) (obj)));
        }
_L2:
        return;
_L4:
        c c1 = a1.t();
        c c2 = c.c;
        obj = null;
        if (c1 == c2)
        {
            obj = new g(this, a1);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public final void b(com.instagram.common.j.a a1)
    {
        a((d)a1);
    }
}
