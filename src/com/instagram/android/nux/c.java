// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.nux;

import android.content.DialogInterface;

// Referenced classes of package com.instagram.android.nux:
//            a, e

final class c
    implements android.content.DialogInterface.OnCancelListener
{

    final a a;

    c(a a1)
    {
        a = a1;
        super();
    }

    public final void onCancel(DialogInterface dialoginterface)
    {
        dialoginterface.dismiss();
        com.instagram.android.nux.a.f(a);
        com.instagram.android.nux.a.d(a).c();
    }
}
