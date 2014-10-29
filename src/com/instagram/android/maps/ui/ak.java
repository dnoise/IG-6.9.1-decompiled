// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.ui;

import android.view.MotionEvent;
import com.instagram.android.maps.ui.a.a;
import com.instagram.android.maps.ui.a.c;

// Referenced classes of package com.instagram.android.maps.ui:
//            ah

final class ak extends android.view.GestureDetector.SimpleOnGestureListener
{

    final ah a;

    private ak(ah ah1)
    {
        a = ah1;
        super();
    }

    ak(ah ah1, byte byte0)
    {
        this(ah1);
    }

    public final boolean onDoubleTap(MotionEvent motionevent)
    {
        if (ah.b(a))
        {
            return true;
        }
        if (ah.e(a) != null)
        {
            ah.e(a).a(ah.d(a));
            return true;
        } else
        {
            return super.onDoubleTap(motionevent);
        }
    }

    public final boolean onDown(MotionEvent motionevent)
    {
        return false;
    }

    public final boolean onSingleTapConfirmed(MotionEvent motionevent)
    {
        while (ah.b(a) || com.instagram.android.maps.ui.ah.c(a) != null && com.instagram.android.maps.ui.ah.c(a).a(ah.d(a))) 
        {
            return true;
        }
        return super.onSingleTapConfirmed(motionevent);
    }
}
