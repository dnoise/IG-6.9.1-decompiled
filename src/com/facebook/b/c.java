// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.b;

import android.os.Bundle;
import android.webkit.CookieSyncManager;

// Referenced classes of package com.facebook.b:
//            e, m, b, i, 
//            a

final class c
    implements e
{

    final b a;

    c(b b1)
    {
        a = b1;
        super();
    }

    public final void a()
    {
        m.a();
        b.a(a).a();
    }

    public final void a(Bundle bundle)
    {
        CookieSyncManager.getInstance().sync();
        a.a(bundle.getString("access_token"));
        a.b(bundle.getString("expires_in"));
        if (a.b())
        {
            (new StringBuilder("Login Success! access_token=")).append(a.c()).append(" expires=").append(a.d());
            m.a();
            b.a(a).a(bundle);
            return;
        } else
        {
            b.a(a).a(new i("Failed to receive access token."));
            return;
        }
    }

    public final void a(a a1)
    {
        (new StringBuilder("Login failed: ")).append(a1);
        m.a();
        b.a(a).a(a1);
    }

    public final void a(i j)
    {
        (new StringBuilder("Login failed: ")).append(j);
        m.a();
        b.a(a).a(j);
    }
}
