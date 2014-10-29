// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.view.View;
import com.instagram.android.nux.af;
import com.instagram.b.c.a;

// Referenced classes of package com.instagram.android.fragment:
//            dn

final class ds
    implements android.view.View.OnClickListener
{

    final dn a;

    ds(dn dn1)
    {
        a = dn1;
        super();
    }

    public final void onClick(View view)
    {
        com.instagram.b.c.a.a().a(a.l(), "next");
        af.a(a.l());
    }
}
