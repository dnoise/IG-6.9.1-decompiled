// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.nux;

import android.view.View;
import com.instagram.p.b;
import com.instagram.registrationpush.a;

// Referenced classes of package com.instagram.android.nux:
//            n

final class u
    implements android.view.View.OnClickListener
{

    final n a;

    u(n n1)
    {
        a = n1;
        super();
    }

    public final void onClick(View view)
    {
        b.t.c();
        (new a(a.n())).c();
        com.instagram.android.nux.n.a(a);
    }
}
