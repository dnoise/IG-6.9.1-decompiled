// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.tiltshift;

import android.os.Handler;
import com.instagram.cliffjumper.edit.common.ui.b;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.tiltshift:
//            g, e

final class i extends g
    implements Runnable
{

    final e b;

    private i(e e1, b b1, long l, float f, float f1)
    {
        b = e1;
        super(e1, b1, l, f, f1, (byte)0);
    }

    i(e e1, b b1, long l, float f, float f1, byte byte0)
    {
        this(e1, b1, l, f, f1);
    }

    protected final void b()
    {
        e.a(b).postDelayed(this, 30L);
    }

    public final void run()
    {
        super.a(System.nanoTime());
    }
}
