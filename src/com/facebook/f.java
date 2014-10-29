// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import com.facebook.h.h;
import java.util.ArrayList;

// Referenced classes of package com.facebook:
//            bg, bn, c

final class f
    implements bg
{

    final ArrayList a;
    final c b;

    f(c c, ArrayList arraylist)
    {
        b = c;
        a = arraylist;
        super();
    }

    public final void a(bn bn1)
    {
        h h1;
        try
        {
            h1 = (h)bn1.c();
        }
        catch (Exception exception)
        {
            return;
        }
        if (h1 == null)
        {
            break MISSING_BLOCK_LABEL_26;
        }
        a.add(h1.a());
    }
}
