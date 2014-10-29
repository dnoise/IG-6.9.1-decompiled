// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c.b;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.android.c.b:
//            h

public final class i
{

    public static h a(l l1)
    {
        h h1 = new h();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            h1 = null;
        } else
        {
            while (l1.nextToken() != r.c) 
            {
                String s = l1.getCurrentName();
                l1.nextToken();
                a(h1, s, l1);
                l1.skipChildren();
            }
        }
        return h1;
    }

    private static boolean a(h h1, String s, l l1)
    {
        if ("data".equals(s))
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
                    com.instagram.share.b.h h2 = com.instagram.share.b.i.a(l1);
                    if (h2 != null)
                    {
                        arraylist.add(h2);
                    }
                } while (true);
            }
            h1.a = arraylist;
            return true;
        } else
        {
            return false;
        }
    }
}
