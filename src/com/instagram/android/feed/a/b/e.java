// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.b;

import android.graphics.Bitmap;
import com.instagram.android.feed.ui.MediaOptionsButton;

// Referenced classes of package com.instagram.android.feed.a.b:
//            g, a

final class e
    implements com.instagram.feed.widget.e
{

    final g a;
    final a b;

    e(a a1, g g1)
    {
        b = a1;
        a = g1;
        super();
    }

    public final void a(Bitmap bitmap)
    {
        if (bitmap != null)
        {
            a.k.setEnabled(true);
            a.k.setClickable(true);
        }
    }
}
