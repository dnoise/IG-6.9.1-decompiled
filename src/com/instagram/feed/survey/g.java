// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.survey;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.feed.survey:
//            d, f

public final class g
{

    public static MultiQuestionSurvey.Question a(l l1)
    {
        MultiQuestionSurvey.Question question = new MultiQuestionSurvey.Question();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            question = null;
        } else
        {
            while (l1.nextToken() != r.c) 
            {
                String s = l1.getCurrentName();
                l1.nextToken();
                a(question, s, l1);
                l1.skipChildren();
            }
        }
        return question;
    }

    private static boolean a(MultiQuestionSurvey.Question question, String s, l l1)
    {
        if ("type".equals(s))
        {
            question.c = d.a(l1);
            return true;
        }
        if ("total_responders".equals(s))
        {
            question.d = l1.getValueAsInt();
            return true;
        }
        if ("answers".equals(s))
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
                    MultiQuestionSurvey.PossibleAnswer possibleanswer = f.a(l1);
                    if (possibleanswer != null)
                    {
                        arraylist.add(possibleanswer);
                    }
                } while (true);
            }
            question.e = arraylist;
            return true;
        }
        if ("title".equals(s))
        {
            r r3 = l1.getCurrentToken();
            r r4 = r.m;
            String s2 = null;
            if (r3 != r4)
            {
                s2 = l1.getText();
            }
            question.a = s2;
            return true;
        }
        if ("qid".equals(s))
        {
            r r1 = l1.getCurrentToken();
            r r2 = r.m;
            String s1 = null;
            if (r1 != r2)
            {
                s1 = l1.getText();
            }
            question.b = s1;
            return true;
        } else
        {
            return false;
        }
    }
}
