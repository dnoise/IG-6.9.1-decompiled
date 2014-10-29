// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.survey;

import android.content.DialogInterface;
import java.util.List;

// Referenced classes of package com.instagram.feed.survey:
//            MultiQuestionSurvey, q

final class ac
    implements android.content.DialogInterface.OnClickListener
{

    final MultiQuestionSurvey a;
    final q b;

    ac(q q1, MultiQuestionSurvey multiquestionsurvey)
    {
        b = q1;
        a = multiquestionsurvey;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        MultiQuestionSurvey.Question question = (MultiQuestionSurvey.Question)a.b().get(q.c(b));
        q _tmp = b;
        List list = q.a(question);
        q _tmp1 = b;
        q.a(question.c(), list);
        String as[] = (String[])list.toArray(new String[list.size()]);
        q.a(b, a, as);
    }
}
