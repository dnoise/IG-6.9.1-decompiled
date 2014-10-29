// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.a;

import android.os.Bundle;
import com.instagram.android.login.c.f;
import com.instagram.android.login.fragment.v;
import com.instagram.user.c.a;

// Referenced classes of package com.instagram.android.login.a:
//            d

final class g
    implements Runnable
{

    final f a;
    final d b;

    g(d d1, f f1)
    {
        b = d1;
        a = f1;
        super();
    }

    public final void run()
    {
        Bundle bundle = new Bundle();
        bundle.putString("argument_reset_token", a.b());
        bundle.putString("argument_user_id", a.a().g());
        (new com.instagram.base.a.a.a(d.b(b))).a(new v(), bundle).a();
    }
}
