// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.os.Bundle;
import android.view.View;
import com.instagram.base.a.a.a;

// Referenced classes of package com.instagram.android.login.fragment:
//            h, a

final class j
    implements android.view.View.OnClickListener
{

    final h a;

    j(h h1)
    {
        a = h1;
        super();
    }

    public final void onClick(View view)
    {
        Bundle bundle = new Bundle();
        bundle.putString("com.instagram.android.login.fragment.ARGUMENT_USERNAME", h.c(a));
        (new a(a.p())).a(new com.instagram.android.login.fragment.a(), bundle).a();
    }
}
