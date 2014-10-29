// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.d;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.j.d:
//            d, l, j, k

public final class m
{

    public static d a(l l1)
    {
        d d1 = new d();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            d1 = null;
        } else
        {
            while (l1.nextToken() != r.c) 
            {
                String s = l1.getCurrentName();
                l1.nextToken();
                a(d1, s, l1);
                l1.skipChildren();
            }
        }
        return d1;
    }

    private static boolean a(d d1, String s, l l1)
    {
        if ("request_count".equals(s))
        {
            d1.h = l1.getValueAsInt();
            return true;
        }
        if ("profile_image".equals(s))
        {
            r r11 = l1.getCurrentToken();
            r r12 = r.m;
            String s4 = null;
            if (r11 != r12)
            {
                s4 = l1.getText();
            }
            d1.d = s4;
            return true;
        }
        if ("media".equals(s))
        {
            r r9 = l1.getCurrentToken();
            r r10 = r.d;
            ArrayList arraylist1 = null;
            if (r9 == r10)
            {
                arraylist1 = new ArrayList();
                do
                {
                    if (l1.nextToken() == r.e)
                    {
                        break;
                    }
                    f f = l.a(l1);
                    if (f != null)
                    {
                        arraylist1.add(f);
                    }
                } while (true);
            }
            d1.e = arraylist1;
            return true;
        }
        if ("text".equals(s))
        {
            r r7 = l1.getCurrentToken();
            r r8 = r.m;
            String s3 = null;
            if (r7 != r8)
            {
                s3 = l1.getText();
            }
            d1.b = s3;
            return true;
        }
        if ("links".equals(s))
        {
            r r5 = l1.getCurrentToken();
            r r6 = r.d;
            ArrayList arraylist = null;
            if (r5 == r6)
            {
                arraylist = new ArrayList();
                do
                {
                    if (l1.nextToken() == r.e)
                    {
                        break;
                    }
                    h h = j.a(l1);
                    if (h != null)
                    {
                        arraylist.add(h);
                    }
                } while (true);
            }
            d1.i = arraylist;
            return true;
        }
        if ("inline_follow".equals(s))
        {
            d1.g = k.a(l1);
            return true;
        }
        if ("profile_id".equals(s))
        {
            r r3 = l1.getCurrentToken();
            r r4 = r.m;
            String s2 = null;
            if (r3 != r4)
            {
                s2 = l1.getText();
            }
            d1.c = s2;
            return true;
        }
        if ("timestamp".equals(s))
        {
            d1.f = l1.getValueAsLong();
            return true;
        }
        if ("payload".equals(s))
        {
            r r1 = l1.getCurrentToken();
            r r2 = r.m;
            String s1 = null;
            if (r1 != r2)
            {
                s1 = l1.getText();
            }
            d1.a = s1;
            return true;
        } else
        {
            return false;
        }
    }
}
