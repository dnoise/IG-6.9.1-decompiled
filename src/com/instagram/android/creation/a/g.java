// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.view.View;
import com.instagram.android.directshare.widget.d;
import com.instagram.creation.b.a.b;
import com.instagram.creation.b.a.f;

// Referenced classes of package com.instagram.android.creation.a:
//            d

final class g
    implements d
{

    final com.instagram.android.creation.a.d a;

    g(com.instagram.android.creation.a.d d1)
    {
        a = d1;
        super();
    }

    public final void a(View view)
    {
        f f1 = (f)view.getTag();
        d.i(a).N().b(f1);
    }
}
