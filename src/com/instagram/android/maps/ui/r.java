// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.ui;

import android.os.Handler;

// Referenced classes of package com.instagram.android.maps.ui:
//            d, q, m, s

final class r
    implements d
{

    final q a;

    r(q q1)
    {
        a = q1;
        super();
    }

    public final void a()
    {
        m.e(a.c).postDelayed(new s(this), 50L);
    }
}
