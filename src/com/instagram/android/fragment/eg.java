// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.content.Intent;
import android.widget.Filter;
import com.instagram.common.d.a;

// Referenced classes of package com.instagram.android.fragment:
//            ea

final class eg
    implements a
{

    final ea a;

    private eg(ea ea1)
    {
        a = ea1;
        super();
    }

    eg(ea ea1, byte byte0)
    {
        this(ea1);
    }

    public final void a(Intent intent)
    {
        if (a.d() != null)
        {
            a.d().filter(a.ad());
        }
    }
}
