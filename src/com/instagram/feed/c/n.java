// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.c;

import com.fasterxml.jackson.a.e;
import com.fasterxml.jackson.a.l;
import com.instagram.common.n.a;

// Referenced classes of package com.instagram.feed.c:
//            b, a

public final class n
{

    String a;
    com.instagram.feed.c.a b;

    public n()
    {
    }

    public final com.instagram.feed.c.a a()
    {
        return b;
    }

    final n b()
    {
        l l1 = a.a.createParser(a);
        l1.nextToken();
        b = com.instagram.feed.c.b.a(l1);
        return this;
    }
}
