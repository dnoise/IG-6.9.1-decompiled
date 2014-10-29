// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.base.a;

import android.support.v4.app.Fragment;

// Referenced classes of package com.instagram.base.a:
//            g

final class h
    implements Runnable
{

    final g a;

    h(g g1)
    {
        a = g1;
        super();
    }

    public final void run()
    {
        if (a.a.E() != null && a.c != null)
        {
            a.c.onScroll(a.b, 0, 0, 0);
        }
    }
}
