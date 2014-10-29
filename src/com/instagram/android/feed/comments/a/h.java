// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.comments.a;

import android.content.DialogInterface;
import com.instagram.android.feed.comments.b.a;
import com.instagram.feed.d.b;

// Referenced classes of package com.instagram.android.feed.comments.a:
//            a

final class h
    implements android.content.DialogInterface.OnClickListener
{

    final b a;
    final com.instagram.android.feed.comments.a.a b;

    h(com.instagram.android.feed.comments.a.a a1, b b1)
    {
        b = a1;
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
            com.instagram.android.feed.comments.b.a.a(a, b);
            return;

        case -2: 
            com.instagram.feed.comments.b.a.a(a);
            return;
        }
    }
}
