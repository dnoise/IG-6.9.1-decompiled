// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.d;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;

// Referenced classes of package com.instagram.j.d:
//            e

public final class k
{

    public static e a(l l1)
    {
        e e1 = new e();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            e1 = null;
        } else
        {
            while (l1.nextToken() != r.c) 
            {
                String s = l1.getCurrentName();
                l1.nextToken();
                a(e1, s, l1);
                l1.skipChildren();
            }
        }
        return e1;
    }

    private static boolean a(e e1, String s, l l1)
    {
        if ("outgoing_request".equals(s))
        {
            e1.c = l1.getValueAsBoolean();
            return true;
        }
        if ("following".equals(s))
        {
            e1.b = l1.getValueAsBoolean();
            return true;
        }
        if ("user_info".equals(s))
        {
            e1.a = com.instagram.user.c.l.a(l1);
            return true;
        } else
        {
            return false;
        }
    }
}
