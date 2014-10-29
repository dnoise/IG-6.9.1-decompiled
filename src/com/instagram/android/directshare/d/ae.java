// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.d;

import android.content.DialogInterface;

// Referenced classes of package com.instagram.android.directshare.d:
//            ad

final class ae
    implements android.content.DialogInterface.OnDismissListener
{

    final ad a;

    ae(ad ad1)
    {
        a = ad1;
        super();
    }

    public final void onDismiss(DialogInterface dialoginterface)
    {
        ad.a(a);
    }
}
