// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.f;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.instagram.user.d.c;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.feed.f:
//            c, f

public final class g
{

    public static com.instagram.feed.f.c a(l l1)
    {
        com.instagram.feed.f.c c1 = new com.instagram.feed.f.c();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            c1 = null;
        } else
        {
            while (l1.nextToken() != r.c) 
            {
                String s = l1.getCurrentName();
                l1.nextToken();
                a(c1, s, l1);
                l1.skipChildren();
            }
        }
        return c1;
    }

    private static boolean a(com.instagram.feed.f.c c1, String s, l l1)
    {
        if ("button".equals(s))
        {
            r r7 = l1.getCurrentToken();
            r r8 = r.m;
            String s2 = null;
            if (r7 != r8)
            {
                s2 = l1.getText();
            }
            c1.c = s2;
            return true;
        }
        if ("icon".equals(s))
        {
            r r5 = l1.getCurrentToken();
            r r6 = r.m;
            String s1 = null;
            if (r5 != r6)
            {
                s1 = l1.getText();
            }
            c1.a = s1;
            return true;
        }
        if ("message".equals(s))
        {
            r r3 = l1.getCurrentToken();
            r r4 = r.d;
            ArrayList arraylist1 = null;
            if (r3 == r4)
            {
                arraylist1 = new ArrayList();
                do
                {
                    if (l1.nextToken() == r.e)
                    {
                        break;
                    }
                    e e = f.a(l1);
                    if (e != null)
                    {
                        arraylist1.add(e);
                    }
                } while (true);
            }
            c1.b = arraylist1;
            return true;
        }
        if ("suggestions".equals(s))
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
                    com.instagram.user.d.a a1 = c.a(l1);
                    if (a1 != null)
                    {
                        arraylist.add(a1);
                    }
                } while (true);
            }
            c1.d = arraylist;
            return true;
        } else
        {
            return false;
        }
    }
}
