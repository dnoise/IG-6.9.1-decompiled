// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.a;

import android.widget.ListView;
import com.instagram.android.feed.a.a;

// Referenced classes of package com.instagram.android.feed.a.a:
//            b

final class c
    implements Runnable
{

    final b a;

    c(b b1)
    {
        a = b1;
        super();
    }

    public final void run()
    {
        if (com.instagram.android.feed.a.a.b.a(a).f() != null && com.instagram.android.feed.a.a.b.a(a).f().getChildCount() != 0 && !com.instagram.android.feed.a.a.b.a(a).n())
        {
            b.b(a).a();
        }
    }
}
