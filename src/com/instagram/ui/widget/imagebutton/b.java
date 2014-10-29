// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.widget.imagebutton;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.instagram.ui.widget.imagebutton:
//            IgImageButton

final class b extends Handler
{

    final IgImageButton a;

    private b(IgImageButton igimagebutton)
    {
        a = igimagebutton;
        super();
    }

    b(IgImageButton igimagebutton, byte byte0)
    {
        this(igimagebutton);
    }

    public final void handleMessage(Message message)
    {
        if (message.what == 1)
        {
            IgImageButton.d(a);
        } else
        if (message.what == 2)
        {
            IgImageButton.c(a);
            return;
        }
    }
}
