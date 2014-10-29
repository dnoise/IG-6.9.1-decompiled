// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.graphics.Bitmap;
import android.os.SystemClock;
import android.widget.ImageView;

// Referenced classes of package com.instagram.creation.video.f:
//            bi

final class bl
    implements Runnable
{

    final ImageView a;
    final Bitmap b;
    final int c;
    final long d;
    final bi e;

    bl(bi bi, ImageView imageview, Bitmap bitmap, int i, long l)
    {
        e = bi;
        a = imageview;
        b = bitmap;
        c = i;
        d = l;
        super();
    }

    public final void run()
    {
        a.setImageBitmap(b);
        Integer.valueOf(c);
        Long.valueOf(SystemClock.elapsedRealtime() - d);
    }
}
