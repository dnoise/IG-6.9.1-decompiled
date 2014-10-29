// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.comments.a;

import android.content.DialogInterface;
import android.widget.Toast;
import com.facebook.az;
import com.instagram.android.feed.comments.ui.CommentAutoCompleteTextView;
import com.instagram.feed.d.b;
import com.instagram.o.f.e;
import com.instagram.o.f.f;
import com.instagram.user.c.a;

// Referenced classes of package com.instagram.android.feed.comments.a:
//            a, v

final class g
    implements android.content.DialogInterface.OnClickListener
{

    final CharSequence a[];
    final b b;
    final com.instagram.android.feed.comments.a.a c;

    g(com.instagram.android.feed.comments.a.a a1, CharSequence acharsequence[], b b1)
    {
        c = a1;
        a = acharsequence;
        b = b1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        CharSequence charsequence = a[i];
        if (c.c(az.delete_and_report_comment).equals(charsequence))
        {
            com.instagram.android.feed.comments.a.a.a(c, b, com.instagram.android.feed.comments.a.v.a);
        } else
        {
            if (c.c(az.delete_comment).equals(charsequence))
            {
                com.instagram.android.feed.comments.a.a.a(c, b);
                return;
            }
            if (c.c(az.report_comment).equals(charsequence))
            {
                com.instagram.android.feed.comments.a.a.a(c, b, com.instagram.android.feed.comments.a.v.b);
                return;
            }
            if (c.c(az.view_profile).equals(charsequence))
            {
                f.a().a(c.p(), b.g().g()).a();
                return;
            }
            if (c.c(az.copy_text).equals(charsequence))
            {
                com.instagram.common.y.a.a.a(c.n(), b.f());
                Toast.makeText(c.n(), az.copied, 0).show();
                return;
            }
            if (c.c(az.reply_comment).equals(charsequence))
            {
                com.instagram.android.feed.comments.a.a.a(c, b.g().b());
                com.instagram.android.feed.comments.a.a.a(c, com.instagram.android.feed.comments.a.a.e(c));
                com.instagram.android.feed.comments.a.a.e(c).bringPointIntoView(com.instagram.android.feed.comments.a.a.e(c).length());
                return;
            }
        }
    }
}
