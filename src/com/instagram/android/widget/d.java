// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.widget;

import android.content.DialogInterface;
import com.instagram.l.b.a;

// Referenced classes of package com.instagram.android.widget:
//            a

final class d
    implements android.content.DialogInterface.OnClickListener
{

    final a a;
    final com.instagram.android.widget.a b;

    d(com.instagram.android.widget.a a1, a a2)
    {
        b = a1;
        a = a2;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.dismiss();
        a.h(true);
        com.instagram.android.widget.a.a(b);
    }
}
