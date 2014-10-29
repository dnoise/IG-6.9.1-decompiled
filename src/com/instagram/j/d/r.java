// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.d;

import com.fasterxml.jackson.a.l;
import com.instagram.api.k.a.f;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.j.d:
//            o, q, n

public final class r
{

    public static o a(l l1)
    {
        o o1 = new o();
        if (l1.getCurrentToken() != com.fasterxml.jackson.a.r.b)
        {
            l1.skipChildren();
            return null;
        }
        for (; l1.nextToken() != com.fasterxml.jackson.a.r.c; l1.skipChildren())
        {
            String s = l1.getCurrentName();
            l1.nextToken();
            a(o1, s, l1);
        }

        return o1.e();
    }

    private static boolean a(o o1, String s, l l1)
    {
        if ("counts".equals(s))
        {
            o1.b = q.a(l1);
            return true;
        }
        if ("friend_request_stories".equals(s))
        {
            com.fasterxml.jackson.a.r r9 = l1.getCurrentToken();
            com.fasterxml.jackson.a.r r10 = com.fasterxml.jackson.a.r.d;
            ArrayList arraylist3 = null;
            if (r9 == r10)
            {
                arraylist3 = new ArrayList();
                do
                {
                    if (l1.nextToken() == com.fasterxml.jackson.a.r.e)
                    {
                        break;
                    }
                    c c3 = n.a(l1);
                    if (c3 != null)
                    {
                        arraylist3.add(c3);
                    }
                } while (true);
            }
            o1.d = arraylist3;
            return true;
        }
        if ("megaphone_stories".equals(s))
        {
            com.fasterxml.jackson.a.r r7 = l1.getCurrentToken();
            com.fasterxml.jackson.a.r r8 = com.fasterxml.jackson.a.r.d;
            ArrayList arraylist2 = null;
            if (r7 == r8)
            {
                arraylist2 = new ArrayList();
                do
                {
                    if (l1.nextToken() == com.fasterxml.jackson.a.r.e)
                    {
                        break;
                    }
                    c c2 = n.a(l1);
                    if (c2 != null)
                    {
                        arraylist2.add(c2);
                    }
                } while (true);
            }
            o1.c = arraylist2;
            return true;
        }
        if ("old_stories".equals(s))
        {
            com.fasterxml.jackson.a.r r5 = l1.getCurrentToken();
            com.fasterxml.jackson.a.r r6 = com.fasterxml.jackson.a.r.d;
            ArrayList arraylist1 = null;
            if (r5 == r6)
            {
                arraylist1 = new ArrayList();
                do
                {
                    if (l1.nextToken() == com.fasterxml.jackson.a.r.e)
                    {
                        break;
                    }
                    c c1 = n.a(l1);
                    if (c1 != null)
                    {
                        arraylist1.add(c1);
                    }
                } while (true);
            }
            o1.s = arraylist1;
            return true;
        }
        if ("new_stories".equals(s))
        {
            com.fasterxml.jackson.a.r r3 = l1.getCurrentToken();
            com.fasterxml.jackson.a.r r4 = com.fasterxml.jackson.a.r.d;
            ArrayList arraylist = null;
            if (r3 == r4)
            {
                arraylist = new ArrayList();
                do
                {
                    if (l1.nextToken() == com.fasterxml.jackson.a.r.e)
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
            o1.e = arraylist;
            return true;
        }
        if ("continuation_token".equals(s))
        {
            com.fasterxml.jackson.a.r r1 = l1.getCurrentToken();
            com.fasterxml.jackson.a.r r2 = com.fasterxml.jackson.a.r.m;
            String s1 = null;
            if (r1 != r2)
            {
                s1 = l1.getText();
            }
            o1.a = s1;
            return true;
        } else
        {
            return f.a(o1, s, l1);
        }
    }
}
