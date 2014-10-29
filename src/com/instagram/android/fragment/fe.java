// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.view.View;

// Referenced classes of package com.instagram.android.fragment:
//            fd, fc

final class fe
    implements Runnable
{

    final int a;
    final float b;
    final fd c;

    fe(fd fd1, int i, float f)
    {
        c = fd1;
        a = i;
        b = f;
        super();
    }

    public final void run()
    {
        fc.a(c.a).setPadding(0, a, 0, 0);
        if (b == (float)fc.b(c.a))
        {
            fc.a(c.a).clearAnimation();
        }
    }
}
