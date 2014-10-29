// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation;

import android.view.View;
import com.instagram.i.a;

// Referenced classes of package com.instagram.android.creation:
//            d

final class h
    implements android.view.View.OnClickListener
{

    final d a;

    h(d d1)
    {
        a = d1;
        super();
    }

    public final void onClick(View view)
    {
        android.location.Location location = d.f(a).a();
        if (location != null && d.f(a).a(location))
        {
            com.instagram.android.creation.d.a(a, location, d.g(a));
        } else
        if (a.u())
        {
            d.h(a);
            return;
        }
    }
}
