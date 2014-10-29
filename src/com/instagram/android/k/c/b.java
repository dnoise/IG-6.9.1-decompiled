// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.k.c;

import android.view.View;
import com.instagram.b.c.a;

// Referenced classes of package com.instagram.android.k.c:
//            a

final class b
    implements android.view.View.OnClickListener
{

    final com.instagram.android.k.c.a a;

    b(com.instagram.android.k.c.a a1)
    {
        a = a1;
        super();
    }

    public final void onClick(View view)
    {
        com.instagram.b.c.a.a().a(a.l(), "next");
        com.instagram.android.k.c.a.a(a);
    }
}
