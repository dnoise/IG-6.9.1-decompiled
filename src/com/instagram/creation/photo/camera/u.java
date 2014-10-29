// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.camera;

import com.instagram.camera.m;

// Referenced classes of package com.instagram.creation.photo.camera:
//            c

final class u
    implements android.hardware.Camera.ShutterCallback
{

    final c a;

    private u(c c1)
    {
        a = c1;
        super();
    }

    u(c c1, byte byte0)
    {
        this(c1);
    }

    public final void onShutter()
    {
        c.g(a).d();
    }
}
