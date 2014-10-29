// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.nux;

import android.content.DialogInterface;
import com.instagram.p.b;

// Referenced classes of package com.instagram.android.nux:
//            n

final class ac
    implements android.content.DialogInterface.OnClickListener
{

    final n a;

    ac(n n1)
    {
        a = n1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.dismiss();
        b.k.c();
        com.instagram.android.nux.n.b(a);
    }
}
