// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.ui;

import android.view.View;

// Referenced classes of package com.instagram.android.maps.ui:
//            m

final class u
    implements Runnable
{

    final int a;
    final m b;

    u(m m1, int i)
    {
        b = m1;
        a = i;
        super();
    }

    public final void run()
    {
        b.getContentView().setVisibility(a);
    }
}
