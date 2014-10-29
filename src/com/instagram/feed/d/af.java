// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.d;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.feed.d:
//            r, q

public final class af
{

    public static com.instagram.feed.d.r a(l l1)
    {
        com.instagram.feed.d.r r1 = new com.instagram.feed.d.r();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            r1 = null;
        } else
        {
            while (l1.nextToken() != r.c) 
            {
                String s = l1.getCurrentName();
                l1.nextToken();
                a(r1, s, l1);
                l1.skipChildren();
            }
        }
        return r1;
    }

    private static boolean a(com.instagram.feed.d.r r1, String s, l l1)
    {
        if ("hide_label".equals(s))
        {
            r r12 = l1.getCurrentToken();
            r r13 = r.m;
            String s5 = null;
            if (r12 != r13)
            {
                s5 = l1.getText();
            }
            r1.c = s5;
            return true;
        }
        if ("is_holdout".equals(s))
        {
            r1.g = l1.getValueAsBoolean();
            return true;
        }
        if ("show_icon".equals(s))
        {
            r1.b = l1.getValueAsBoolean();
            return true;
        }
        if ("invalidation".equals(s))
        {
            r r10 = l1.getCurrentToken();
            r r11 = r.m;
            String s4 = null;
            if (r10 != r11)
            {
                s4 = l1.getText();
            }
            r1.e = s4;
            return true;
        }
        if ("hide_reasons".equals(s))
        {
            r r8 = l1.getCurrentToken();
            r r9 = r.d;
            ArrayList arraylist2 = null;
            if (r8 == r9)
            {
                arraylist2 = new ArrayList();
                do
                {
                    if (l1.nextToken() == r.e)
                    {
                        break;
                    }
                    q q1 = q.a(l1);
                    if (q1 != null)
                    {
                        arraylist2.add(q1);
                    }
                } while (true);
            }
            r1.d = arraylist2;
            return true;
        }
        if ("tracking_token".equals(s))
        {
            r r6 = l1.getCurrentToken();
            r r7 = r.m;
            String s3 = null;
            if (r6 != r7)
            {
                s3 = l1.getText();
            }
            r1.h = s3;
            return true;
        }
        if ("view_tags".equals(s))
        {
            r r4 = l1.getCurrentToken();
            r r5 = r.d;
            ArrayList arraylist = null;
            if (r4 == r5)
            {
                ArrayList arraylist1 = new ArrayList();
                do
                {
                    if (l1.nextToken() == r.e)
                    {
                        break;
                    }
                    String s2;
                    if (l1.getCurrentToken() == r.m)
                    {
                        s2 = null;
                    } else
                    {
                        s2 = l1.getText();
                    }
                    if (s2 != null)
                    {
                        arraylist1.add(s2);
                    }
                } while (true);
                arraylist = arraylist1;
            }
            r1.i = arraylist;
            return true;
        }
        if ("is_demo".equals(s))
        {
            r1.f = l1.getValueAsBoolean();
            return true;
        }
        if ("label".equals(s))
        {
            r r2 = l1.getCurrentToken();
            r r3 = r.m;
            String s1 = null;
            if (r2 != r3)
            {
                s1 = l1.getText();
            }
            r1.a = s1;
            return true;
        } else
        {
            return false;
        }
    }
}
