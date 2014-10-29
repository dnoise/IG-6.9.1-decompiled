// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.d;

import android.content.DialogInterface;
import android.os.Handler;

// Referenced classes of package com.instagram.android.maps.d:
//            l, q

final class p
    implements android.content.DialogInterface.OnClickListener
{

    final l a;

    p(l l1)
    {
        a = l1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.dismiss();
        l.e(a).post(new q(this));
    }
}
