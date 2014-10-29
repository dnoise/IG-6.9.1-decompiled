// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.comments.a;

import android.content.DialogInterface;
import com.instagram.feed.comments.b.a;
import com.instagram.feed.comments.c.b;

// Referenced classes of package com.instagram.android.feed.comments.a:
//            a, s

final class i
    implements android.content.DialogInterface.OnClickListener
{

    final com.instagram.feed.d.b a;
    final com.instagram.android.feed.comments.a.a b;

    i(com.instagram.android.feed.comments.a.a a1, com.instagram.feed.d.b b1)
    {
        b = a1;
        a = b1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int j)
    {
        com.instagram.feed.comments.b.a.a(b.n(), b.z(), a, b.a, new s(b, (byte)0));
    }
}
