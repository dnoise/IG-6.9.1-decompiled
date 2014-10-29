// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.f;

import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package com.instagram.ui.f:
//            b

final class c
    implements android.view.View.OnTouchListener
{

    final b a;

    c(b b1)
    {
        a = b1;
        super();
    }

    public final boolean onTouch(View view, MotionEvent motionevent)
    {
        if (motionevent.getActionMasked() == 4)
        {
            a.b();
            return true;
        } else
        {
            return false;
        }
    }
}
