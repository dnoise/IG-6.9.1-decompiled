// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.os.Bundle;
import com.facebook.b.e;
import com.facebook.b.i;
import com.instagram.user.c.a;

// Referenced classes of package com.instagram.android.login.fragment:
//            bz, cg

final class cf
    implements e
{

    final bz a;

    private cf(bz bz1)
    {
        a = bz1;
        super();
    }

    cf(bz bz1, byte byte0)
    {
        this(bz1);
    }

    public final void a()
    {
    }

    public final void a(Bundle bundle)
    {
        String s = bundle.getString("access_token");
        com.instagram.android.login.c.e e1 = new com.instagram.android.login.c.e(a.n(), a.z(), new cg(this, a.n(), bz.j(a), a.p()));
        if (a.j().containsKey("email_lookup"))
        {
            e1.b(s, a.j().getString("email_lookup"));
            return;
        } else
        {
            e1.a(s, bz.b(a).g());
            return;
        }
    }

    public final void a(com.facebook.b.a a1)
    {
    }

    public final void a(i i)
    {
    }
}
