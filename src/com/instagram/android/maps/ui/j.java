// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.ui;

import android.os.Handler;
import java.util.TimerTask;

// Referenced classes of package com.instagram.android.maps.ui:
//            i, k

final class j extends TimerTask
{

    final i a;

    j(i l)
    {
        a = l;
        super();
    }

    public final void run()
    {
        i.a(a).post(new k(this));
    }
}
