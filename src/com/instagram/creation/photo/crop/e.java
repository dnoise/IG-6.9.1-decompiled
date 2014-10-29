// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.crop;

import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.a.c;
import android.support.v4.app.ao;

// Referenced classes of package com.instagram.creation.photo.crop:
//            x, b, f, w

final class e
    implements ao
{

    final Uri a;
    final b b;

    e(b b1, Uri uri)
    {
        b = b1;
        a = uri;
        super();
    }

    private void a(x x1)
    {
        com.instagram.creation.photo.crop.b.a(b, x1.a);
        com.instagram.creation.photo.crop.b.a(b, x1.b);
        com.instagram.creation.photo.crop.b.a(b, x1.c);
        com.instagram.creation.photo.crop.b.d(b).post(new f(this));
    }

    public final c a(Bundle bundle)
    {
        return new w(b.n(), a);
    }

    public final volatile void a(c c, Object obj)
    {
        a((x)obj);
    }
}
