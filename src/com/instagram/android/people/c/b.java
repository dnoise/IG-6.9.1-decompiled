// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.c;

import android.content.DialogInterface;

// Referenced classes of package com.instagram.android.people.c:
//            a

final class b
    implements android.content.DialogInterface.OnDismissListener
{

    final a a;

    b(a a1)
    {
        a = a1;
        super();
    }

    public final void onDismiss(DialogInterface dialoginterface)
    {
        com.instagram.android.people.c.a.a(a);
        com.instagram.android.people.c.a.b(a);
    }
}
