// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.crop;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;

// Referenced classes of package com.instagram.creation.photo.crop:
//            b, m

final class j
    implements Runnable
{

    final Bitmap a;
    final Bundle b;
    final b c;

    j(b b1, Bitmap bitmap, Bundle bundle)
    {
        c = b1;
        a = bitmap;
        b = bundle;
        super();
    }

    public final void run()
    {
        com.instagram.creation.photo.crop.b.c(c, a);
        if (com.instagram.creation.photo.crop.b.a(c) != null)
        {
            com.instagram.creation.photo.crop.b.a(c).a(com.instagram.creation.photo.crop.b.f(c).toString(), b);
        }
    }
}
