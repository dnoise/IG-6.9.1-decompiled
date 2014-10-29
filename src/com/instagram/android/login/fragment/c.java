// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.os.Bundle;
import android.view.View;
import com.instagram.base.a.a.a;
import com.instagram.p.b;

// Referenced classes of package com.instagram.android.login.fragment:
//            ad, a

final class c
    implements android.view.View.OnClickListener
{

    final com.instagram.android.login.fragment.a a;

    c(com.instagram.android.login.fragment.a a1)
    {
        a = a1;
        super();
    }

    public final void onClick(View view)
    {
        b.ak.c();
        ad ad1 = new ad();
        Bundle bundle = new Bundle();
        bundle.putBoolean("com.instagram.android.login.fragment.PhoneNumberEntryFragment.ARGUMENT_IS_SMS_RESET_FLOW", true);
        (new a(a.p())).a(ad1, bundle).a();
    }
}
