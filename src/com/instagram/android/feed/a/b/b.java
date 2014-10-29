// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.b;

import android.view.View;
import com.instagram.android.feed.e.h;
import com.instagram.android.g.g;
import com.instagram.feed.d.l;
import com.instagram.feed.d.o;

// Referenced classes of package com.instagram.android.feed.a.b:
//            a

final class b
    implements android.view.View.OnClickListener
{

    final l a;
    final int b;
    final a c;

    b(a a1, l l1, int i)
    {
        c = a1;
        a = l1;
        b = i;
        super();
    }

    public final void onClick(View view)
    {
        android.content.Context context = com.instagram.android.feed.a.b.a.a(c);
        android.support.v4.app.an an = com.instagram.android.feed.a.b.a.b(c);
        l l1 = a;
        int i = b;
        int j;
        if (a.r())
        {
            j = o.b;
        } else
        {
            j = o.a;
        }
        h.a(context, an, l1, i, j, g.a, com.instagram.android.feed.a.b.a.c(c), com.instagram.android.feed.a.b.a.d(c));
    }
}
