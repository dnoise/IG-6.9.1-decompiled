// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.g.b;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.instagram.common.g.a.g;

// Referenced classes of package com.instagram.common.g.b:
//            h, j, e, d

final class i extends Handler
{

    final h a;

    private i(h h1, Looper looper)
    {
        a = h1;
        super(looper);
    }

    i(h h1, Looper looper, byte byte0)
    {
        this(h1, looper);
    }

    public final void handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 1 1: default 24
    //                   1 45;
           goto _L1 _L2
_L1:
        h.f(a).post(new j(this, message));
_L4:
        return;
_L2:
        String s = (String)message.obj;
        g g1 = h.j(a).a(s);
        d d1 = (d)h.i(a).a(g1.a());
        if (d1 != null)
        {
            d1.a().getPixel(0, 0);
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
