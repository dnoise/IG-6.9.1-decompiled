// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.m.a;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.instagram.api.k.a.f;
import com.instagram.m.d;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.instagram.m.a:
//            b

public final class c
{

    private final Set a;

    public c(Set set)
    {
        a = set;
    }

    private boolean a(b b1, String s, l l1)
    {
        if (a.contains(s))
        {
            HashMap hashmap = new HashMap();
            String s1;
            for (; l1.nextToken() != r.c; hashmap.put(s1, l1.getText()))
            {
                s1 = l1.getCurrentName();
                l1.nextToken();
            }

            b1.a.add(new d(s, hashmap));
            return true;
        } else
        {
            return f.a(b1, s, l1);
        }
    }

    public final b a(l l1)
    {
        b b1 = new b();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            b1 = null;
        } else
        {
            while (l1.nextToken() != r.c) 
            {
                String s = l1.getCurrentName();
                l1.nextToken();
                a(b1, s, l1);
                l1.skipChildren();
            }
        }
        return b1;
    }
}
