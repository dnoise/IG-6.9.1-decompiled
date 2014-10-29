// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.d;

import android.view.MotionEvent;

// Referenced classes of package com.instagram.android.directshare.d:
//            ab, c

final class ac extends android.view.GestureDetector.SimpleOnGestureListener
{

    final ab a;

    ac(ab ab1)
    {
        a = ab1;
        super();
    }

    public final boolean onDown(MotionEvent motionevent)
    {
        return true;
    }

    public final boolean onSingleTapUp(MotionEvent motionevent)
    {
        a.a.c();
        return false;
    }
}
