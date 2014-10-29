// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.a;

import android.content.DialogInterface;
import com.instagram.common.a.a.k;

// Referenced classes of package com.instagram.android.feed.a.a:
//            aa, x, a, z

final class ac
    implements android.content.DialogInterface.OnClickListener
{

    final aa a;

    ac(aa aa1)
    {
        a = aa1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        x.e(a.a).a((new a(x.d(a.a))).a(new z(a.a, x.d(a.a), (byte)0)));
    }
}
