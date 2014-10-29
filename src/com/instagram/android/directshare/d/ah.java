// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.d;

import android.content.DialogInterface;
import com.instagram.f.a.a.o;
import com.instagram.l.b.a;

// Referenced classes of package com.instagram.android.directshare.d:
//            ad

final class ah
    implements android.content.DialogInterface.OnClickListener
{

    final ad a;

    ah(ad ad1)
    {
        a = ad1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        (new o(ad.c(a), ad.i(a), ad.f(a))).g();
        if (!com.instagram.l.b.a.a().l())
        {
            com.instagram.android.directshare.b.a.a(ad.c(a));
            com.instagram.l.b.a.a().m();
        }
    }
}
