// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.comments.a;

import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package com.instagram.feed.comments.a:
//            d, h, a, g, 
//            f

final class e extends android.view.GestureDetector.SimpleOnGestureListener
{

    final d a;

    e(d d1)
    {
        a = d1;
        super();
    }

    public final boolean onDown(MotionEvent motionevent)
    {
        return true;
    }

    public final void onLongPress(MotionEvent motionevent)
    {
        a.b.a.performHapticFeedback(0);
        com.instagram.feed.comments.a.a.a(a.d).a(a.c);
        a.b.a.setPressed(false);
    }

    public final void onShowPress(MotionEvent motionevent)
    {
        a.b.a.setPressed(true);
    }

    public final boolean onSingleTapUp(MotionEvent motionevent)
    {
        if (a.b.a.isPressed())
        {
            a.b.a.setPressed(false);
        } else
        {
            a.b.a.setPressed(true);
            a.b.a.post(new f(this));
        }
        com.instagram.feed.comments.a.a.a(a.d).a(a.c);
        return true;
    }
}
