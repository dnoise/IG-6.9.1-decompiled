// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.d;

import android.view.View;

// Referenced classes of package com.instagram.android.directshare.d:
//            ad, c

final class q
    implements android.view.View.OnClickListener
{

    final c a;

    q(c c1)
    {
        a = c1;
        super();
    }

    public final void onClick(View view)
    {
        (new ad(a, c.a(a))).a();
    }
}
