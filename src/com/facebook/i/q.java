// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.i;

import java.util.LinkedHashMap;

// Referenced classes of package com.facebook.i:
//            p

final class q extends LinkedHashMap
{

    final p a;

    q(p p1, int i)
    {
        a = p1;
        super(i, 0.75F, true);
    }

    protected final boolean removeEldestEntry(java.util.Map.Entry entry)
    {
        return size() > p.a(a);
    }
}
