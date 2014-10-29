// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.g;

import com.facebook.bo;
import com.facebook.cc;
import com.facebook.ch;

// Referenced classes of package com.facebook.g:
//            q

final class s
    implements cc
{

    final q a;
    private final cc b;

    public s(q q1, cc cc1)
    {
        a = q1;
        super();
        b = cc1;
    }

    public final void a(bo bo, ch ch1, Exception exception)
    {
        if (b != null && a.e())
        {
            b.a(bo, ch1, exception);
        }
        if (bo == q.b(a) && ch1.b())
        {
            a.a(null);
        }
    }
}
