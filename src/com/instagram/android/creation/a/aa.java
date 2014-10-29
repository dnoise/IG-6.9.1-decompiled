// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.location.Location;
import android.os.Bundle;
import android.view.View;
import com.instagram.creation.b.a.b;

// Referenced classes of package com.instagram.android.creation.a:
//            t

final class aa
    implements Runnable
{

    final Bundle a;
    final View b;
    final t c;

    aa(t t1, Bundle bundle, View view)
    {
        c = t1;
        a = bundle;
        b = view;
        super();
    }

    public final void run()
    {
        t.a(c, t.d(c).j());
        com.instagram.android.creation.a.t.b(c, (Location)c.j().getParcelable("location"));
        if (a != null)
        {
            t.c(c, (Location)a.getParcelable("location"));
        }
        if (c.E() != null)
        {
            t.a(c, b);
        }
    }
}
