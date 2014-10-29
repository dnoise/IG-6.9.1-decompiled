// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.support.v4.app.k;

// Referenced classes of package com.instagram.android.fragment:
//            dx, du

final class dy
    implements Runnable
{

    final dx a;

    dy(dx dx1)
    {
        a = dx1;
        super();
    }

    public final void run()
    {
        a.a.l().onBackPressed();
    }
}
