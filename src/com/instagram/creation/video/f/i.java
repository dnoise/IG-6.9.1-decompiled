// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.support.v4.app.k;
import android.widget.Toast;
import com.instagram.common.i.c;

// Referenced classes of package com.instagram.creation.video.f:
//            a

final class i
    implements Runnable
{

    final Throwable a;
    final int b;
    final a c;

    i(a a1, Throwable throwable, int j)
    {
        c = a1;
        a = throwable;
        b = j;
        super();
    }

    public final void run()
    {
        com.instagram.common.i.c.a("CamcorderFragment", a);
        Toast.makeText(c.n(), b, 1).show();
        c.l().onBackPressed();
    }
}
