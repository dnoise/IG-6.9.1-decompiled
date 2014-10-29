// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.activity;

import com.instagram.common.j.d;
import com.instagram.j.e.a;

// Referenced classes of package com.instagram.android.activity:
//            MainTabActivity

final class q
    implements d
{

    final MainTabActivity a;

    q(MainTabActivity maintabactivity)
    {
        a = maintabactivity;
        super();
    }

    private static void a()
    {
        com.instagram.j.e.a.a().b();
    }

    private static boolean a(com.instagram.android.c2dm.a a1)
    {
        return "newstab".equals(a1.a);
    }

    public final volatile boolean a(com.instagram.common.j.a a1)
    {
        return a((com.instagram.android.c2dm.a)a1);
    }

    public final void b(com.instagram.common.j.a a1)
    {
        a();
    }
}
