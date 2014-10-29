// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.view.SurfaceHolder;

// Referenced classes of package com.instagram.creation.video.f:
//            a

final class x
    implements android.view.SurfaceHolder.Callback
{

    final a a;

    private x(a a1)
    {
        a = a1;
        super();
    }

    x(a a1, byte byte0)
    {
        this(a1);
    }

    public final void surfaceChanged(SurfaceHolder surfaceholder, int i, int j, int k)
    {
    }

    public final void surfaceCreated(SurfaceHolder surfaceholder)
    {
        com.instagram.creation.video.f.a.g(a);
    }

    public final void surfaceDestroyed(SurfaceHolder surfaceholder)
    {
    }
}
