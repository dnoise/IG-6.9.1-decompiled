// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.ui;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package com.instagram.creation.video.ui:
//            l

final class m
    implements android.view.View.OnTouchListener
{

    final Rect a;
    final View b;
    final l c;

    m(l l1, Rect rect, View view)
    {
        c = l1;
        a = rect;
        b = view;
        super();
    }

    public final boolean onTouch(View view, MotionEvent motionevent)
    {
        if (motionevent.getAction() == 0)
        {
            l.a(c, motionevent.getX());
            l.b(c, motionevent.getY());
            if (a.contains((int)l.a(c), (int)l.b(c)))
            {
                b.setPressed(true);
            }
        }
        return false;
    }
}
