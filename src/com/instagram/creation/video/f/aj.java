// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.widget.SeekBar;
import com.instagram.creation.video.widget.PreviewTextureView;
import com.instagram.creation.video.widget.c;

// Referenced classes of package com.instagram.creation.video.f:
//            ah, ad

final class aj
    implements Runnable
{

    final ah a;

    aj(ah ah1)
    {
        a = ah1;
        super();
    }

    public final void run()
    {
        if (ad.f(a.a) != null)
        {
            ad.f(a.a).a(ad.h(a.a).getBitmap(ad.g(a.a).getHeight(), ad.g(a.a).getHeight()));
            ad.g(a.a).invalidate();
        }
    }
}
