// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.instagram.base.a.a.a;

// Referenced classes of package com.instagram.android.login.fragment:
//            bj, an

final class bk
    implements Runnable
{

    final Fragment a;
    final Bundle b;
    final bj c;

    bk(bj bj1, Fragment fragment, Bundle bundle)
    {
        c = bj1;
        a = fragment;
        b = bundle;
        super();
    }

    public final void run()
    {
        (new a(c.a.p())).a(a, b).a();
    }
}
