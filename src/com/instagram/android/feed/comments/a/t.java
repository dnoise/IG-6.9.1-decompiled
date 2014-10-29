// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.comments.a;

import android.os.Handler;
import android.widget.Toast;
import com.facebook.az;
import com.instagram.api.j.a;
import com.instagram.api.j.j;

// Referenced classes of package com.instagram.android.feed.comments.a:
//            a, u

final class t extends a
{

    final com.instagram.android.feed.comments.a.a a;

    private t(com.instagram.android.feed.comments.a.a a1)
    {
        a = a1;
        super();
    }

    t(com.instagram.android.feed.comments.a.a a1, byte byte0)
    {
        this(a1);
    }

    private void c()
    {
        Toast.makeText(a.n(), az.we_will_review_this_comment_asap, 1).show();
    }

    public final void a()
    {
        com.instagram.ui.dialog.a.a(a.p());
    }

    protected final void a(j j)
    {
        com.instagram.ui.dialog.a.b(a.n());
    }

    protected final void a(Object obj)
    {
        c();
    }

    public final void b()
    {
        com.instagram.android.feed.comments.a.a.g(a).post(new u(this));
    }
}
