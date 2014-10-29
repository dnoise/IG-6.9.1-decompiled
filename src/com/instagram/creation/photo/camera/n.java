// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.camera;

import android.hardware.Camera;
import com.instagram.camera.m;

// Referenced classes of package com.instagram.creation.photo.camera:
//            c

final class n
    implements android.hardware.Camera.AutoFocusCallback
{

    final c a;

    private n(c c1)
    {
        a = c1;
        super();
    }

    n(c c1, byte byte0)
    {
        this(c1);
    }

    public final void onAutoFocus(boolean flag, Camera camera)
    {
        if (c.t(a))
        {
            return;
        } else
        {
            c.g(a).a(flag);
            c.g(a).l();
            return;
        }
    }
}
