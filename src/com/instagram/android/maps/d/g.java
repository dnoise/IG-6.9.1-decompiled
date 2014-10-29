// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.d;

import android.view.View;
import com.instagram.android.maps.e.a;

// Referenced classes of package com.instagram.android.maps.d:
//            a

final class g
    implements android.view.View.OnClickListener
{

    final com.instagram.android.maps.d.a a;

    g(com.instagram.android.maps.d.a a1)
    {
        a = a1;
        super();
    }

    public final void onClick(View view)
    {
        com.instagram.android.maps.e.a.a().c(com.instagram.android.maps.d.a.e(a));
        a.d().notifyDataSetChanged();
    }
}
