// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.os.Bundle;
import android.view.View;
import com.instagram.base.a.a.a;

// Referenced classes of package com.instagram.android.login.fragment:
//            a, o

final class b
    implements android.view.View.OnClickListener
{

    final com.instagram.android.login.fragment.a a;

    b(com.instagram.android.login.fragment.a a1)
    {
        a = a1;
        super();
    }

    public final void onClick(View view)
    {
        com.instagram.p.b.aj.c();
        Bundle bundle = new Bundle();
        bundle.putString("com.instagram.android.login.fragment.ARGUMENT_USERNAME", a.j().getString("com.instagram.android.login.fragment.ARGUMENT_USERNAME"));
        (new a(a.p())).a(new o(), bundle).a();
    }
}
