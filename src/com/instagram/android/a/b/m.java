// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a.b;

import android.content.Context;
import android.support.v4.app.an;
import android.view.View;
import com.instagram.user.c.a;
import com.instagram.user.c.h;
import com.instagram.user.follow.k;

// Referenced classes of package com.instagram.android.a.b:
//            n

final class m
    implements android.view.View.OnClickListener
{

    final Context a;
    final an b;
    final a c;
    final n d;

    m(Context context, an an, a a1, n n1)
    {
        a = context;
        b = an;
        c = a1;
        d = n1;
        super();
    }

    public final void onClick(View view)
    {
        (new k(a, b, h.d, c)).g();
        com.instagram.android.a.b.n.a(d).setVisibility(8);
    }
}
