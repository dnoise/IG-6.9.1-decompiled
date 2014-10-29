// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.b.a;

import android.content.Context;
import com.instagram.common.p.b.a;
import java.util.Date;
import java.util.concurrent.Executor;

// Referenced classes of package com.instagram.b.a:
//            c

public final class b
    implements a
{

    private final Context a;
    private final Runnable b = new c(this);

    public b(Context context)
    {
        a = context;
    }

    static Context a(b b1)
    {
        return b1.a;
    }

    public final void a()
    {
        com.instagram.service.a.a.a();
        if (com.instagram.service.a.a.d())
        {
            com.instagram.l.b.a a1 = com.instagram.l.b.a.a();
            long l = a1.y();
            long l1 = (new Date()).getTime();
            if (l1 > l + 0x2932e00L)
            {
                com.instagram.common.y.c.a.a().execute(b);
                a1.a(l1);
            }
        }
    }

    public final void b()
    {
    }
}
