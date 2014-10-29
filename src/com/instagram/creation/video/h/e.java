// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.h;

import android.hardware.Camera;
import android.media.CamcorderProfile;
import android.media.MediaRecorder;
import android.view.Surface;

// Referenced classes of package com.instagram.creation.video.h:
//            a, f, g, b, 
//            c

public final class e
    implements a
{

    private final MediaRecorder a = new MediaRecorder();

    public e()
    {
    }

    public final void a()
    {
        a.prepare();
    }

    public final void a(int i)
    {
        a.setAudioSource(5);
    }

    public final void a(Camera camera)
    {
        a.setCamera(camera);
    }

    public final void a(CamcorderProfile camcorderprofile)
    {
        a.setProfile(camcorderprofile);
    }

    public final void a(Surface surface)
    {
        a.setPreviewDisplay(surface);
    }

    public final void a(b b1)
    {
        a.setOnErrorListener(new f(this, b1));
    }

    public final void a(c c1)
    {
        a.setOnInfoListener(new g(this, c1));
    }

    public final void a(String s)
    {
        a.setOutputFile(s);
    }

    public final void b()
    {
        a.start();
    }

    public final void b(int i)
    {
        a.setVideoSource(1);
    }

    public final void c()
    {
        a.stop();
    }

    public final void d()
    {
        a.reset();
    }

    public final void e()
    {
        a.release();
    }
}
