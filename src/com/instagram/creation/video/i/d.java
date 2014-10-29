// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.i;

import com.instagram.creation.video.b.a;
import java.util.Iterator;

// Referenced classes of package com.instagram.creation.video.i:
//            a, c

public final class d extends a
{

    public d()
    {
    }

    public final int c()
    {
        Iterator iterator = iterator();
        int i = 0;
        while (iterator.hasNext()) 
        {
            com.instagram.creation.video.i.a a1 = (com.instagram.creation.video.i.a)iterator.next();
            int j;
            if (a1.c() != c.d)
            {
                j = (int)((long)i + Math.max(0L, a1.b()));
            } else
            {
                j = i;
            }
            i = j;
        }
        return i;
    }

    public final com.instagram.creation.video.i.a d()
    {
        return (com.instagram.creation.video.i.a)a();
    }
}
