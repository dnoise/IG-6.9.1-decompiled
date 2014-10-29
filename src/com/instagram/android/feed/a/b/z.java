// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.b;

import android.graphics.Bitmap;
import com.instagram.android.widget.MediaActionsView;
import com.instagram.feed.d.l;
import com.instagram.feed.widget.e;

// Referenced classes of package com.instagram.android.feed.a.b:
//            ac, x, ab

final class z
    implements e
{

    final ac a;
    final int b;
    final l c;
    final x d;

    z(x x1, ac ac1, int i, l l)
    {
        d = x1;
        a = ac1;
        b = i;
        c = l;
        super();
    }

    public final void a(Bitmap bitmap)
    {
        if (bitmap != null)
        {
            a.d().setVideoIconState$736bb5a1(b);
        }
        x.b(d).a(bitmap, c, a);
    }
}
