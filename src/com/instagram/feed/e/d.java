// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.e;

import android.content.DialogInterface;

// Referenced classes of package com.instagram.feed.e:
//            c

final class d
    implements android.content.DialogInterface.OnDismissListener
{

    final c a;

    d(c c1)
    {
        a = c1;
        super();
    }

    public final void onDismiss(DialogInterface dialoginterface)
    {
        c.a(a);
    }
}
