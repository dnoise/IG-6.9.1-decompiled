// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import com.instagram.base.a.a;

// Referenced classes of package com.instagram.android.login.fragment:
//            co

final class cp
    implements Runnable
{

    final a a;
    final co b;

    cp(co co, a a1)
    {
        b = co;
        a = a1;
        super();
    }

    public final void run()
    {
        if (a != null)
        {
            a.b();
        }
    }
}
