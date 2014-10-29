// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package com.instagram.creation.video.f:
//            bi

final class bk
    implements android.view.View.OnTouchListener
{

    final GestureDetector a;
    final bi b;

    bk(bi bi, GestureDetector gesturedetector)
    {
        b = bi;
        a = gesturedetector;
        super();
    }

    public final boolean onTouch(View view, MotionEvent motionevent)
    {
        a.onTouchEvent(motionevent);
        return true;
    }
}
