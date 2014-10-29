// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.d;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.instagram.api.k.a.f;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.j.d:
//            a, n

public final class b
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
        if ("stories".equals(s))
        {
            r r1 = l1.getCurrentToken();
            r r2 = r.d;
            ArrayList arraylist = null;
            if (r1 == r2)
            {
                arraylist = new ArrayList();
                do
                {
                    if (l1.nextToken() == r.e)
                    {
                        break;
                    }
                    c c = n.a(l1);
                    if (c != null)
                    {
                        arraylist.add(c);
                    }
                } while (true);
            }
            a1.a = arraylist;
            return true;
        } else
        {
            return f.a(a1, s, l1);
        }
    }
}
