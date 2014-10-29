// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.e;

import android.content.DialogInterface;
import com.instagram.f.a.a.j;
import com.instagram.f.c.a;

// Referenced classes of package com.instagram.android.directshare.e:
//            b, k, l

final class i
    implements android.content.DialogInterface.OnClickListener
{

    final a a;
    final b b;

    i(b b1, a a1)
    {
        b = b1;
        a = a1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i1)
    {
        (new j(b.n(), b.z(), new k(b, a, com.instagram.android.directshare.e.l.a), a.a().g())).g();
        com.instagram.android.directshare.a.a.a(a, false);
    }
}
