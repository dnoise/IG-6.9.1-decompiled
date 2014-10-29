// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.c;

import android.view.View;
import com.instagram.android.c.a.h;
import com.instagram.feed.d.l;

// Referenced classes of package com.instagram.android.people.c:
//            a, l

final class d
    implements android.view.View.OnClickListener
{

    final l a;
    final a b;

    d(a a1, l l1)
    {
        b = a1;
        a = l1;
        super();
    }

    public final void onClick(View view)
    {
        if (!a.Y())
        {
            return;
        } else
        {
            (new h(com.instagram.android.people.c.a.f(b), com.instagram.android.people.c.a.g(b), "remove", a, new com.instagram.android.people.c.l(b, "remove", (byte)0))).g();
            return;
        }
    }
}
