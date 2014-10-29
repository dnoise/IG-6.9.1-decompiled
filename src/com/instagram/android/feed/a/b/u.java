// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.b;

import android.view.View;
import com.instagram.feed.d.ai;
import java.util.List;

// Referenced classes of package com.instagram.android.feed.a.b:
//            v

final class u
    implements android.view.View.OnClickListener
{

    final v a;
    final List b;
    final int c;
    final int d;

    u(v v1, List list, int i, int j)
    {
        a = v1;
        b = list;
        c = i;
        d = j;
        super();
    }

    public final void onClick(View view)
    {
        if (a != null)
        {
            a.a((ai)b.get(c), 3 * d + c);
        }
    }
}
