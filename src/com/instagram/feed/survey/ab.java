// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.survey;

import android.app.Dialog;
import android.content.DialogInterface;
import com.facebook.aw;
import com.facebook.ba;
import com.instagram.ui.dialog.b;

// Referenced classes of package com.instagram.feed.survey:
//            q, MultiQuestionSurvey

final class ab
    implements android.content.DialogInterface.OnClickListener
{

    final MultiQuestionSurvey a;
    final q b;

    ab(q q1, MultiQuestionSurvey multiquestionsurvey)
    {
        b = q1;
        a = multiquestionsurvey;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        Dialog dialog = (new b(com.instagram.feed.survey.q.b(b), aw.dialog_survey_results, ba.SurveyResultsDialog)).c();
        q.a(b, dialog, a);
        dialog.show();
    }
}
