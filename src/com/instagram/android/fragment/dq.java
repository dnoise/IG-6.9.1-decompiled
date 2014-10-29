// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.view.View;

// Referenced classes of package com.instagram.android.fragment:
//            dn

final class dq
    implements android.view.View.OnClickListener
{

    final dn a;

    dq(dn dn1)
    {
        a = dn1;
        super();
    }

    public final void onClick(View view)
    {
        if (!dn.c(a) && dn.d(a))
        {
            dn.e(a);
        }
    }
}
