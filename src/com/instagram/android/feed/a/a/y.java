// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.a;

import android.content.DialogInterface;

// Referenced classes of package com.instagram.android.feed.a.a:
//            x

final class y
    implements android.content.DialogInterface.OnDismissListener
{

    final x a;

    y(x x1)
    {
        a = x1;
        super();
    }

    public final void onDismiss(DialogInterface dialoginterface)
    {
        x.a(a);
    }
}
