// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.survey;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.facebook.au;
import com.facebook.av;
import com.facebook.aw;
import java.util.List;

// Referenced classes of package com.instagram.feed.survey:
//            o

public final class n
{

    public static View a(Context context, ViewGroup viewgroup, boolean flag)
    {
        View view = LayoutInflater.from(context).inflate(aw.sentiment_tool_answer_multi_select, viewgroup, false);
        o o1 = new o();
        o1.a = (TextView)view.findViewById(av.text);
        o1.b = (ImageView)view.findViewById(av.check);
        if (flag)
        {
            o1.b.setEnabled(false);
        }
        view.setTag(o1);
        return view;
    }

    public static void a(o o1, MultiQuestionSurvey.Question question, int i)
    {
        MultiQuestionSurvey.PossibleAnswer possibleanswer = (MultiQuestionSurvey.PossibleAnswer)question.c().get(i);
        o1.a.setText(possibleanswer.b());
        boolean flag;
        TextView textview;
        int j;
        if (i == -1 + question.c().size())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        textview = o1.a;
        if (flag)
        {
            j = au.dialog_row_bottom;
        } else
        {
            j = au.bg_simple_row;
        }
        textview.setBackgroundResource(j);
        o1.b.setSelected(possibleanswer.e());
    }
}
