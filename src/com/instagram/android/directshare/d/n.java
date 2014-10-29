// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.d;

import android.view.View;
import com.instagram.model.b.a;
import com.instagram.o.f.e;
import com.instagram.o.f.f;

// Referenced classes of package com.instagram.android.directshare.d:
//            c

final class n
    implements android.view.View.OnClickListener
{

    final a a;
    final c b;

    n(c c1, a a1)
    {
        b = c1;
        a = a1;
        super();
    }

    public final void onClick(View view)
    {
        f.a().a(b.p(), a.a().g()).a();
    }
}
