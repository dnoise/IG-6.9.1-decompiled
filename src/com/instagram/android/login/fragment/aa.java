// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.support.v4.app.k;

// Referenced classes of package com.instagram.android.login.fragment:
//            z, v

final class aa
    implements Runnable
{

    final z a;

    aa(z z1)
    {
        a = z1;
        super();
    }

    public final void run()
    {
        if (a.a.l() != null)
        {
            a.a.l().onBackPressed();
        }
    }
}
