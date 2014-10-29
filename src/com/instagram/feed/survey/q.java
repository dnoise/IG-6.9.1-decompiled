// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.survey;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.ViewFlipper;
import android.widget.ViewSwitcher;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.ax;
import com.facebook.az;
import com.facebook.ba;
import com.instagram.common.y.e;
import com.instagram.ui.dialog.a;
import com.instagram.ui.dialog.b;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.instagram.feed.survey:
//            i, ai, ag, af, 
//            MultiQuestionSurvey, p, e, aj, 
//            ak, j, l, w, 
//            x, y, z, m, 
//            t, u, v, ah, 
//            s, aa, ab, ac, 
//            ae, ad, r

public final class q
    implements i
{

    private final Handler a = new ai(this, (byte)0);
    private final long b = SystemClock.elapsedRealtime();
    private final com.instagram.feed.g.a c;
    private final m d;
    private final Activity e;
    private j f;
    private MultiQuestionSurvey g;
    private Dialog h;
    private Dialog i;
    private TextView j;
    private android.content.DialogInterface.OnClickListener k;
    private boolean l;
    private int m;
    private boolean n;
    private int o;

    public q(Activity activity, com.instagram.feed.g.a a1, m m1)
    {
        n = false;
        o = 0;
        e = activity;
        c = a1;
        d = m1;
    }

    static List a(MultiQuestionSurvey.Question question)
    {
        return b(question);
    }

    private void a(Dialog dialog, android.content.DialogInterface.OnClickListener onclicklistener)
    {
        TextView textview = (TextView)j.findViewById(av.button_multi_select_next);
        textview.setText(dialog.getContext().getString(az.survey_dialog_next));
        textview.setOnClickListener(new ag(this, onclicklistener, dialog));
    }

    private void a(Dialog dialog, MultiQuestionSurvey multiquestionsurvey)
    {
        LinearLayout linearlayout = (LinearLayout)dialog.findViewById(av.resultsList);
        ((TextView)dialog.findViewById(av.action_bar_textview_title)).setText(dialog.getContext().getText(az.survey_dialog_survey_results));
        dialog.findViewById(av.action_bar_button_back).setOnClickListener(new af(this, dialog));
        View view;
        for (Iterator iterator = multiquestionsurvey.b().iterator(); iterator.hasNext(); linearlayout.addView(view))
        {
            MultiQuestionSurvey.Question question = (MultiQuestionSurvey.Question)iterator.next();
            view = LayoutInflater.from(dialog.getContext()).inflate(aw.survey_result_row, null);
            ((TextView)view.findViewById(av.question_header)).setText(question.a());
            LinearLayout linearlayout1 = (LinearLayout)view.findViewById(av.answerList);
            p p1;
            for (Iterator iterator1 = question.c().iterator(); iterator1.hasNext(); linearlayout1.addView(p1))
            {
                MultiQuestionSurvey.PossibleAnswer possibleanswer = (MultiQuestionSurvey.PossibleAnswer)iterator1.next();
                p1 = new p(dialog.getContext());
                p1.setAnswer(possibleanswer);
                p1.setTotalQuestionResponders(question.d());
            }

            TextView textview = (TextView)view.findViewById(av.question_footer);
            Resources resources = dialog.getContext().getResources();
            int i1 = ax.x_survey_question_responders;
            int j1 = question.d();
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(question.d());
            textview.setText(resources.getQuantityString(i1, j1, aobj));
        }

    }

    private void a(Dialog dialog, MultiQuestionSurvey multiquestionsurvey, int i1)
    {
        ListView listview = (ListView)dialog.findViewById(av.multiQuestionSurveyList);
        TextView textview = (TextView)listview.findViewById(av.title);
        MultiQuestionSurvey.Question question = (MultiQuestionSurvey.Question)multiquestionsurvey.b().get(i1);
        textview.setText(question.a());
        listview.setAdapter(new com.instagram.feed.survey.e(e, question));
        if (question.f())
        {
            listview.addFooterView(j, null, false);
        } else
        {
            listview.removeFooterView(j);
        }
        if (multiquestionsurvey.d() == com.instagram.feed.survey.aj.a)
        {
            com.instagram.feed.survey.ak.a(multiquestionsurvey, c);
        }
    }

    private void a(Dialog dialog, j j1)
    {
        ViewSwitcher viewswitcher = (ViewSwitcher)dialog.findViewById(av.surveySwitcher);
        ListView listview = (ListView)viewswitcher.findViewById(av.surveyList);
        ViewGroup viewgroup = (ViewGroup)View.inflate(e, aw.sentiment_tool_question, null);
        TextView textview = (TextView)viewgroup.findViewById(av.title);
        TextView textview1 = (TextView)viewgroup.findViewById(av.subtitle);
        textview.setText(j1.b());
        textview1.setText(j1.c());
        if (com.instagram.common.y.e.c(j1.c()))
        {
            textview.setTypeface(Typeface.DEFAULT);
            textview1.setVisibility(8);
        }
        listview.addHeaderView(viewgroup, null, false);
        listview.setAdapter(new l(e, j1));
        listview.setOnItemClickListener(new w(this, viewswitcher, j1));
        dialog.setOnShowListener(new x(this, j1));
    }

    private void a(MultiQuestionSurvey multiquestionsurvey, String as[])
    {
        MultiQuestionSurvey.Question question = (MultiQuestionSurvey.Question)multiquestionsurvey.b().get(o);
        question.e();
        com.instagram.feed.survey.ak.a(multiquestionsurvey, question, as, c);
        o = 1 + o;
        int i1 = -1 + multiquestionsurvey.b().size();
        if (o > i1)
        {
            com.instagram.ui.dialog.a.a(h);
            if (!multiquestionsurvey.f())
            {
                com.instagram.ui.dialog.a.a(h, false);
            }
            ((ViewFlipper)h.findViewById(av.surveyFlipper)).showNext();
            o = 0;
            return;
        } else
        {
            a(h, multiquestionsurvey, o);
            return;
        }
    }

    static void a(q q1)
    {
        q1.c();
    }

    static void a(q q1, Dialog dialog, MultiQuestionSurvey multiquestionsurvey)
    {
        q1.a(dialog, multiquestionsurvey);
    }

    static void a(q q1, MultiQuestionSurvey multiquestionsurvey, String as[])
    {
        q1.a(multiquestionsurvey, as);
    }

    static void a(List list, List list1)
    {
        b(list, list1);
    }

    static Activity b(q q1)
    {
        return q1.e;
    }

    private static List b(MultiQuestionSurvey.Question question)
    {
        LinkedList linkedlist = new LinkedList();
        for (int i1 = 0; i1 < question.c().size(); i1++)
        {
            MultiQuestionSurvey.PossibleAnswer possibleanswer = (MultiQuestionSurvey.PossibleAnswer)question.c().get(i1);
            if (possibleanswer.e())
            {
                linkedlist.add(possibleanswer.a());
            }
        }

        return linkedlist;
    }

    private void b(Dialog dialog, MultiQuestionSurvey multiquestionsurvey)
    {
        ListView listview = (ListView)dialog.findViewById(av.multiQuestionSurveyList);
        ViewGroup viewgroup = (ViewGroup)View.inflate(e, aw.sentiment_tool_multiple_question, null);
        j = (TextView)View.inflate(e, aw.list_view_footer, null);
        listview.addHeaderView(viewgroup, null, false);
        dialog.setOnShowListener(new y(this));
        a(dialog, multiquestionsurvey, o);
        listview.setOnItemClickListener(new z(this, multiquestionsurvey));
        a(h, k);
    }

    private static void b(List list, List list1)
    {
        for (int i1 = 0; i1 < list.size(); i1++)
        {
            MultiQuestionSurvey.PossibleAnswer possibleanswer = (MultiQuestionSurvey.PossibleAnswer)list.get(i1);
            if (list1.contains(possibleanswer.a()))
            {
                possibleanswer.d();
            }
        }

    }

    static int c(q q1)
    {
        return q1.o;
    }

    private void c()
    {
        h = null;
        i = null;
        f = null;
        g = null;
        n = false;
        j = null;
        a.removeMessages(0);
        a.removeMessages(1);
        a.removeMessages(3);
        if (d != null)
        {
            d.b(this);
        }
    }

    private void c(MultiQuestionSurvey multiquestionsurvey)
    {
        String s1 = multiquestionsurvey.e();
        i = (new b(e)).a(s1).b().a(az.survey_dialog_title).a(az.survey_dialog_next, new t(this, multiquestionsurvey)).a(true).c();
        i.setOnCancelListener(new u(this, multiquestionsurvey));
        i.setOnShowListener(new v(this));
        i.show();
    }

    private void c(j j1)
    {
        Dialog dialog = (new b(e)).b(az.survey_help_improve_instagram_message).b().a(az.survey_dialog_title).a(az.survey_dialog_next, new ah(this, j1)).a(true).c();
        dialog.setOnDismissListener(new s(this, j1));
        dialog.show();
    }

    static Dialog d(q q1)
    {
        return q1.h;
    }

    private void d()
    {
        a.removeMessages(1);
        if (m == 0 && !l)
        {
            a.sendEmptyMessageDelayed(1, f());
        }
    }

    static com.instagram.feed.g.a e(q q1)
    {
        return q1.c;
    }

    private void e()
    {
        a.removeMessages(3);
        if (m == 0 && !l)
        {
            a.sendEmptyMessageDelayed(3, f());
        }
    }

    private int f()
    {
        return (int)Math.max(2000L, 15000L - (SystemClock.elapsedRealtime() - b));
    }

    static Handler f(q q1)
    {
        return q1.a;
    }

    private boolean g()
    {
        return d == null || !d.r();
    }

    static boolean g(q q1)
    {
        return q1.n;
    }

    static TextView h(q q1)
    {
        return q1.j;
    }

    static boolean i(q q1)
    {
        return q1.g();
    }

    static j j(q q1)
    {
        return q1.f;
    }

    static void k(q q1)
    {
        q1.d();
    }

    static MultiQuestionSurvey l(q q1)
    {
        return q1.g;
    }

    static boolean m(q q1)
    {
        q1.n = true;
        return true;
    }

    static Dialog n(q q1)
    {
        return q1.i;
    }

    public final void a()
    {
        l = false;
        if (f != null)
        {
            b(f);
        } else
        if (g != null)
        {
            b(g);
            return;
        }
    }

    public final void a(int i1)
    {
        b(i1);
        d();
    }

    public final void a(MultiQuestionSurvey multiquestionsurvey)
    {
label0:
        {
            if (multiquestionsurvey != null)
            {
                if (multiquestionsurvey.d() != com.instagram.feed.survey.aj.b || c.p_())
                {
                    break label0;
                }
                c();
            }
            return;
        }
        aa aa1 = new aa(this);
        ab ab1 = new ab(this, multiquestionsurvey);
        k = new ac(this, multiquestionsurvey);
        if (multiquestionsurvey.f())
        {
            h = (new b(e, aw.sentiment_tool_dialog_multi_question, ba.IgDialog)).a(true).d().a(az.survey_dialog_title).b(az.survey_dialog_done, aa1).c(az.survey_dialog_view_results, ab1).c();
        } else
        {
            h = (new b(e, aw.sentiment_tool_dialog_multi_question, ba.IgDialog)).a(true).d().a(az.survey_dialog_title).a(az.survey_dialog_done_blue, new ad(this)).c();
            com.instagram.ui.dialog.a.a(h, true);
        }
        b(h, multiquestionsurvey);
        h.setOnDismissListener(new ae(this));
        if (multiquestionsurvey.e() != null)
        {
            c(multiquestionsurvey);
            return;
        } else
        {
            h.show();
            return;
        }
    }

    public final void a(j j1)
    {
label0:
        {
            if (j1 != null)
            {
                if (j1.f() != com.instagram.feed.survey.aj.b || c.p_())
                {
                    break label0;
                }
                c();
            }
            return;
        }
        h = (new b(e, aw.sentiment_tool_dialog, ba.IgDialog)).a(true).a(az.survey_dialog_title).c();
        a(h, j1);
        h.setOnDismissListener(new r(this));
        if (j1.e())
        {
            c(j1);
            return;
        } else
        {
            h.show();
            return;
        }
    }

    public final void b()
    {
        l = true;
        a.removeMessages(1);
        a.removeMessages(0);
        if (d != null)
        {
            d.b(this);
        }
        if (h != null)
        {
            h.dismiss();
        }
    }

    public final void b(int i1)
    {
        m = i1;
    }

    public final void b(MultiQuestionSurvey multiquestionsurvey)
    {
        g = multiquestionsurvey;
        if (d != null)
        {
            d.a(this);
        }
        e();
    }

    public final void b(j j1)
    {
        f = j1;
        if (d != null)
        {
            d.a(this);
        }
        d();
    }
}
