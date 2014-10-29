// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.share.b;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;

// Referenced classes of package com.instagram.share.b:
//            r

public final class s
{

    public static com.instagram.share.b.r a(l l1)
    {
        com.instagram.share.b.r r1 = new com.instagram.share.b.r();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            r1 = null;
        } else
        {
            while (l1.nextToken() != r.c) 
            {
                String s1 = l1.getCurrentName();
                l1.nextToken();
                a(r1, s1, l1);
                l1.skipChildren();
            }
        }
        return r1;
    }

    private static boolean a(com.instagram.share.b.r r1, String s1, l l1)
    {
        if ("publish_actions".equals(s1))
        {
            r1.a = l1.getValueAsBoolean();
            return true;
        }
        if ("publish_stream".equals(s1))
        {
            r1.b = l1.getValueAsBoolean();
            return true;
        } else
        {
            return false;
        }
    }
}
