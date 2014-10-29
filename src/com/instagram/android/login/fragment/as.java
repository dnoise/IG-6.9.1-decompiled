// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.view.View;
import com.instagram.android.e.d;
import com.instagram.base.a.a;
import com.instagram.p.b;

// Referenced classes of package com.instagram.android.login.fragment:
//            an

final class as
    implements android.view.View.OnClickListener
{

    final an a;

    as(an an1)
    {
        a = an1;
        super();
    }

    public final void onClick(View view)
    {
        b.ab.b().a("guessed_country_code", an.h(a)).a();
        d d1 = new d();
        d1.a(a);
        d1.a(a.p(), null);
    }
}
