// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.survey;

import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.HeaderViewListAdapter;
import android.widget.TextView;
import java.util.List;

// Referenced classes of package com.instagram.feed.survey:
//            q, MultiQuestionSurvey

final class z
    implements android.widget.AdapterView.OnItemClickListener
{

    final MultiQuestionSurvey a;
    final q b;

    z(q q1, MultiQuestionSurvey multiquestionsurvey)
    {
        b = q1;
        a = multiquestionsurvey;
        super();
    }

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
label0:
        {
label1:
            {
label2:
                {
                    if (!q.g(b))
                    {
                        break label1;
                    }
                    MultiQuestionSurvey.Question question = (MultiQuestionSurvey.Question)a.b().get(q.c(b));
                    if (!question.f())
                    {
                        break label0;
                    }
                    MultiQuestionSurvey.PossibleAnswer possibleanswer1 = (MultiQuestionSurvey.PossibleAnswer)question.c().get(i - 1);
                    boolean flag;
                    boolean flag1;
                    if (!possibleanswer1.e())
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                    possibleanswer1.a(flag);
                    ((BaseAdapter)((HeaderViewListAdapter)adapterview.getAdapter()).getWrappedAdapter()).notifyDataSetChanged();
                    if (!flag)
                    {
                        q _tmp = b;
                        boolean flag2 = q.a(question).isEmpty();
                        flag1 = false;
                        if (flag2)
                        {
                            break label2;
                        }
                    }
                    flag1 = true;
                }
                q.h(b).setEnabled(flag1);
            }
            return;
        }
        MultiQuestionSurvey.PossibleAnswer possibleanswer = (MultiQuestionSurvey.PossibleAnswer)adapterview.getItemAtPosition(i);
        possibleanswer.d();
        String as[] = new String[1];
        as[0] = possibleanswer.a();
        q.a(b, a, as);
    }
}
