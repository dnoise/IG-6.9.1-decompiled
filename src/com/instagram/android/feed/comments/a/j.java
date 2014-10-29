// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.comments.a;

import android.content.DialogInterface;
import com.facebook.az;
import com.instagram.feed.comments.b.a;
import com.instagram.feed.comments.c.b;
import com.instagram.feed.comments.c.d;
import com.instagram.feed.comments.util.ReportCommentUtil;
import com.instagram.feed.d.l;

// Referenced classes of package com.instagram.android.feed.comments.a:
//            a, v, s, t

final class j
    implements android.content.DialogInterface.OnClickListener
{

    final CharSequence a[];
    final int b;
    final com.instagram.feed.d.b c;
    final com.instagram.android.feed.comments.a.a d;

    j(com.instagram.android.feed.comments.a.a a1, CharSequence acharsequence[], int i, com.instagram.feed.d.b b1)
    {
        d = a1;
        a = acharsequence;
        b = i;
        c = b1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        CharSequence charsequence;
        dialoginterface.dismiss();
        charsequence = a[i];
        if (!d.c(az.flag_comment_option_spam).equals(charsequence)) goto _L2; else goto _L1
_L1:
        if (b != com.instagram.android.feed.comments.a.v.a) goto _L4; else goto _L3
_L3:
        com.instagram.feed.comments.b.a.a(d.n(), d.z(), c, b.b, new s(d, (byte)0));
_L6:
        return;
_L4:
        (new d(c, d.n(), d.z(), new t(d, (byte)0))).g();
        c.e().b(c);
        return;
_L2:
        if (d.c(az.flag_abusive_content).equals(charsequence))
        {
            android.content.Context context = d.n();
            com.instagram.feed.d.b b1 = c;
            int k = b;
            int i1 = com.instagram.android.feed.comments.a.v.a;
            boolean flag = false;
            if (k == i1)
            {
                flag = true;
            }
            ReportCommentUtil.a(context, b1, flag);
            c.e().b(c);
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }
}
