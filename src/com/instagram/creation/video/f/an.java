// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.view.Surface;
import com.instagram.creation.b.a.a;
import com.instagram.creation.b.a.b;
import com.instagram.creation.video.e.e;
import com.instagram.creation.video.gl.j;
import com.instagram.creation.video.gl.o;
import com.instagram.creation.video.j.f;

// Referenced classes of package com.instagram.creation.video.f:
//            ah, am

public final class an extends ah
    implements android.graphics.SurfaceTexture.OnFrameAvailableListener, android.media.MediaPlayer.OnCompletionListener, android.media.MediaPlayer.OnSeekCompleteListener
{

    final am b;
    private MediaPlayer c;
    private boolean d;
    private int e;
    private int f;
    private int g;

    public an(am am1, j j1)
    {
        b = am1;
        super(am1, j1);
        d = false;
        f = -42;
        g = -1;
        a().a(false);
    }

    private boolean a(int k, boolean flag)
    {
label0:
        {
            synchronized (b.e)
            {
                if (b.d)
                {
                    break label0;
                }
            }
            return false;
        }
        if (!d)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        obj;
        JVM INSTR monitorexit ;
        return false;
        exception;
        throw exception;
        d = true;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_105;
        }
        e = 200;
_L1:
        b;
        (new Object[1])[0] = Integer.valueOf(k - e);
        am.W();
        c.start();
        c.seekTo(k - e);
        obj;
        JVM INSTR monitorexit ;
        return true;
        e = 1000 + e;
          goto _L1
    }

    private void b(int k)
    {
label0:
        {
            if (k != f)
            {
                am _tmp = b;
                (new Object[1])[0] = Integer.valueOf(k);
                am.W();
                if (!a(k, true))
                {
                    break label0;
                }
                f = k;
                b.c();
            }
            return;
        }
        g = k;
    }

    public final volatile void H_()
    {
        super.H_();
    }

    protected final void a(int k)
    {
        b(k);
    }

    public final void e()
    {
        super.e();
        a().a(false);
    }

    protected final boolean h()
    {
        c = new MediaPlayer();
        try
        {
            c.setDataSource(b.a.b());
        }
        catch (Exception exception)
        {
            return false;
        }
        try
        {
            c.prepare();
        }
        catch (Exception exception1)
        {
            return false;
        }
        a().c().setOnFrameAvailableListener(this);
        c.setOnSeekCompleteListener(this);
        c.setOnCompletionListener(this);
        c.setSurface(new Surface(a().c()));
        c.setVolume(0.0F, 0.0F);
        return true;
    }

    protected final void i()
    {
        b b1 = b.Y();
        l().a(o.b);
        a().a(com.instagram.creation.video.e.e.a(b.n(), b1.d()));
        a().b(b.a);
    }

    protected final void j()
    {
        if (c != null)
        {
            c.stop();
            c.release();
            c.setOnSeekCompleteListener(null);
            c.setOnCompletionListener(null);
            c = null;
        }
    }

    public final void onCompletion(MediaPlayer mediaplayer)
    {
        f = mediaplayer.getCurrentPosition();
        a(f, false);
    }

    public final void onFrameAvailable(SurfaceTexture surfacetexture)
    {
label0:
        {
            Object aobj[];
            synchronized (b.e)
            {
                if (b.d)
                {
                    break label0;
                }
            }
            return;
        }
        b;
        aobj = new Object[2];
        aobj[0] = Integer.valueOf(c.getCurrentPosition());
        aobj[1] = Integer.valueOf(f);
        am.W();
        if (Math.abs(c.getCurrentPosition() - f) >= 100) goto _L2; else goto _L1
_L1:
        b.b = true;
        d = false;
        c.pause();
        b.d();
        if (com.instagram.creation.video.f.am.a(b) != null)
        {
            com.instagram.creation.video.f.am.a(b).a().a(true);
            if (b.c)
            {
                com.instagram.creation.video.f.am.a(b).k();
            }
        }
_L4:
        if (com.instagram.creation.video.f.am.a(b) != null)
        {
            com.instagram.creation.video.f.am.a(b).m();
        }
        obj;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (c.getCurrentPosition() <= 100 + f) goto _L4; else goto _L3
_L3:
        b;
        am.W();
        a(f, false);
          goto _L4
    }

    public final void onSeekComplete(MediaPlayer mediaplayer)
    {
label0:
        {
            Object aobj[];
            int k;
            synchronized (b.e)
            {
                if (b.d)
                {
                    break label0;
                }
            }
            return;
        }
        d = false;
        b;
        aobj = new Object[2];
        aobj[0] = Integer.valueOf(mediaplayer.getCurrentPosition());
        aobj[1] = Integer.valueOf(f);
        am.W();
        if (g == -1) goto _L2; else goto _L1
_L1:
        k = g;
        g = -1;
        b(k);
_L5:
        obj;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (e >= -3000) goto _L4; else goto _L3
_L3:
        f = mediaplayer.getCurrentPosition();
          goto _L5
_L4:
        if (mediaplayer.getCurrentPosition() <= 100 + f) goto _L5; else goto _L6
_L6:
        a(f, false);
          goto _L5
    }
}
