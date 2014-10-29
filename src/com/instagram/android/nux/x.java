// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.nux;

import android.content.DialogInterface;
import android.support.v4.app.k;
import android.view.Window;

// Referenced classes of package com.instagram.android.nux:
//            w, n

final class x
    implements android.content.DialogInterface.OnDismissListener
{

    final w a;

    x(w w1)
    {
        a = w1;
        super();
    }

    public final void onDismiss(DialogInterface dialoginterface)
    {
        if (a.a.l() != null)
        {
            a.a.l().getWindow().setSoftInputMode(0);
        }
    }
}
