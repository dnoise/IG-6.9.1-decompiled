// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.k.c;

import com.instagram.android.k.b.d;
import com.instagram.common.a.c.b;
import com.instagram.share.vkontakte.a;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.instagram.android.k.c:
//            a

final class e extends d
{

    final com.instagram.android.k.c.a a;

    e(com.instagram.android.k.c.a a1)
    {
        a = a1;
        super();
    }

    public final void a(b b1)
    {
        java.util.Map.Entry entry;
        for (Iterator iterator = com.instagram.share.vkontakte.a.a().g().entrySet().iterator(); iterator.hasNext(); b1.a((String)entry.getKey(), (String)entry.getValue()))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

    }

    protected final String d_()
    {
        return "vkontakte/find/";
    }
}
