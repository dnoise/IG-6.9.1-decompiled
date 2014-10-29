// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.d;

import com.instagram.a.f;
import com.instagram.android.maps.a.a;

// Referenced classes of package com.instagram.android.maps.d:
//            b, a

final class c
    implements Runnable
{

    final b a;

    c(b b1)
    {
        a = b1;
        super();
    }

    public final void run()
    {
        a.a.d().notifyDataSetChanged();
        f.a(a.a.l()).b();
        com.instagram.android.maps.d.a.a(a.a);
    }
}
