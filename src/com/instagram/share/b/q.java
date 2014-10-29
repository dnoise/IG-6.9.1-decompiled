// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.share.b;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.share.b:
//            p, s

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
                String s1 = l1.getCurrentName();
                l1.nextToken();
                a(p1, s1, l1);
                l1.skipChildren();
            }
        }
        return p1;
    }

    private static boolean a(p p1, String s1, l l1)
    {
        if ("error".equals(s1))
        {
            r r4 = l1.getCurrentToken();
            r r5 = r.m;
            String s2 = null;
            if (r4 != r5)
            {
                s2 = l1.getText();
            }
            p1.b = s2;
            return true;
        }
        if ("data".equals(s1))
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
                    com.instagram.share.b.r r3 = s.a(l1);
                    if (r3 != null)
                    {
                        arraylist.add(r3);
                    }
                } while (true);
            }
            p1.a = arraylist;
            return true;
        } else
        {
            return false;
        }
    }
}
