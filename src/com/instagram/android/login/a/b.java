// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.a;

import com.instagram.base.a.a;

// Referenced classes of package com.instagram.android.login.a:
//            a

final class b
    implements Runnable
{

    final a a;
    final com.instagram.android.login.a.a b;

    b(com.instagram.android.login.a.a a1, a a2)
    {
        b = a1;
        a = a2;
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
