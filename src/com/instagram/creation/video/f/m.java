// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import com.facebook.az;
import com.instagram.o.e;

// Referenced classes of package com.instagram.creation.video.f:
//            a

final class m
    implements Runnable
{

    final a a;

    m(a a1)
    {
        a = a1;
        super();
    }

    public final void run()
    {
        e.a(az.video_failed_to_start);
        com.instagram.creation.video.f.a.i(a);
    }
}
