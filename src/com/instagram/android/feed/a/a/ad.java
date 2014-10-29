// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.a;

import android.content.Context;
import android.os.Handler;
import android.text.ClipboardManager;
import com.instagram.android.c.a.l;
import com.instagram.common.a.a.j;
import com.instagram.common.l.a.e;
import com.instagram.ui.dialog.a;

// Referenced classes of package com.instagram.android.feed.a.a:
//            x, ae

final class ad extends j
{

    final x a;

    private ad(x x1)
    {
        a = x1;
        super();
    }

    ad(x x1, byte byte0)
    {
        this(x1);
    }

    private void a(l l1)
    {
        ((ClipboardManager)x.c(a).getSystemService("clipboard")).setText(l1.a());
        x.o(a);
    }

    public final void a()
    {
        com.instagram.ui.dialog.a.a(x.f(a));
        super.a();
    }

    public final void a(e e)
    {
        x.n(a).post(new ae(this));
        super.a(e);
    }

    public final volatile void a(Object obj)
    {
        a((l)obj);
    }

    public final void b(e e)
    {
        com.instagram.ui.dialog.a.c(x.c(a));
    }
}
