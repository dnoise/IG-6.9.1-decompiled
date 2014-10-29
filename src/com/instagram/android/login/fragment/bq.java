// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.content.DialogInterface;
import com.instagram.p.b;

// Referenced classes of package com.instagram.android.login.fragment:
//            an

final class bq
    implements android.content.DialogInterface.OnClickListener
{

    final an a;

    bq(an an1)
    {
        a = an1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        an.e(a, an.q(a));
        an.r(a);
        b.U.c();
    }
}
