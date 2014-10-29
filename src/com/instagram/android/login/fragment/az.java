// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.os.Handler;
import com.instagram.registrationpush.a;

// Referenced classes of package com.instagram.android.login.fragment:
//            bv, an

final class az extends bv
{

    final an a;

    az(an an1)
    {
        a = an1;
        super(an1, (byte)0);
    }

    public final void a()
    {
        (new a(a.n())).d();
        if (an.A(a))
        {
            an.c(a).removeMessages(1);
            an.c(a).sendEmptyMessageDelayed(1, 1000L);
        }
    }
}
