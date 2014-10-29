// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.e;

import com.instagram.f.a.a.m;

// Referenced classes of package com.instagram.android.directshare.e:
//            c, b, n

final class d
    implements Runnable
{

    final c a;

    d(c c1)
    {
        a = c1;
        super();
    }

    public final void run()
    {
        (new m(a.a.n(), a.a.z(), new n(a.a, (byte)0))).g();
    }
}
