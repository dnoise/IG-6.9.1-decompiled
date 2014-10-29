// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.k.a;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.instagram.api.b.c;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.api.k.a:
//            d

public final class f
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

    public static boolean a(d d1, String s, l l1)
    {
        if ("feedback_ignore_label".equals(s))
        {
            r r17 = l1.getCurrentToken();
            r r18 = r.m;
            String s8 = null;
            if (r17 != r18)
            {
                s8 = l1.getText();
            }
            d1.q = s8;
            return true;
        }
        if ("status".equals(s))
        {
            r r15 = l1.getCurrentToken();
            r r16 = r.m;
            String s7 = null;
            if (r15 != r16)
            {
                s7 = l1.getText();
            }
            d1.k = s7;
            return true;
        }
        if ("_messages".equals(s))
        {
            r r13 = l1.getCurrentToken();
            r r14 = r.d;
            ArrayList arraylist = null;
            if (r13 == r14)
            {
                arraylist = new ArrayList();
                do
                {
                    if (l1.nextToken() == r.e)
                    {
                        break;
                    }
                    com.instagram.api.b.b b = c.a(l1);
                    if (b != null)
                    {
                        arraylist.add(b);
                    }
                } while (true);
            }
            d1.f = arraylist;
            return true;
        }
        if ("feedback_required".equals(s))
        {
            d1.m = l1.getValueAsBoolean();
            return true;
        }
        if ("error_title".equals(s))
        {
            r r11 = l1.getCurrentToken();
            r r12 = r.m;
            String s6 = null;
            if (r11 != r12)
            {
                s6 = l1.getText();
            }
            d1.i = s6;
            return true;
        }
        if ("feedback_url".equals(s))
        {
            r r9 = l1.getCurrentToken();
            r r10 = r.m;
            String s5 = null;
            if (r9 != r10)
            {
                s5 = l1.getText();
            }
            d1.r = s5;
            return true;
        }
        if ("feedback_appeal_label".equals(s))
        {
            r r7 = l1.getCurrentToken();
            r r8 = r.m;
            String s4 = null;
            if (r7 != r8)
            {
                s4 = l1.getText();
            }
            d1.p = s4;
            return true;
        }
        if ("feedback_title".equals(s))
        {
            r r5 = l1.getCurrentToken();
            r r6 = r.m;
            String s3 = null;
            if (r5 != r6)
            {
                s3 = l1.getText();
            }
            d1.n = s3;
            return true;
        }
        if ("lock".equals(s))
        {
            d1.l = l1.getValueAsBoolean();
            return true;
        }
        if ("checkpoint_url".equals(s))
        {
            r r3 = l1.getCurrentToken();
            r r4 = r.m;
            String s2 = null;
            if (r3 != r4)
            {
                s2 = l1.getText();
            }
            d1.j = s2;
            return true;
        }
        if ("feedback_message".equals(s))
        {
            r r1 = l1.getCurrentToken();
            r r2 = r.m;
            String s1 = null;
            if (r1 != r2)
            {
                s1 = l1.getText();
            }
            d1.o = s1;
            return true;
        }
        if ("message".equals(s))
        {
            d1.a(l1);
            return true;
        } else
        {
            return false;
        }
    }
}
