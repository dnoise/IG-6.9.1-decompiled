// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.g;

import com.instagram.common.y.b.a;
import java.io.FilterInputStream;
import java.io.InputStream;

// Referenced classes of package com.instagram.api.g:
//            k, j, i, n

final class l extends FilterInputStream
{

    final k a;

    l(k k1, InputStream inputstream)
    {
        a = k1;
        super(inputstream);
    }

    public final void close()
    {
        super.close();
        i i1 = com.instagram.api.g.k.a(a);
        com.instagram.api.g.j.a(a.a);
        i1.e(com.instagram.common.y.b.a.c());
        j.b(a.a).a(com.instagram.api.g.k.a(a));
    }
}
