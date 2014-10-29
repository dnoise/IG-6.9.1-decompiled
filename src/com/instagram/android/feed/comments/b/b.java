// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.comments.b;

import com.instagram.api.j.a;
import com.instagram.api.j.j;
import com.instagram.g.c;

final class b extends a
{

    final com.instagram.android.feed.comments.a.a a;
    final com.instagram.feed.d.b b;

    b(com.instagram.android.feed.comments.a.a a1, com.instagram.feed.d.b b1)
    {
        a = a1;
        b = b1;
        super();
    }

    protected final void a(j j)
    {
label0:
        {
            if (j != null)
            {
                if (!c.b(j))
                {
                    break label0;
                }
                a.a(b, j);
            }
            return;
        }
        a.c(b);
    }

    protected final volatile void a(Object obj)
    {
    }
}
