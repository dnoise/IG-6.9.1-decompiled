// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.nux;

import android.os.Bundle;
import com.instagram.android.login.fragment.an;
import com.instagram.base.a.a.a;

// Referenced classes of package com.instagram.android.nux:
//            n

final class q
    implements Runnable
{

    final Bundle a;
    final n b;

    q(n n1, Bundle bundle)
    {
        b = n1;
        a = bundle;
        super();
    }

    public final void run()
    {
        (new a(b.p())).a(new an(), a).a();
    }
}
