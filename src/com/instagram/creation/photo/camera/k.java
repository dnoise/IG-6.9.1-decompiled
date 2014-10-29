// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.camera;

import android.view.View;
import com.facebook.az;

// Referenced classes of package com.instagram.creation.photo.camera:
//            e, CameraFlashButton, c

final class k
    implements android.view.View.OnClickListener
{

    final CameraFlashButton a;
    final c b;

    k(c c1, CameraFlashButton cameraflashbutton)
    {
        b = c1;
        a = cameraflashbutton;
        super();
    }

    public final void onClick(View view)
    {
        e.b[-1 + a.getCurrentMode$2508da22()];
        JVM INSTR tableswitch 1 2: default 36
    //                   1 95
    //                   2 121;
           goto _L1 _L2 _L3
_L1:
        String s;
        s = b.c(az.pref_camera_flash_mode_off);
        c.o(b).setFlashMode("off");
_L5:
        android.content.SharedPreferences.Editor editor = c.p(b).edit();
        editor.putString("pref_camera_flashmode_key", s);
        editor.commit();
        c.q(b);
        return;
_L2:
        s = b.c(az.pref_camera_flash_mode_on);
        c.o(b).setFlashMode("on");
        continue; /* Loop/switch isn't completed */
_L3:
        s = b.c(az.pref_camera_flash_mode_auto);
        c.o(b).setFlashMode("auto");
        if (true) goto _L5; else goto _L4
_L4:
    }
}
