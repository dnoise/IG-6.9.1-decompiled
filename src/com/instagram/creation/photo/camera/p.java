// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.camera;

import android.hardware.Camera;
import android.net.Uri;
import android.os.Bundle;
import com.instagram.b.d.c;
import com.instagram.camera.e;

// Referenced classes of package com.instagram.creation.photo.camera:
//            c, o, s

final class p
    implements android.hardware.Camera.PictureCallback
{

    final com.instagram.creation.photo.camera.c a;

    private p(com.instagram.creation.photo.camera.c c1)
    {
        a = c1;
        super();
    }

    p(com.instagram.creation.photo.camera.c c1, byte byte0)
    {
        this(c1);
    }

    private static int a(Camera camera)
    {
        return Integer.parseInt(camera.getParameters().get("rotation"));
    }

    public final void onPictureTaken(byte abyte0[], Camera camera)
    {
        android.hardware.Camera.Size size;
        if (c.t(a))
        {
            return;
        }
        c.a().a("on_picture_taken");
        size = c.o(a).getPictureSize();
        c.u(a).a(abyte0, size.width, size.height, a(camera));
        c.h(a);
        c.u(a).a();
        if (c.v(a) != null) goto _L2; else goto _L1
_L1:
        c.w(a);
_L4:
        c.a().b("on_picture_taken");
        return;
_L2:
        int i;
        String s1 = camera.getParameters().get("rotation");
        i = 0;
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_126;
        }
        int j = a(camera);
        i = j;
_L5:
        String s2 = c.v(a).toString();
        boolean flag = e.a().c(c.j(a));
        Bundle bundle = new Bundle();
        bundle.putInt("mediaSource", 1);
        bundle.putString("mediaFilePath", s2);
        bundle.putInt("cameraRotation", i);
        bundle.putBoolean("mirrorMedia", flag);
        bundle.putInt("originalWidth", size.width);
        bundle.putInt("originalHeight", size.height);
        bundle.putFloat("straighteningAngle", c.x(a));
        bundle.putString("pendingMediaKey", c.y(a));
        bundle.putBoolean("directShare", c.z(a));
        ((s)a.l()).a(bundle);
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        i = 0;
          goto _L5
    }
}
