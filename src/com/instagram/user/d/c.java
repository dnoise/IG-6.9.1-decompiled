// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.d;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.user.d:
//            a

public final class c
{

    public static a a(l l1)
    {
        a a1 = new a();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            return null;
        }
        for (; l1.nextToken() != r.c; l1.skipChildren())
        {
            String s = l1.getCurrentName();
            l1.nextToken();
            a(a1, s, l1);
        }

        return a1.h();
    }

    private static boolean a(a a1, String s, l l1)
    {
        if ("media_ids".equals(s))
        {
            ArrayList arraylist2;
            if (l1.getCurrentToken() == r.d)
            {
                arraylist2 = new ArrayList();
                do
                {
                    if (l1.nextToken() == r.e)
                    {
                        break;
                    }
                    String s5;
                    if (l1.getCurrentToken() == r.m)
                    {
                        s5 = null;
                    } else
                    {
                        s5 = l1.getText();
                    }
                    if (s5 != null)
                    {
                        arraylist2.add(s5);
                    }
                } while (true);
            } else
            {
                arraylist2 = null;
            }
            a1.f = arraylist2;
            return true;
        }
        if ("algorithm".equals(s))
        {
            r r7 = l1.getCurrentToken();
            r r8 = r.m;
            String s4 = null;
            if (r7 != r8)
            {
                s4 = l1.getText();
            }
            a1.c = s4;
            return true;
        }
        if ("social_context".equals(s))
        {
            r r5 = l1.getCurrentToken();
            r r6 = r.m;
            String s3 = null;
            if (r5 != r6)
            {
                s3 = l1.getText();
            }
            a1.e = s3;
            return true;
        }
        if ("user".equals(s))
        {
            a1.a = com.instagram.user.c.l.a(l1);
            return true;
        }
        if ("caption".equals(s))
        {
            r r3 = l1.getCurrentToken();
            r r4 = r.m;
            String s2 = null;
            if (r3 != r4)
            {
                s2 = l1.getText();
            }
            a1.b = s2;
            return true;
        }
        if ("thumbnail_urls".equals(s))
        {
            r r1 = l1.getCurrentToken();
            r r2 = r.d;
            ArrayList arraylist = null;
            if (r1 == r2)
            {
                ArrayList arraylist1 = new ArrayList();
                do
                {
                    if (l1.nextToken() == r.e)
                    {
                        break;
                    }
                    String s1;
                    if (l1.getCurrentToken() == r.m)
                    {
                        s1 = null;
                    } else
                    {
                        s1 = l1.getText();
                    }
                    if (s1 != null)
                    {
                        arraylist1.add(s1);
                    }
                } while (true);
                arraylist = arraylist1;
            }
            a1.d = arraylist;
            return true;
        } else
        {
            return false;
        }
    }
}
