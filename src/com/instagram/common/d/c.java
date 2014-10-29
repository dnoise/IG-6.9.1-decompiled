// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.d;

import android.content.IntentFilter;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.instagram.common.d:
//            g, d, b, a, 
//            h

public final class c
    implements g
{

    final b a;
    private final Map b = new HashMap();
    private IntentFilter c;

    protected c(b b1)
    {
        a = b1;
        super();
    }

    public final g a(String s, a a1)
    {
        b.put(s, a1);
        return this;
    }

    public final h a()
    {
        return new d(a, b, c);
    }
}
