// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.ui;

import android.os.Handler;

// Referenced classes of package com.instagram.android.maps.ui:
//            e, m, ac, b

final class ab
    implements e
{

    final m a;

    ab(m m1)
    {
        a = m1;
        super();
    }

    public final void a()
    {
        m.e(a).post(new ac(this));
        m.f(a).setReverseAnimationPreFinishListener(null);
    }
}
