// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.content.DialogInterface;

// Referenced classes of package com.instagram.android.fragment:
//            dx, du

final class dz
    implements android.content.DialogInterface.OnClickListener
{

    final dx a;

    dz(dx dx1)
    {
        a = dx1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.dismiss();
        du.a(a.a, null);
    }
}
