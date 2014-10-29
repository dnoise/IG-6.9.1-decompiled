// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.d;

import android.content.DialogInterface;
import com.instagram.f.a.a.b;
import com.instagram.f.a.a.n;

// Referenced classes of package com.instagram.android.directshare.d:
//            ad

final class ag
    implements android.content.DialogInterface.OnClickListener
{

    final ad a;

    ag(ad ad1)
    {
        a = ad1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        (new n(ad.c(a), ad.i(a), ad.f(a), b.a)).g();
    }
}
