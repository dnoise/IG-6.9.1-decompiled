// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.survey;

import android.app.Dialog;
import android.content.DialogInterface;

// Referenced classes of package com.instagram.feed.survey:
//            q, ak, MultiQuestionSurvey

final class t
    implements android.content.DialogInterface.OnClickListener
{

    final MultiQuestionSurvey a;
    final q b;

    t(q q1, MultiQuestionSurvey multiquestionsurvey)
    {
        b = q1;
        a = multiquestionsurvey;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        ak.a(a, q.e(b), true);
        q.d(b).show();
    }
}
