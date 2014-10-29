// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.os.Bundle;
import com.instagram.creation.base.ui.FilterPicker;

// Referenced classes of package com.instagram.creation.video.f:
//            bb

final class be
    implements Runnable
{

    final bb a;

    be(bb bb1)
    {
        a = bb1;
        super();
    }

    public final void run()
    {
        if (bb.d(a) != null)
        {
            bb.d(a).smoothScrollTo(a.j().getInt("VideoFilterFragment.FILTER_SCROLL_X", 0), 0);
        }
    }
}
