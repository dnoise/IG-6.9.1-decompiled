// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.comments.a;

import android.view.View;

// Referenced classes of package com.instagram.feed.comments.a:
//            a, g

final class b
    implements android.view.View.OnClickListener
{

    final com.instagram.feed.d.b a;
    final a b;

    b(a a1, com.instagram.feed.d.b b1)
    {
        b = a1;
        a = b1;
        super();
    }

    public final void onClick(View view)
    {
        com.instagram.feed.comments.a.a.a(b).a(a.g(), "comment_owner");
    }
}
