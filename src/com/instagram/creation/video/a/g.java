// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.a;

import android.view.MotionEvent;
import android.view.View;
import com.instagram.creation.video.f.a;

// Referenced classes of package com.instagram.creation.video.a:
//            e, f

public final class g
    implements android.view.View.OnTouchListener
{

    private final f a;
    private boolean b;
    private a c;

    public g(f f1, a a1)
    {
        b = false;
        a = f1;
        c = a1;
    }

    public final boolean onTouch(View view, MotionEvent motionevent)
    {
        if (motionevent.getAction() != 0) goto _L2; else goto _L1
_L1:
        if (!view.isEnabled() || c.V() != e.d)
        {
            return false;
        }
        view.setPressed(true);
        b = true;
        a.e();
_L4:
        return true;
_L2:
        if (motionevent.getAction() == 1)
        {
            view.setPressed(false);
            if (b)
            {
                a.f();
            }
            b = false;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
