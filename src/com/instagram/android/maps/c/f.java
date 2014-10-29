// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.c;

import android.os.Handler;

// Referenced classes of package com.instagram.android.maps.c:
//            e, c

final class f
    implements Runnable
{

    final e a;

    f(e e1)
    {
        a = e1;
        super();
    }

    public final void run()
    {
        c.b(a.a).removeMessages(0);
        c.a(a.a, false);
    }
}
