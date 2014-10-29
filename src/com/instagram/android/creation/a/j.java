// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.os.Bundle;
import android.view.View;
import com.instagram.android.directshare.widget.i;
import com.instagram.creation.b.a.b;
import com.instagram.creation.b.a.g;
import com.instagram.creation.b.d.a;

// Referenced classes of package com.instagram.android.creation.a:
//            d

final class j
    implements Runnable
{

    final View a;
    final d b;

    j(d d1, View view)
    {
        b = d1;
        a = view;
        super();
    }

    public final void run()
    {
        com.instagram.android.creation.a.d.a(b, com.instagram.creation.b.d.a.a().a(b.j().getString("pendingMediaKey")));
        com.instagram.android.creation.a.d.i(b).N().a(b);
        d.f(b).a(com.instagram.android.creation.a.d.i(b));
        if (b.E() != null)
        {
            b.a(a);
        }
    }
}
