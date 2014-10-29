// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.widget.imagebutton;

import android.os.Message;
import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package com.instagram.ui.widget.imagebutton:
//            IgImageButton, b

final class a
    implements android.view.View.OnTouchListener
{

    final IgImageButton a;

    a(IgImageButton igimagebutton)
    {
        a = igimagebutton;
        super();
    }

    public final boolean onTouch(View view, MotionEvent motionevent)
    {
        if (!IgImageButton.a(a)) goto _L2; else goto _L1
_L1:
        motionevent.getAction();
        JVM INSTR tableswitch 0 3: default 44
    //                   0 46
    //                   1 123
    //                   2 44
    //                   3 85;
           goto _L2 _L3 _L4 _L2 _L5
_L2:
        return false;
_L3:
        IgImageButton.b(a).removeMessages(2);
        IgImageButton.b(a).sendMessageDelayed(Message.obtain(IgImageButton.b(a), 1), 75L);
        continue; /* Loop/switch isn't completed */
_L5:
        if (IgImageButton.b(a).hasMessages(1))
        {
            IgImageButton.b(a).removeMessages(1);
        } else
        {
            IgImageButton.c(a);
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (IgImageButton.b(a).hasMessages(1))
        {
            IgImageButton.b(a).removeMessages(1);
            IgImageButton.d(a);
            IgImageButton.b(a).sendMessageDelayed(Message.obtain(IgImageButton.b(a), 2), 200L);
        } else
        {
            IgImageButton.c(a);
        }
        if (true) goto _L2; else goto _L6
_L6:
    }
}
