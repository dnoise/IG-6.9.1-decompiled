// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.b;

import android.view.View;
import com.instagram.feed.d.l;

// Referenced classes of package com.instagram.android.feed.a.b:
//            a, f

final class d
    implements android.view.View.OnClickListener
{

    final l a;
    final View b;
    final int c;
    final a d;

    d(a a1, l l, View view, int i)
    {
        d = a1;
        a = l;
        b = view;
        c = i;
        super();
    }

    public final void onClick(View view)
    {
        com.instagram.android.feed.a.b.a.f(d).a(a, b, c);
    }
}
