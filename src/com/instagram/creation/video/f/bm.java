// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.widget.ImageView;

// Referenced classes of package com.instagram.creation.video.f:
//            bi

final class bm
    implements Runnable
{

    final ImageView a;
    final int b;
    final bi c;

    bm(bi bi1, ImageView imageview, int i)
    {
        c = bi1;
        a = imageview;
        b = i;
        super();
    }

    public final void run()
    {
        bi.a(c, a, b);
    }
}
