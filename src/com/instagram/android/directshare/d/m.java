// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.d;

import android.content.DialogInterface;
import com.instagram.android.feed.comments.b.a;
import com.instagram.feed.d.b;

// Referenced classes of package com.instagram.android.directshare.d:
//            c

final class m
    implements android.content.DialogInterface.OnClickListener
{

    final b a;
    final c b;

    m(c c, b b1)
    {
        b = c;
        a = b1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        switch (i)
        {
        default:
            return;

        case -1: 
            com.instagram.android.feed.comments.b.a.b(a, b);
            return;

        case -2: 
            com.instagram.feed.comments.b.a.a(a);
            return;
        }
    }
}
