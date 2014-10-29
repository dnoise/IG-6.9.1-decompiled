// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.a.a;

import android.os.Handler;

// Referenced classes of package com.instagram.common.a.a:
//            a, c, e

final class d
    implements Runnable
{

    final a a;
    final c b;

    d(c c1, a a1)
    {
        b = c1;
        a = a1;
        super();
    }

    public final void run()
    {
        com.instagram.common.l.a.e e1 = a.g();
        c.a(b).post(new e(this, e1));
    }
}
