// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.view.View;
import com.facebook.av;

// Referenced classes of package com.instagram.creation.video.f:
//            ad

final class af
    implements Runnable
{

    final ad a;

    af(ad ad1)
    {
        a = ad1;
        super();
    }

    public final void run()
    {
        if (a.E() != null)
        {
            a.E().findViewById(av.scrubber_spinner).setVisibility(8);
            a.E().findViewById(av.scrubber_content).setVisibility(0);
        }
    }
}
