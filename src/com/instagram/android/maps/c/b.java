// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.c;

import android.content.DialogInterface;

// Referenced classes of package com.instagram.android.maps.c:
//            c, a

final class b
    implements android.content.DialogInterface.OnClickListener
{

    final a a;

    private b(a a1)
    {
        a = a1;
        super();
    }

    b(a a1, byte byte0)
    {
        this(a1);
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.dismiss();
        (new c(com.instagram.android.maps.c.a.a(a), com.instagram.android.maps.c.a.b(a))).a();
    }
}
