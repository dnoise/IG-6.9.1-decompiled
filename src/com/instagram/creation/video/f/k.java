// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.hardware.Camera;
import android.os.Handler;
import com.instagram.camera.ui.FocusIndicatorView;

// Referenced classes of package com.instagram.creation.video.f:
//            j, a

final class k
    implements android.hardware.Camera.AutoFocusCallback
{

    final j a;

    k(j j1)
    {
        a = j1;
        super();
    }

    public final void onAutoFocus(boolean flag, Camera camera)
    {
        if (flag)
        {
            com.instagram.creation.video.f.a.G(a.b);
            a.a.b();
        } else
        {
            a.a.c();
        }
        com.instagram.creation.video.f.a.c(a.b).removeMessages(5);
        com.instagram.creation.video.f.a.c(a.b).sendEmptyMessageDelayed(5, 300L);
        com.instagram.creation.video.f.a.a(a.b, true);
    }
}
