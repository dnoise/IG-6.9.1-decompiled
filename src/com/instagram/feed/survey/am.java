// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.survey;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.feed.survey:
//            j, al

public final class am
{

    public static j a(l l1)
    {
        j j1 = new j();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            return null;
        }
        for (; l1.nextToken() != r.c; l1.skipChildren())
        {
            String s = l1.getCurrentName();
            l1.nextToken();
            a(j1, s, l1);
        }

        return j1.h();
    }

    private static boolean a(j j1, String s, l l1)
    {
        if ("survey_type".equals(s))
        {
            r r11 = l1.getCurrentToken();
            r r12 = r.m;
            String s5 = null;
            if (r11 != r12)
            {
                s5 = l1.getText();
            }
            j1.b = s5;
            return true;
        }
        if ("show_primer".equals(s))
        {
            j1.f = l1.getValueAsBoolean();
            return true;
        }
        if ("survey_id".equals(s))
        {
            r r9 = l1.getCurrentToken();
            r r10 = r.m;
            String s4 = null;
            if (r9 != r10)
            {
                s4 = l1.getText();
            }
            j1.a = s4;
            return true;
        }
        if ("subtitle".equals(s))
        {
            r r7 = l1.getCurrentToken();
            r r8 = r.m;
            String s3 = null;
            if (r7 != r8)
            {
                s3 = l1.getText();
            }
            j1.d = s3;
            return true;
        }
        if ("tracking_token".equals(s))
        {
            r r5 = l1.getCurrentToken();
            r r6 = r.m;
            String s2 = null;
            if (r5 != r6)
            {
                s2 = l1.getText();
            }
            j1.e = s2;
            return true;
        }
        if ("possible_answers".equals(s))
        {
            r r3 = l1.getCurrentToken();
            r r4 = r.d;
            ArrayList arraylist = null;
            if (r3 == r4)
            {
                arraylist = new ArrayList();
                do
                {
                    if (l1.nextToken() == r.e)
                    {
                        break;
                    }
                    k k = al.a(l1);
                    if (k != null)
                    {
                        arraylist.add(k);
                    }
                } while (true);
            }
            j1.g = arraylist;
            return true;
        }
        if ("title".equals(s))
        {
            r r1 = l1.getCurrentToken();
            r r2 = r.m;
            String s1 = null;
            if (r1 != r2)
            {
                s1 = l1.getText();
            }
            j1.c = s1;
            return true;
        } else
        {
            return false;
        }
    }
}
