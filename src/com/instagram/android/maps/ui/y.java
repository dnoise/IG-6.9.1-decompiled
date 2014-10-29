// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.ui;

import android.os.Handler;

// Referenced classes of package com.instagram.android.maps.ui:
//            e, m, z, b

final class y
    implements e
{

    final m a;

    y(m m1)
    {
        a = m1;
        super();
    }

    public final void a()
    {
        m.e(a).post(new z(this));
        m.f(a).setReverseAnimationPreFinishListener(null);
    }
}
