// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.comments.a;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.KeyEvent;
import android.widget.TextView;

// Referenced classes of package com.instagram.android.feed.comments.a:
//            a

final class o
    implements android.widget.TextView.OnEditorActionListener
{

    final a a;

    o(a a1)
    {
        a = a1;
        super();
    }

    public final boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        if (i == 4 && com.instagram.android.feed.comments.a.a.c(a))
        {
            com.instagram.android.feed.comments.a.a.a(a, textview);
        }
        return a.o().getConfiguration().orientation != 2;
    }
}
