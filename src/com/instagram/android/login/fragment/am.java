// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.instagram.base.a.a.a;

// Referenced classes of package com.instagram.android.login.fragment:
//            al, ad, ci

final class am
    implements Runnable
{

    final al a;

    am(al al1)
    {
        a = al1;
        super();
    }

    public final void run()
    {
        com.instagram.android.login.fragment.ad.a(a.a, ad.f(a.a));
        Bundle bundle = new Bundle();
        bundle.putString("com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_PHONE_NUMBER", ad.f(a.a));
        ci ci1 = new ci();
        ci1.a(a.a);
        (new a(a.a.p())).a(ci1, bundle).a();
    }
}
