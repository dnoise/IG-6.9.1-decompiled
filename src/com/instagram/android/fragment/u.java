// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.support.v4.app.k;

// Referenced classes of package com.instagram.android.fragment:
//            t, o

final class u
    implements Runnable
{

    final t a;

    u(t t1)
    {
        a = t1;
        super();
    }

    public final void run()
    {
        if (a.a.u())
        {
            a.a.l().onBackPressed();
        }
    }
}
