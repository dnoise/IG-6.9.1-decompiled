// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.d;

import android.content.DialogInterface;

// Referenced classes of package com.instagram.android.feed.d:
//            d

final class e
    implements android.content.DialogInterface.OnDismissListener
{

    final d a;

    e(d d1)
    {
        a = d1;
        super();
    }

    public final void onDismiss(DialogInterface dialoginterface)
    {
        d.a(a);
        d.b(a);
    }
}
