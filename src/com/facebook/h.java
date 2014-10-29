// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import java.util.ArrayList;

// Referenced classes of package com.facebook:
//            bm, s, a, c

final class h
    implements bm
{

    final ArrayList a;
    final s b;
    final ArrayList c;
    final c d;

    h(c c1, ArrayList arraylist, s s1, ArrayList arraylist1)
    {
        d = c1;
        a = arraylist;
        b = s1;
        c = arraylist1;
        super();
    }

    public final void a()
    {
        if (a.size() != 2 || a.get(0) == null || a.get(1) == null || !((String)a.get(0)).equals(a.get(1))) goto _L2; else goto _L1
_L1:
        s s2 = s.a(com.facebook.a.a(b.b, c));
_L3:
        d.b(s2);
        com.facebook.c.a(d);
        return;
_L2:
        s s1 = s.a("User logged in as different Facebook user.", null);
        s2 = s1;
          goto _L3
        Exception exception1;
        exception1;
        d.b(s.a("Caught exception", exception1.getMessage()));
        com.facebook.c.a(d);
        return;
        Exception exception;
        exception;
        com.facebook.c.a(d);
        throw exception;
    }
}
