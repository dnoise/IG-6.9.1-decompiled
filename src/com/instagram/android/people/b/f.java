// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.b;

import android.os.Handler;
import android.widget.Toast;
import com.facebook.az;
import com.instagram.api.j.a;
import com.instagram.api.j.j;
import com.instagram.ui.widget.refresh.RefreshButton;

// Referenced classes of package com.instagram.android.people.b:
//            g, a

final class f extends a
{

    final com.instagram.android.people.b.a a;

    private f(com.instagram.android.people.b.a a1)
    {
        a = a1;
        super();
    }

    f(com.instagram.android.people.b.a a1, byte byte0)
    {
        this(a1);
    }

    private void c()
    {
        (new Handler()).post(new g(this));
    }

    public final void a()
    {
        super.a();
        com.instagram.android.people.b.a.d(a).setDisplayedChild(1);
    }

    protected final void a(j j)
    {
        super.a(j);
        Toast.makeText(a.n(), az.request_error, 0).show();
    }

    protected final void a(Object obj)
    {
        c();
    }

    public final void b()
    {
        super.b();
        com.instagram.android.people.b.a.d(a).setDisplayedChild(0);
    }
}
