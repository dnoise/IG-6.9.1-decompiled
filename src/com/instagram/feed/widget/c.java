// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.widget;

import android.widget.ProgressBar;
import com.instagram.common.ui.widget.imageview.g;

// Referenced classes of package com.instagram.feed.widget:
//            a

final class c
    implements g
{

    final a a;

    c(a a1)
    {
        a = a1;
        super();
    }

    public final void a(int i)
    {
        if (a.getDisplayedChild() != 1)
        {
            a.setDisplayedChild(1);
        }
        com.instagram.feed.widget.a.c(a).setProgress(i);
    }
}
