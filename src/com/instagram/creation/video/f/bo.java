// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.view.MotionEvent;
import com.instagram.creation.b.a.a;
import com.instagram.creation.video.l.h;
import com.instagram.creation.video.ui.LivePreviewTextureView;

// Referenced classes of package com.instagram.creation.video.f:
//            bi

final class bo extends android.view.GestureDetector.SimpleOnGestureListener
{

    final bi a;

    private bo(bi bi1)
    {
        a = bi1;
        super();
    }

    bo(bi bi1, byte byte0)
    {
        this(bi1);
    }

    public final boolean onScroll(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
    {
        int i;
        for (i = bi.d(a).k() - bi.d(a).l(); i == 0 || !com.instagram.creation.video.f.bi.a(a).f();)
        {
            return true;
        }

        double d = Math.abs(i);
        double d1;
        double d2;
        if (bi.d(a).a())
        {
            d1 = (double)f1 / d;
        } else
        {
            d1 = (double)f / d;
        }
        d2 = Math.min(1.0D, Math.max(d1 + (double)bi.d(a).e(), 0.0D));
        com.instagram.creation.video.f.bi.a(a, (float)d2);
        Float.valueOf(bi.d(a).e());
        Double.valueOf(d2);
        return true;
    }

    public final boolean onSingleTapUp(MotionEvent motionevent)
    {
        bi.r(a).performClick();
        super.onSingleTapUp(motionevent);
        return true;
    }
}
