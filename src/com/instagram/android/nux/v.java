// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.nux;

import android.view.View;
import com.instagram.common.analytics.a;
import com.instagram.common.analytics.d;
import com.instagram.p.b;

// Referenced classes of package com.instagram.android.nux:
//            n

final class v
    implements android.view.View.OnClickListener
{

    final n a;

    v(n n1)
    {
        a = n1;
        super();
    }

    public final void onClick(View view)
    {
        b.v.c();
        com.instagram.common.analytics.a.a().a(new com.instagram.common.analytics.b("login_clicked", a));
        com.instagram.android.nux.n.b(a);
    }
}
