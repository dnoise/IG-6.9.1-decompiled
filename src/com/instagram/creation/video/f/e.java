// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.view.View;
import com.facebook.av;

// Referenced classes of package com.instagram.creation.video.f:
//            a

final class e
    implements Runnable
{

    final a a;

    e(a a1)
    {
        a = a1;
        super();
    }

    public final void run()
    {
        if (a.E() != null)
        {
            a.E().findViewById(av.black_bg).setVisibility(8);
        }
    }
}
