// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.view.View;
import com.instagram.p.b;
import com.instagram.share.b.a;

// Referenced classes of package com.instagram.android.login.fragment:
//            a

final class d
    implements android.view.View.OnClickListener
{

    final com.instagram.android.login.fragment.a a;

    d(com.instagram.android.login.fragment.a a1)
    {
        a = a1;
        super();
    }

    public final void onClick(View view)
    {
        b.ai.c();
        com.instagram.share.b.a.a().a(a, new String[0], com.instagram.android.login.fragment.a.a(a));
    }
}
