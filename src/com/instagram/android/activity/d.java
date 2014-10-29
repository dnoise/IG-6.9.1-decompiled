// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.activity;

import android.content.DialogInterface;
import com.instagram.creation.video.c.b;
import com.instagram.p.a;

// Referenced classes of package com.instagram.android.activity:
//            c, e

final class d
    implements android.content.DialogInterface.OnClickListener
{

    final CharSequence a[];
    final CharSequence b;
    final CharSequence c;
    final c d;

    d(c c1, CharSequence acharsequence[], CharSequence charsequence, CharSequence charsequence1)
    {
        d = c1;
        a = acharsequence;
        b = charsequence;
        c = charsequence1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        CharSequence charsequence = a[i];
        if (charsequence.equals(b))
        {
            a.h.c();
            d.a = com.instagram.creation.photo.c.a.a(".jpg");
            com.instagram.android.activity.c.a(d).a(d.a, 10003, "android.media.action.IMAGE_CAPTURE");
            return;
        }
        if (charsequence.equals(c))
        {
            a.n.c();
            com.instagram.creation.video.c.b.e(com.instagram.android.activity.c.b(d));
            d.a = com.instagram.creation.photo.c.a.a(".mp4");
            com.instagram.android.activity.c.a(d).a(d.a, 10005, "android.media.action.VIDEO_CAPTURE");
            return;
        } else
        {
            com.instagram.android.activity.c.c(d);
            return;
        }
    }
}
