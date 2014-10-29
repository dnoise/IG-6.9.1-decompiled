// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.instagram.creation.b.a.a;
import com.instagram.creation.video.l.h;

// Referenced classes of package com.instagram.creation.video.f:
//            bi

final class bj
    implements android.view.View.OnTouchListener
{

    final GestureDetector a;
    final bi b;

    bj(bi bi1, GestureDetector gesturedetector)
    {
        b = bi1;
        a = gesturedetector;
        super();
    }

    public final boolean onTouch(View view, MotionEvent motionevent)
    {
        motionevent.getAction();
        JVM INSTR tableswitch 0 1: default 28
    //                   0 76
    //                   1 98;
           goto _L1 _L2 _L3
_L1:
        MotionEvent motionevent1 = MotionEvent.obtain(motionevent.getDownTime(), motionevent.getEventTime(), motionevent.getAction(), motionevent.getRawX(), motionevent.getRawY(), motionevent.getMetaState());
        boolean flag = a.onTouchEvent(motionevent1);
        motionevent1.recycle();
        return flag;
_L2:
        com.instagram.creation.video.f.bi.a(b, false);
        com.instagram.creation.video.f.bi.a(b).j();
        continue; /* Loop/switch isn't completed */
_L3:
        if (bi.b(b))
        {
            bi.d(b).d((int)bi.c(b));
            com.instagram.creation.video.f.bi.a(b).i();
        }
        if (true) goto _L1; else goto _L4
_L4:
    }
}
