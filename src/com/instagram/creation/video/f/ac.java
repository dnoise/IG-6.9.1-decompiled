// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import com.instagram.creation.b.a.b;
import com.instagram.creation.video.l.h;
import com.instagram.creation.video.ui.LivePreviewTextureView;

// Referenced classes of package com.instagram.creation.video.f:
//            y

final class ac
    implements Runnable
{

    final y a;

    ac(y y1)
    {
        a = y1;
        super();
    }

    public final void run()
    {
        com.instagram.creation.video.f.y.b(a).a(y.c(a).d());
        com.instagram.creation.video.f.y.b(a).a(y.c(a).K());
        y.d(a).setVisibility(0);
    }
}
