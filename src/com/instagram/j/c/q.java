// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.c;

import android.view.View;

// Referenced classes of package com.instagram.j.c:
//            p, g

final class q
    implements android.view.View.OnClickListener
{

    final p a;

    q(p p1)
    {
        a = p1;
        super();
    }

    public final void onClick(View view)
    {
        g.a(a.a, g.a.intValue());
        a.a(g.a.intValue());
        g.e(a.a);
    }
}
