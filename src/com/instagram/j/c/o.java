// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.c;

import android.support.v4.app.Fragment;
import android.support.v4.app.s;
import com.instagram.ui.b.a;

// Referenced classes of package com.instagram.j.c:
//            e, s, g

final class o extends a
{

    final g a;

    public o(g g, s s1)
    {
        a = g;
        super(s1);
    }

    public final Fragment a(int i)
    {
        if (i == 0)
        {
            return new e();
        }
        if (i == 1)
        {
            return new com.instagram.j.c.s();
        } else
        {
            throw new IllegalArgumentException("Invalid position");
        }
    }

    public final int c()
    {
        return 2;
    }
}
