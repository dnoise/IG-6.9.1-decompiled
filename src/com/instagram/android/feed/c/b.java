// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.c;

import android.content.DialogInterface;
import com.instagram.android.g.b.a;

// Referenced classes of package com.instagram.android.feed.c:
//            a

final class b
    implements android.content.DialogInterface.OnClickListener
{

    final com.instagram.user.c.a a;
    final com.instagram.android.feed.c.a b;

    b(com.instagram.android.feed.c.a a1, com.instagram.user.c.a a2)
    {
        b = a1;
        a = a2;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        com.instagram.android.g.b.a.a(a, com.instagram.android.feed.c.a.a(b), com.instagram.android.feed.c.a.b(b));
    }
}
