// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.os.Bundle;
import com.instagram.android.login.c.k;
import com.instagram.user.c.a;

// Referenced classes of package com.instagram.android.login.fragment:
//            p, o, bz

final class q
    implements Runnable
{

    final k a;
    final p b;

    q(p p1, k k1)
    {
        b = p1;
        a = k1;
        super();
    }

    public final void run()
    {
        Bundle bundle = new Bundle();
        if (a.a() != null)
        {
            bundle.putString("userid", a.a().g());
        } else
        {
            bundle.putString("email_lookup", com.instagram.android.login.fragment.o.a(b.a));
        }
        bundle.putBoolean("can_sms_reset", a.c());
        bundle.putBoolean("can_email_reset", a.b());
        (new com.instagram.base.a.a.a(b.a.p())).a(new bz(), bundle).a();
    }
}
