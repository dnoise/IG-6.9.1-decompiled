// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.d;

import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.os.Handler;
import android.view.Surface;
import com.facebook.e.a.a;
import com.instagram.creation.video.gl.o;
import com.instagram.creation.video.j.j;
import java.io.IOException;

// Referenced classes of package com.instagram.creation.video.d:
//            d, e, h, g

final class f extends d
{

    final e b;
    private j c;
    private com.instagram.creation.video.k.a d;

    public f(e e1, com.instagram.creation.video.gl.j j1, com.instagram.creation.video.k.a a1)
    {
        b = e1;
        super(e1, j1);
        c = new j();
        d = a1;
        j1.a(c);
    }

    private void h()
    {
        Object obj = b.a;
        obj;
        JVM INSTR monitorenter ;
        com.instagram.creation.video.d.e.a(b).setSurface(new Surface(c.c()));
        c.c().setOnFrameAvailableListener(b);
        com.instagram.creation.video.d.e.a(b).setOnSeekCompleteListener(b);
        com.instagram.creation.video.d.e.a(b).setVolume(0.0F, 0.0F);
        com.instagram.creation.video.d.e.a(b).prepare();
_L1:
        com.instagram.creation.video.d.e.b(b);
        b.b = true;
        com.instagram.creation.video.d.e.c(b);
        com.instagram.creation.video.d.e.d(b);
        b.c.post(new h(this));
        return;
        IOException ioexception;
        ioexception;
        com.facebook.e.a.a.a("MediaPlayerManager", (new StringBuilder("Error during prepare: ")).append(ioexception.getMessage()).toString());
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }

    private void i()
    {
label0:
        {
            synchronized (b.a)
            {
                if (b.b)
                {
                    break label0;
                }
            }
            return;
        }
        b.b = false;
        if (com.instagram.creation.video.d.e.a(b) != null)
        {
            com.instagram.creation.video.d.e.a(b).release();
        }
        com.instagram.creation.video.d.e.e(b);
        obj;
        JVM INSTR monitorexit ;
    }

    public final void H_()
    {
        d.i();
        l().a(o.b);
        b.r();
        h();
        c.b(b.e);
    }

    public final void I_()
    {
        i();
    }

    public final j a()
    {
        return c;
    }

    public final void d()
    {
        b.r();
        h();
        b.c.post(new g(this));
    }

    public final void e()
    {
        c.a(false);
    }

    public final void f()
    {
        i();
    }
}
