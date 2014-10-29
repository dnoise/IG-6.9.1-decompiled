// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.util.Pair;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.facebook:
//            bg, bn, bl, bm

final class be
    implements Runnable
{

    final ArrayList a;
    final bl b;

    be(ArrayList arraylist, bl bl1)
    {
        a = arraylist;
        b = bl1;
        super();
    }

    public final void run()
    {
        Pair pair;
        for (Iterator iterator = a.iterator(); iterator.hasNext(); ((bg)pair.first).a((bn)pair.second))
        {
            pair = (Pair)iterator.next();
        }

        bm bm1;
        for (Iterator iterator1 = b.e().iterator(); iterator1.hasNext(); bm1.a())
        {
            bm1 = (bm)iterator1.next();
            bl _tmp = b;
        }

    }
}
