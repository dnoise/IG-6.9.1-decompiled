// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.a.a;

import android.view.View;
import com.instagram.j.d.c;

// Referenced classes of package com.instagram.j.a.a:
//            a

final class j
    implements android.view.View.OnClickListener
{

    final a a;
    final c b;

    j(a a1, c c1)
    {
        a = a1;
        b = c1;
        super();
    }

    public final void onClick(View view)
    {
        a.a(b.d());
    }
}
