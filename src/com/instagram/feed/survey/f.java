// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.survey;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;

public final class f
{

    public static MultiQuestionSurvey.PossibleAnswer a(l l1)
    {
        MultiQuestionSurvey.PossibleAnswer possibleanswer = new MultiQuestionSurvey.PossibleAnswer();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            possibleanswer = null;
        } else
        {
            while (l1.nextToken() != r.c) 
            {
                String s = l1.getCurrentName();
                l1.nextToken();
                a(possibleanswer, s, l1);
                l1.skipChildren();
            }
        }
        return possibleanswer;
    }

    private static boolean a(MultiQuestionSurvey.PossibleAnswer possibleanswer, String s, l l1)
    {
        if ("value".equals(s))
        {
            r r3 = l1.getCurrentToken();
            r r4 = r.m;
            String s2 = null;
            if (r3 != r4)
            {
                s2 = l1.getText();
            }
            possibleanswer.a = s2;
            return true;
        }
        if ("text".equals(s))
        {
            r r1 = l1.getCurrentToken();
            r r2 = r.m;
            String s1 = null;
            if (r1 != r2)
            {
                s1 = l1.getText();
            }
            possibleanswer.b = s1;
            return true;
        }
        if ("num_responders".equals(s))
        {
            possibleanswer.c = l1.getValueAsInt();
            return true;
        } else
        {
            return false;
        }
    }
}
