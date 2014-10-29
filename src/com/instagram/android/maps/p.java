// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps;

import com.instagram.android.g.b;
import com.instagram.android.maps.ui.af;
import com.instagram.base.a.a.a;
import com.instagram.o.f.e;
import com.instagram.o.f.f;
import java.util.List;

// Referenced classes of package com.instagram.android.maps:
//            PhotoMapsActivity

final class p
    implements af
{

    final PhotoMapsActivity a;

    p(PhotoMapsActivity photomapsactivity)
    {
        a = photomapsactivity;
        super();
    }

    public final void a(b b1)
    {
        f.a().c(a.c(), b1.f()).a();
    }

    public final void a(List list)
    {
        com.instagram.android.maps.d.a.a(list, a.c());
    }
}
