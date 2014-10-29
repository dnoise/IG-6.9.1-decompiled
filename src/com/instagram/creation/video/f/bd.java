// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import com.instagram.creation.b.a.b;
import com.instagram.creation.base.ui.FilterPicker;
import com.instagram.creation.video.l.h;
import com.instagram.creation.video.ui.LivePreviewTextureView;

// Referenced classes of package com.instagram.creation.video.f:
//            bb

final class bd
    implements Runnable
{

    final bb a;

    bd(bb bb1)
    {
        a = bb1;
        super();
    }

    public final void run()
    {
        if (a.E() != null)
        {
            com.instagram.creation.video.f.bb.b(a).a(a.Y().K());
            bb.c(a).setVisibility(0);
            bb.d(a).setVisibility(0);
        }
    }
}
