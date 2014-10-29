// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.k.c;

import android.content.DialogInterface;

// Referenced classes of package com.instagram.android.k.c:
//            k, a

final class l
    implements android.content.DialogInterface.OnClickListener
{

    final k a;

    l(k k1)
    {
        a = k1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        com.instagram.android.k.c.a.f(a.a);
        dialoginterface.dismiss();
    }
}
