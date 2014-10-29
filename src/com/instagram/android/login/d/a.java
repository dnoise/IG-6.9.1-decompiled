// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.d;

import android.content.Context;
import android.support.v4.app.s;
import com.instagram.common.y.f.b;
import com.instagram.ui.dialog.g;

// Referenced classes of package com.instagram.android.login.d:
//            c, b

public final class a extends com.instagram.common.c.a
{

    private final Context a;
    private final s b;

    public a(Context context, s s1)
    {
        a = context;
        b = s1;
    }

    private void a(Void void1)
    {
        super.a(void1);
        g g1 = (g)b.a("ProgressDialog");
        if (g1 != null)
        {
            g1.b();
        }
        com.instagram.common.y.f.b.a();
    }

    private transient Void c()
    {
        com.instagram.common.a.b.a.a().a(new c((byte)0));
        com.instagram.common.y.f.b.b(a);
        return null;
    }

    protected final Object a(Object aobj[])
    {
        return c();
    }

    protected final void a()
    {
        super.a();
        (new com.instagram.android.login.d.b()).a(b.a(), "ProgressDialog");
    }

    protected final volatile void a(Object obj)
    {
        a((Void)obj);
    }
}
