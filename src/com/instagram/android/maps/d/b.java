// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.d;

import android.view.View;
import com.instagram.android.maps.e.d;

// Referenced classes of package com.instagram.android.maps.d:
//            a, c

final class b
    implements d
{

    final a a;

    b(a a1)
    {
        a = a1;
        super();
    }

    public final void a()
    {
        if (a.E() != null)
        {
            a.E().post(new c(this));
        }
    }
}
