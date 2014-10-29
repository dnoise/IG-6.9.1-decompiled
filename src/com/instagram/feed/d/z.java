// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.d;

import android.graphics.Picture;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.Layout;
import java.util.Collection;
import java.util.Iterator;

// Referenced classes of package com.instagram.feed.d:
//            l, w

final class z extends Handler
{

    final w a;
    private final Picture b = new Picture();

    public z(w w1, Looper looper)
    {
        a = w1;
        super(looper);
    }

    public final void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            throw new IllegalArgumentException((new StringBuilder("unknown message")).append(message).toString());

        case 0: // '\0'
            l l1;
            for (Iterator iterator = ((Collection)message.obj).iterator(); iterator.hasNext(); a.e(l1))
            {
                l1 = (l)iterator.next();
            }

            break;

        case 1: // '\001'
            Layout layout = a.e((l)message.obj);
            layout.draw(b.beginRecording(layout.getWidth(), layout.getHeight()));
            b.endRecording();
            break;
        }
    }
}
