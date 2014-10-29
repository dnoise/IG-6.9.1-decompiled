// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.a.g;

import com.facebook.l.a.a;
import java.util.Arrays;

// Referenced classes of package com.instagram.common.a.g:
//            a, b

final class c
    implements a
{

    final b a;

    c(b b)
    {
        a = b;
        super();
    }

    public final void badVerifyInvoked(String s, String as[], String as1[])
    {
        com.instagram.common.a.g.a.b();
        Object aobj[] = new Object[3];
        aobj[0] = s;
        aobj[1] = Arrays.asList(as);
        aobj[2] = Arrays.asList(as1);
    }
}
