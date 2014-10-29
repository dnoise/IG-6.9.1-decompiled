// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.a;

import com.instagram.feed.f.c;
import com.instagram.feed.f.d;

// Referenced classes of package com.instagram.feed.a:
//            d

public final class e
{

    c a;
    c b;
    c c;

    public e()
    {
    }

    public final c a()
    {
        return a;
    }

    public final boolean a(d d1)
    {
        d.a[d1.ordinal()];
        JVM INSTR tableswitch 1 3: default 36
    //                   1 38
    //                   2 52
    //                   3 66;
           goto _L1 _L2 _L3 _L4
_L1:
        return false;
_L2:
        if (a != null)
        {
            a = null;
            return true;
        }
_L3:
        if (b != null)
        {
            b = null;
            return true;
        }
_L4:
        if (c == null) goto _L1; else goto _L5
_L5:
        c = null;
        return true;
    }

    public final c b()
    {
        return b;
    }

    public final c c()
    {
        return c;
    }

    public final boolean d()
    {
        return a == null && b == null && c == null;
    }
}
