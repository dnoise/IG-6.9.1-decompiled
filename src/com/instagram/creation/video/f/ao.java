// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.graphics.SurfaceTexture;
import com.instagram.creation.video.gl.j;
import com.instagram.creation.video.j.f;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.instagram.creation.video.f:
//            ad, ap, ah

public final class ao extends ad
{

    private ThreadPoolExecutor f;
    private ap g;

    public ao()
    {
        f = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue());
    }

    static ap a(ao ao1)
    {
        return ao1.g;
    }

    static ThreadPoolExecutor b(ao ao1)
    {
        return ao1.f;
    }

    public final void H()
    {
        super.H();
        f.shutdown();
    }

    public final ah V()
    {
        return g;
    }

    public final void X()
    {
        if (g != null)
        {
            if (g.a() != null && g.a().c() != null)
            {
                g.a().c().setOnFrameAvailableListener(null);
            }
            g = null;
        }
    }

    public final void a(j j)
    {
        g = new ap(this, j);
    }
}
