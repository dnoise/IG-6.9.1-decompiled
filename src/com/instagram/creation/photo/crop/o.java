// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.crop;

import android.app.ProgressDialog;
import android.os.Handler;

// Referenced classes of package com.instagram.creation.photo.crop:
//            z, p, y

final class o extends z
    implements Runnable
{

    private final y a;
    private final ProgressDialog b;
    private final Runnable c;
    private final Handler d;
    private final Runnable e = new p(this);

    public o(y y1, Runnable runnable, ProgressDialog progressdialog, Handler handler)
    {
        a = y1;
        b = progressdialog;
        c = runnable;
        a.a(this);
        d = handler;
    }

    static y a(o o1)
    {
        return o1.a;
    }

    static ProgressDialog b(o o1)
    {
        return o1.b;
    }

    public final void a()
    {
        e.run();
        d.removeCallbacks(e);
    }

    public final void b()
    {
        b.hide();
    }

    public final void c()
    {
        b.show();
    }

    public final void run()
    {
        c.run();
        d.post(e);
        return;
        Exception exception;
        exception;
        d.post(e);
        throw exception;
    }
}
