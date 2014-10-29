// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.d;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.KeyEvent;
import android.widget.TextView;

// Referenced classes of package com.instagram.android.directshare.d:
//            c

final class e
    implements android.widget.TextView.OnEditorActionListener
{

    final c a;

    e(c c1)
    {
        a = c1;
        super();
    }

    public final boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        if (i == 4)
        {
            c.m(a);
        }
        return a.o().getConfiguration().orientation != 2;
    }
}
