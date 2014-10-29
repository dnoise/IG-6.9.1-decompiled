// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.ui;

import android.graphics.Point;

// Referenced classes of package com.instagram.android.maps.ui:
//            m, ah

final class t
    implements Runnable
{

    final m a;

    t(m m1)
    {
        a = m1;
        super();
    }

    public final void run()
    {
        m.a(a, m.d(a).g().x, m.d(a).g().y);
    }
}
