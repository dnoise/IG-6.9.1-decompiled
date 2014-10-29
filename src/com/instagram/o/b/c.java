// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.o.b;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;

// Referenced classes of package com.instagram.o.b:
//            a

final class c
    implements android.content.DialogInterface.OnClickListener
{

    final Intent a;
    final a b;

    c(a a1, Intent intent)
    {
        b = a1;
        a = intent;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        com.instagram.o.b.a.a(b).startActivity(a);
    }
}
