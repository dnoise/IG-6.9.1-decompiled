// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.k.c;

import android.content.DialogInterface;

// Referenced classes of package com.instagram.android.k.c:
//            n, a

final class o
    implements android.content.DialogInterface.OnClickListener
{

    final n a;

    o(n n1)
    {
        a = n1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.dismiss();
        com.instagram.android.k.c.a.a(a.a);
    }
}
