// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.o.b;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;

// Referenced classes of package com.instagram.o.b:
//            j, l

public final class m
{

    public static j a(l l1)
    {
        j j1 = new j();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            j1 = null;
        } else
        {
            while (l1.nextToken() != r.c) 
            {
                String s = l1.getCurrentName();
                l1.nextToken();
                a(j1, s, l1);
                l1.skipChildren();
            }
        }
        return j1;
    }

    private static boolean a(j j1, String s, l l1)
    {
        if ("client_config".equals(s))
        {
            j1.a = l.a(l1);
            return true;
        } else
        {
            return false;
        }
    }
}
