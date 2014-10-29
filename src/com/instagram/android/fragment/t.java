// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.os.Handler;
import com.facebook.az;
import com.instagram.a.f;
import com.instagram.api.k.a.d;
import com.instagram.common.a.a.j;
import com.instagram.common.l.a.e;
import com.instagram.o.a.a;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.android.fragment:
//            o, u

final class t extends j
{

    final o a;

    t(o o1)
    {
        a = o1;
        super();
    }

    private void a(d d1)
    {
        super.a(d1);
        com.instagram.android.fragment.o.e(a).post(new u(this));
    }

    public final void a()
    {
        super.a();
        com.instagram.android.fragment.o.a(a, true);
        f.a(a.l()).b(true);
        o.b(a, false);
    }

    public final void a(e e1)
    {
        super.a(e1);
        com.instagram.android.fragment.o.a(a, false);
    }

    public final volatile void a(Object obj)
    {
        a((d)obj);
    }

    public final void b(e e1)
    {
        String s;
        String s1;
        super.b(e1);
        s = a.c(az.error);
        s1 = a.c(az.unknown_error_occured);
        if (!e1.a()) goto _L2; else goto _L1
_L1:
        if (((d)e1.b()).l() != null)
        {
            StringBuilder stringbuilder = new StringBuilder();
            for (Iterator iterator = ((d)e1.b()).l().iterator(); iterator.hasNext(); stringbuilder.append((String)iterator.next()).append('\n')) { }
            s1 = stringbuilder.toString().trim();
        }
        if (((d)e1.b()).j() == null) goto _L2; else goto _L3
_L3:
        String s2 = ((d)e1.b()).j();
_L5:
        com.instagram.o.a.a.a(a.n(), s2, s1, null);
        f.a(a.l()).b(false);
        o.b(a, true);
        return;
_L2:
        s2 = s;
        if (true) goto _L5; else goto _L4
_L4:
    }
}
