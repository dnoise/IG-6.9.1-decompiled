// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.d;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package com.instagram.android.directshare.d:
//            ac, c

final class ab
    implements android.view.View.OnTouchListener
{

    final c a;
    private final android.view.GestureDetector.OnGestureListener b;
    private final GestureDetector c;

    private ab(c c1)
    {
        a = c1;
        super();
        b = new ac(this);
        c = new GestureDetector(c1.n(), b);
        c.setIsLongpressEnabled(false);
    }

    ab(c c1, byte byte0)
    {
        this(c1);
    }

    public final boolean onTouch(View view, MotionEvent motionevent)
    {
        c.onTouchEvent(motionevent);
        return false;
    }
}
