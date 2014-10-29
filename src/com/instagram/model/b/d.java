// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.model.b;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;

// Referenced classes of package com.instagram.model.b:
//            a

public final class d
{

    public static a a(l l1)
    {
        a a1 = new a();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            a1 = null;
        } else
        {
            while (l1.nextToken() != r.c) 
            {
                String s = l1.getCurrentName();
                l1.nextToken();
                a(a1, s, l1);
                l1.skipChildren();
            }
        }
        return a1;
    }

    private static boolean a(a a1, String s, l l1)
    {
        if ("has_commented".equals(s))
        {
            a1.d = l1.getValueAsBoolean();
            return true;
        }
        if ("has_liked".equals(s))
        {
            a1.c = l1.getValueAsBoolean();
            return true;
        }
        if ("user".equals(s))
        {
            a1.a = com.instagram.user.c.l.a(l1);
            return true;
        }
        if ("has_seen".equals(s))
        {
            a1.b = l1.getValueAsBoolean();
            return true;
        } else
        {
            return false;
        }
    }
}
