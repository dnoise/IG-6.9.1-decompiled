// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.nux;

import android.content.DialogInterface;
import com.instagram.user.c.a;

// Referenced classes of package com.instagram.android.nux:
//            n

final class r
    implements android.content.DialogInterface.OnClickListener
{

    final a a;
    final String b;
    final n c;

    r(n n1, a a1, String s)
    {
        c = n1;
        a = a1;
        b = s;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.dismiss();
        n.b(c, a, b);
    }
}
