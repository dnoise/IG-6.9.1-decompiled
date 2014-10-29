// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.share.b;

import com.instagram.common.a.a.j;
import com.instagram.common.l.a.e;

// Referenced classes of package com.instagram.share.b:
//            p, r, a

final class c extends j
{

    c()
    {
    }

    private static void a(p p1)
    {
        if (!p1.b().a())
        {
            com.instagram.share.b.a.a(false);
            return;
        } else
        {
            com.instagram.share.b.a.a(System.currentTimeMillis());
            com.instagram.share.b.a.c();
            return;
        }
    }

    public final volatile void a(Object obj)
    {
        a((p)obj);
    }

    public final void b(e e1)
    {
        if (e1.a() && ((p)e1.b()).c())
        {
            com.instagram.share.b.a.a(false);
        }
    }
}
