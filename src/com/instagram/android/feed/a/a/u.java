// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.a;

import android.view.View;

// Referenced classes of package com.instagram.android.feed.a.a:
//            t, m

final class u
    implements android.view.View.OnClickListener
{

    final t a;

    u(t t1)
    {
        a = t1;
        super();
    }

    public final void onClick(View view)
    {
        if (!t.a(a).a())
        {
            t.b(a);
        }
    }
}
