// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.crop;

import android.graphics.Bitmap;

// Referenced classes of package com.instagram.creation.photo.crop:
//            b, m

final class k
    implements Runnable
{

    final Bitmap a;
    final b b;

    k(b b1, Bitmap bitmap)
    {
        b = b1;
        a = bitmap;
        super();
    }

    public final void run()
    {
        com.instagram.creation.photo.crop.b.c(b, a);
        com.instagram.creation.photo.crop.b.a(b).g();
    }
}
