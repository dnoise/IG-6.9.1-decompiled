// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.d;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;

// Referenced classes of package com.instagram.j.d:
//            p

public final class q
{

    public static p a(l l1)
    {
        p p1 = new p();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            p1 = null;
        } else
        {
            while (l1.nextToken() != r.c) 
            {
                String s = l1.getCurrentName();
                l1.nextToken();
                a(p1, s, l1);
                l1.skipChildren();
            }
        }
        return p1;
    }

    private static boolean a(p p1, String s, l l1)
    {
        if ("relationships".equals(s))
        {
            p1.d = l1.getValueAsInt();
            return true;
        }
        if ("photos_of_you".equals(s))
        {
            p1.e = l1.getValueAsInt();
            return true;
        }
        if ("usertags".equals(s))
        {
            p1.c = l1.getValueAsInt();
            return true;
        }
        if ("comments".equals(s))
        {
            p1.a = l1.getValueAsInt();
            return true;
        }
        if ("likes".equals(s))
        {
            p1.b = l1.getValueAsInt();
            return true;
        } else
        {
            return false;
        }
    }
}
