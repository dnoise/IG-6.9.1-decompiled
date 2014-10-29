// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.e;

import android.content.DialogInterface;
import com.instagram.android.directshare.a.a;
import com.instagram.f.a.a.i;

// Referenced classes of package com.instagram.android.directshare.e:
//            b, a, k, l

final class j
    implements android.content.DialogInterface.OnClickListener
{

    final b a;

    j(b b1)
    {
        a = b1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i1)
    {
        com.instagram.android.directshare.a.a.c(b.e(a).getCount());
        (new i(a.n(), a.z(), new k(a, null, l.c))).g();
    }
}
