// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.c;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;

// Referenced classes of package com.instagram.user.c:
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
        if ("incoming_request".equals(s))
        {
            e1.c = Boolean.valueOf(l1.getValueAsBoolean());
            return true;
        }
        if ("blocking".equals(s))
        {
            e1.d = Boolean.valueOf(l1.getValueAsBoolean());
            return true;
        }
        if ("is_private".equals(s))
        {
            e1.e = Boolean.valueOf(l1.getValueAsBoolean());
            return true;
        }
        if ("outgoing_request".equals(s))
        {
            e1.a = l1.getValueAsBoolean();
            return true;
        }
        if ("following".equals(s))
        {
            e1.b = l1.getValueAsBoolean();
            return true;
        } else
        {
            return false;
        }
    }
}
