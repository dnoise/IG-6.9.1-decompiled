// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.survey;

import com.instagram.common.analytics.a;
import com.instagram.common.analytics.b;
import com.instagram.common.analytics.d;
import com.instagram.common.analytics.g;

// Referenced classes of package com.instagram.feed.survey:
//            aj, MultiQuestionSurvey, j, k

public final class ak
{

    private static String a(String s)
    {
        return (new StringBuilder("instagram_ad_")).append(s).toString();
    }

    private static void a(b b1, int i)
    {
        if (i == com.instagram.feed.survey.aj.b)
        {
            com.instagram.common.analytics.a.a().b(b1);
            return;
        }
        if (i == com.instagram.feed.survey.aj.a)
        {
            com.instagram.common.analytics.a.a().a(b1);
            return;
        } else
        {
            throw new UnsupportedOperationException("Unhandled survey type");
        }
    }

    public static void a(MultiQuestionSurvey multiquestionsurvey, g g)
    {
        a((new b("user_sentiment_survey_presented", g)).a("survey_id", multiquestionsurvey.a()), com.instagram.feed.survey.aj.a);
    }

    public static void a(MultiQuestionSurvey multiquestionsurvey, g g, boolean flag)
    {
        b b1 = (new b(a("survey_primer_response"), g)).a("survey_id", multiquestionsurvey.a()).a("responses", flag).a("tracking_token", multiquestionsurvey.c());
        com.instagram.common.analytics.a.a().a(b1);
    }

    public static void a(MultiQuestionSurvey multiquestionsurvey, MultiQuestionSurvey.Question question, String as[], g g)
    {
        if (multiquestionsurvey.d() == com.instagram.feed.survey.aj.b)
        {
            b(multiquestionsurvey, question, as, g);
            return;
        } else
        {
            a(multiquestionsurvey, as, g);
            return;
        }
    }

    private static void a(MultiQuestionSurvey multiquestionsurvey, String as[], g g)
    {
        a((new b("user_sentiment_survey", g)).a("survey_id", multiquestionsurvey.a()).a("selected_survey_answer", as[0]), com.instagram.feed.survey.aj.a);
    }

    public static void a(j j1, g g)
    {
        b b1;
        if (j1.f() == com.instagram.feed.survey.aj.b)
        {
            b1 = (new b(a("impression"), g)).a("tracking_token", j1.d());
        } else
        {
            b1 = (new b("user_sentiment_survey_presented", g)).a("survey_id", j1.a());
        }
        a(b1, j1.f());
    }

    public static void a(j j1, g g, boolean flag)
    {
        b b1 = (new b(a("survey_primer_response"), g)).a("survey_id", j1.a()).a("response", flag);
        if (j1.f() == com.instagram.feed.survey.aj.b)
        {
            b1.a("tracking_token", j1.d());
        }
        com.instagram.common.analytics.a.a().a(b1);
    }

    public static void a(j j1, k k1, g g)
    {
        b b1;
        if (j1.f() == com.instagram.feed.survey.aj.b)
        {
            b1 = (new b(a("survey_response"), g)).a("responses", k1.a()).a("show_primer", j1.e()).a("survey_id", j1.a()).a("tracking_token", j1.d());
        } else
        {
            b1 = (new b("user_sentiment_survey", g)).a("survey_id", j1.a()).a("selected_survey_answer", k1.a());
        }
        a(b1, j1.f());
    }

    private static void b(MultiQuestionSurvey multiquestionsurvey, MultiQuestionSurvey.Question question, String as[], g g)
    {
        b b1 = (new b(a("survey_question_response"), g)).a("responses", as);
        boolean flag;
        if (multiquestionsurvey.e() != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a(b1.a("show_primer", flag).a("question_id", question.b()).a("tracking_token", multiquestionsurvey.c()), com.instagram.feed.survey.aj.b);
    }
}
