// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.d;

import android.view.View;
import com.instagram.android.g.g;
import com.instagram.feed.d.l;
import com.instagram.feed.d.o;

// Referenced classes of package com.instagram.android.directshare.d:
//            c

final class z
    implements android.view.View.OnClickListener
{

    final c a;

    z(c c1)
    {
        a = c1;
        super();
    }

    public final void onClick(View view)
    {
        c c1 = a;
        int i;
        if (c.a(a).r())
        {
            i = o.b;
        } else
        {
            i = o.a;
        }
        c.a(c1, i, g.a);
    }
}
