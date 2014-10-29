// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.survey;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.feed.survey:
//            MultiQuestionSurvey, g

public final class h
{

    public static MultiQuestionSurvey a(l l1)
    {
        MultiQuestionSurvey multiquestionsurvey = new MultiQuestionSurvey();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            return null;
        }
        for (; l1.nextToken() != r.c; l1.skipChildren())
        {
            String s = l1.getCurrentName();
            l1.nextToken();
            a(multiquestionsurvey, s, l1);
        }

        return multiquestionsurvey.g();
    }

    private static boolean a(MultiQuestionSurvey multiquestionsurvey, String s, l l1)
    {
        if ("survey_type".equals(s))
        {
            r r9 = l1.getCurrentToken();
            r r10 = r.m;
            String s4 = null;
            if (r9 != r10)
            {
                s4 = l1.getText();
            }
            multiquestionsurvey.b = s4;
            return true;
        }
        if ("primer_message".equals(s))
        {
            r r7 = l1.getCurrentToken();
            r r8 = r.m;
            String s3 = null;
            if (r7 != r8)
            {
                s3 = l1.getText();
            }
            multiquestionsurvey.d = s3;
            return true;
        }
        if ("survey_id".equals(s))
        {
            r r5 = l1.getCurrentToken();
            r r6 = r.m;
            String s2 = null;
            if (r5 != r6)
            {
                s2 = l1.getText();
            }
            multiquestionsurvey.a = s2;
            return true;
        }
        if ("show_results".equals(s))
        {
            multiquestionsurvey.g = l1.getValueAsBoolean();
            return true;
        }
        if ("is_demo".equals(s))
        {
            multiquestionsurvey.f = l1.getValueAsBoolean();
            return true;
        }
        if ("tracking_token".equals(s))
        {
            r r3 = l1.getCurrentToken();
            r r4 = r.m;
            String s1 = null;
            if (r3 != r4)
            {
                s1 = l1.getText();
            }
            multiquestionsurvey.c = s1;
            return true;
        }
        if ("questions".equals(s))
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
                    MultiQuestionSurvey.Question question = g.a(l1);
                    if (question != null)
                    {
                        arraylist.add(question);
                    }
                } while (true);
            }
            multiquestionsurvey.e = arraylist;
            return true;
        } else
        {
            return false;
        }
    }
}
