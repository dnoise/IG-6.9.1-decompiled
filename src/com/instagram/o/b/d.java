// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.o.b;

import android.content.DialogInterface;

// Referenced classes of package com.instagram.o.b:
//            a

final class d
    implements android.content.DialogInterface.OnClickListener
{

    final a a;

    d(a a1)
    {
        a = a1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.dismiss();
    }
}
