// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.ui;

import android.graphics.Rect;
import android.view.View;
import com.instagram.creation.video.a;

// Referenced classes of package com.instagram.creation.video.ui:
//            l

final class n
    implements android.view.View.OnClickListener
{

    final Rect a;
    final View b;
    final l c;

    n(l l1, Rect rect, View view)
    {
        c = l1;
        a = rect;
        b = view;
        super();
    }

    public final void onClick(View view)
    {
        c.dismiss();
        if (a.contains((int)com.instagram.creation.video.ui.l.a(c), (int)l.b(c)))
        {
            l.c(c).j();
            b.setPressed(false);
            return;
        } else
        {
            l.c(c).h();
            return;
        }
    }
}
