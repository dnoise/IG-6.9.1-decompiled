// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import com.facebook.h.a;
import com.facebook.h.b;
import java.util.ArrayList;
import java.util.Map;

// Referenced classes of package com.facebook:
//            bg, bn, c

final class g
    implements bg
{

    final ArrayList a;
    final c b;

    g(c c, ArrayList arraylist)
    {
        b = c;
        a = arraylist;
        super();
    }

    public final void a(bn bn1)
    {
        a a1;
        com.facebook.h.g g1;
        b b1;
        try
        {
            a1 = (a)bn1.c();
        }
        catch (Exception exception)
        {
            return;
        }
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        g1 = a1.a();
        if (g1 == null)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        if (g1.size() == 1)
        {
            b1 = (b)g1.get(0);
            a.addAll(b1.c().keySet());
        }
    }
}
