// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.os.Bundle;
import android.view.View;
import com.instagram.android.g.b.c;
import com.instagram.android.login.fragment.ad;
import com.instagram.base.a.a.a;

// Referenced classes of package com.instagram.android.fragment:
//            ac

final class ag
    implements android.view.View.OnClickListener
{

    final ac a;

    ag(ac ac1)
    {
        a = ac1;
        super();
    }

    public final void onClick(View view)
    {
        Bundle bundle = new Bundle();
        bundle.putBoolean("com.instagram.android.login.fragment.PhoneNumberEntryFragment.ARGUMENT_IS_EDIT_PROFILE_FLOW", true);
        if (ac.e(a))
        {
            bundle.putString("com.instagram.android.login.fragment.PhoneNumberEntryFragment.ARGUMENT_COUNTRY_CODE", ac.f(a).g());
            bundle.putString("com.instagram.android.login.fragment.PhoneNumberEntryFragment.ARGUMENT_NATIONAL_NUMBER", ac.f(a).h());
        }
        (new a(a.p())).a(new ad(), bundle).a();
    }
}
