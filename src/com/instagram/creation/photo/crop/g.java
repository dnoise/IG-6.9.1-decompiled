// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.crop;

import android.graphics.Rect;
import com.instagram.creation.photo.gallery.c;

// Referenced classes of package com.instagram.creation.photo.crop:
//            b

final class g
    implements Runnable
{

    final Rect a;
    final b b;

    g(b b1, Rect rect)
    {
        b = b1;
        a = rect;
        super();
    }

    public final void run()
    {
        if (com.instagram.creation.photo.crop.b.e(b).g())
        {
            com.instagram.creation.photo.crop.b.a(b, a);
            return;
        } else
        {
            android.graphics.Bitmap bitmap = com.instagram.creation.photo.crop.b.b(b, a);
            com.instagram.creation.photo.crop.b.b(b, bitmap);
            return;
        }
    }
}
