// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.a.a;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

// Referenced classes of package com.instagram.common.a.a:
//            k, a, d

public class c
    implements k
{

    private final Executor a;
    private final Handler b = new Handler(Looper.getMainLooper());

    public c(Executor executor)
    {
        a = executor;
    }

    static Handler a(c c1)
    {
        return c1.b;
    }

    public final void a(a a1)
    {
        a1.i();
        a.execute(new d(this, a1));
    }
}
