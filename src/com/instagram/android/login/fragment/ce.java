// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.view.View;
import com.instagram.p.b;
import com.instagram.share.b.a;

// Referenced classes of package com.instagram.android.login.fragment:
//            bz

final class ce
    implements android.view.View.OnClickListener
{

    final bz a;

    ce(bz bz1)
    {
        a = bz1;
        super();
    }

    public final void onClick(View view)
    {
        b.as.c();
        com.instagram.share.b.a.a().a(a, new String[0], bz.c(a));
    }
}
