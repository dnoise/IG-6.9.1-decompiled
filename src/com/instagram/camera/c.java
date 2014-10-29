// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.camera;

import android.app.Activity;
import android.hardware.Camera;
import com.facebook.az;
import com.facebook.e.a.a;
import com.instagram.o.e;

public final class c
    implements android.hardware.Camera.ErrorCallback
{

    private Activity a;

    public c()
    {
    }

    public final void a(Activity activity)
    {
        a = activity;
    }

    public final void onError(int i, Camera camera)
    {
        com.facebook.e.a.a.a("CameraErrorCallback", (new StringBuilder("Got camera error callback. error=")).append(i).toString());
        if (i == 100)
        {
            e.a(az.cannot_connect_camera);
            com.instagram.common.i.c.b("Media server died. Restarting app.", "Media server died. Restarting app.");
            if (a != null)
            {
                a.finish();
            }
        }
    }
}
