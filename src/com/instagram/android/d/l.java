// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.d;

import android.support.v4.app.Fragment;
import com.instagram.ui.dialog.g;

// Referenced classes of package com.instagram.android.d:
//            j, f

final class l
    implements Runnable
{

    final j a;

    l(j j1)
    {
        a = j1;
        super();
    }

    public final void run()
    {
        (new g()).a(a.a.b.p(), "progress");
    }
}
