// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import com.instagram.ui.dialog.f;

// Referenced classes of package com.instagram.creation.video.f:
//            v, a

final class w
    implements Runnable
{

    final v a;

    w(v v1)
    {
        a = v1;
        super();
    }

    public final void run()
    {
        if (com.instagram.creation.video.f.a.H(a.a) != null)
        {
            com.instagram.creation.video.f.a.H(a.a).show();
        }
    }
}
