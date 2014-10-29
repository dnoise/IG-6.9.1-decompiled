// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.camera;

import android.support.v4.app.k;

// Referenced classes of package com.instagram.creation.photo.camera:
//            c

final class m
    implements Runnable
{

    final c a;

    m(c c1)
    {
        a = c1;
        super();
    }

    public final void run()
    {
        a.l().finish();
    }
}
