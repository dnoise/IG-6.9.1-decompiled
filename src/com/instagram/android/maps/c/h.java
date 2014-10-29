// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.c;

import android.content.DialogInterface;
import android.os.Handler;

// Referenced classes of package com.instagram.android.maps.c:
//            g, c, i

final class h
    implements android.content.DialogInterface.OnDismissListener
{

    final g a;

    h(g g1)
    {
        a = g1;
        super();
    }

    public final void onDismiss(DialogInterface dialoginterface)
    {
        c.b(a.b).post(new i(this));
    }
}
