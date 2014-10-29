// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.support.v4.app.s;
import com.instagram.base.a.a.a;

// Referenced classes of package com.instagram.android.fragment:
//            al, ac, el

final class am
    implements Runnable
{

    final al a;

    am(al al1)
    {
        a = al1;
        super();
    }

    public final void run()
    {
        if (a.a.u())
        {
            a.a.p().b(null);
            (new a(a.a.p())).a(new el());
        }
    }
}
