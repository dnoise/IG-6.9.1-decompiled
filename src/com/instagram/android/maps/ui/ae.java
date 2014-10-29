// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.ui;

import android.view.View;
import com.facebook.av;
import com.instagram.android.g.b;

// Referenced classes of package com.instagram.android.maps.ui:
//            m

final class ae
    implements android.view.View.OnClickListener
{

    final b a;
    final m b;

    ae(m m1, b b1)
    {
        b = m1;
        a = b1;
        super();
    }

    public final void onClick(View view)
    {
        m.a(b, a, view.findViewById(av.constrained_image_view));
    }
}
