// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.s;
import android.telephony.PhoneNumberUtils;
import com.instagram.android.d.a;
import com.instagram.android.login.a.i;

// Referenced classes of package com.instagram.android.login.fragment:
//            an, ci, bk

final class bj extends i
{

    final an a;

    bj(an an1, Context context, Handler handler, s s)
    {
        a = an1;
        super(context, handler, s);
    }

    private void c()
    {
        Bundle bundle = new Bundle();
        bundle.putBoolean("com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_IS_REG_FLOW", true);
        bundle.putString("com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_EMAIL", an.d(a));
        bundle.putString("com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_USERNAME", com.instagram.android.login.fragment.an.a(a));
        bundle.putString("com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_PASSWORD", an.e(a));
        bundle.putString("com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_NAME", an.f(a));
        bundle.putParcelable("com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_PROFILE_PIC", an.g(a).h());
        bundle.putString("com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_PHONE_NUMBER", PhoneNumberUtils.stripSeparators((new StringBuilder()).append(an.h(a)).append(com.instagram.android.login.fragment.an.i(a)).toString()));
        bundle.putString("com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_GUID", com.instagram.common.z.a.b(a.l()));
        bundle.putString("com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_DEVICE_ID", com.instagram.common.z.a.a(a.l()));
        ci ci1 = new ci();
        ci1.a(a);
        an.c(a).post(new bk(this, ci1, bundle));
    }

    protected final void a(Object obj)
    {
        c();
    }
}
