// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.a;

import android.os.Handler;
import android.support.v4.app.Fragment;
import android.widget.Toast;
import com.facebook.az;
import com.instagram.api.j.a;
import com.instagram.api.j.j;

// Referenced classes of package com.instagram.android.feed.a.a:
//            x, ag

final class af extends a
{

    final x a;

    private af(x x1)
    {
        a = x1;
        super();
    }

    af(x x1, byte byte0)
    {
        this(x1);
    }

    private void c()
    {
        Toast.makeText(x.c(a), az.we_will_review_this_photo_asap, 1).show();
    }

    public final void a()
    {
        com.instagram.ui.dialog.a.a(x.m(a).p());
        super.a();
    }

    protected final void a(j j)
    {
        com.instagram.ui.dialog.a.b(x.c(a));
    }

    protected final void a(Object obj)
    {
        c();
    }

    public final void b()
    {
        x.n(a).post(new ag(this));
        super.b();
    }
}
