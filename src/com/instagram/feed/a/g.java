// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.a;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.instagram.feed.survey.am;
import com.instagram.feed.survey.h;

// Referenced classes of package com.instagram.feed.a:
//            c, f, j

public final class g
{

    public static c a(l l1)
    {
        c c1 = new c();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            return null;
        }
        for (; l1.nextToken() != r.c; l1.skipChildren())
        {
            String s = l1.getCurrentName();
            l1.nextToken();
            a(c1, s, l1);
        }

        return c1.b();
    }

    private static boolean a(c c1, String s, l l1)
    {
        if ("multiple_question_survey".equals(s))
        {
            c1.b = h.a(l1);
            return true;
        }
        if ("megaphone".equals(s))
        {
            c1.d = f.a(l1);
            return true;
        }
        if ("user_is_needy".equals(s))
        {
            c1.c = l1.getValueAsBoolean();
            return true;
        }
        if ("survey".equals(s))
        {
            c1.a = am.a(l1);
            return true;
        } else
        {
            return j.a(c1, s, l1);
        }
    }
}
