// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.os.Bundle;
import com.facebook.b.a;
import com.facebook.b.e;
import com.facebook.b.i;

// Referenced classes of package com.instagram.android.login.fragment:
//            a, g

final class f
    implements e
{

    final com.instagram.android.login.fragment.a a;

    private f(com.instagram.android.login.fragment.a a1)
    {
        a = a1;
        super();
    }

    f(com.instagram.android.login.fragment.a a1, byte byte0)
    {
        this(a1);
    }

    public final void a()
    {
    }

    public final void a(Bundle bundle)
    {
        String s = bundle.getString("access_token");
        (new com.instagram.android.login.c.e(a.n(), a.z(), new g(this, a.n(), com.instagram.android.login.fragment.a.b(a), a.p()))).a(s);
    }

    public final void a(a a1)
    {
    }

    public final void a(i i)
    {
    }
}
