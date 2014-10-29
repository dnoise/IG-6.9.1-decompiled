// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.common.ui;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;

// Referenced classes of package com.instagram.cliffjumper.edit.common.ui:
//            h

final class j extends h
    implements Runnable
{

    private static int a = 25;
    private Handler b;

    public j(View view)
    {
        super(view);
        b = new Handler(Looper.getMainLooper());
    }

    protected final void a()
    {
        b.postDelayed(this, a);
    }

    protected final void b()
    {
        b.removeCallbacks(this);
    }

    public final void run()
    {
        a(SystemClock.uptimeMillis());
    }

}
