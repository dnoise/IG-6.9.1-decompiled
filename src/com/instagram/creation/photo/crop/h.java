// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.crop;

import android.net.Uri;
import android.os.Bundle;

// Referenced classes of package com.instagram.creation.photo.crop:
//            b, m

final class h
    implements Runnable
{

    final Bundle a;
    final b b;

    h(b b1, Bundle bundle)
    {
        b = b1;
        a = bundle;
        super();
    }

    public final void run()
    {
        if (com.instagram.creation.photo.crop.b.a(b) != null)
        {
            com.instagram.creation.photo.crop.b.a(b).a(com.instagram.creation.photo.crop.b.f(b).toString(), a);
        }
    }
}
