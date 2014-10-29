// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.d;

import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import com.instagram.creation.b.a.a;
import com.instagram.creation.video.j.j;
import java.io.IOException;

// Referenced classes of package com.instagram.creation.video.d:
//            a, i, f, c, 
//            d, b

public final class e extends com.instagram.creation.video.d.a
    implements android.media.MediaPlayer.OnCompletionListener, android.media.MediaPlayer.OnSeekCompleteListener
{

    private MediaPlayer f;
    private d g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;
    private int l;
    private int m;
    private int n;
    private int o;

    public e(b b1, com.instagram.creation.video.gl.j j1, com.instagram.creation.video.k.a a1)
    {
        super(b1);
        k = false;
        m = -1;
        n = -1;
        o = i.b;
        h = true;
        g = new f(this, j1, a1);
    }

    static MediaPlayer a(e e1)
    {
        return e1.f;
    }

    private void a(int i1, boolean flag)
    {
label0:
        {
            if (i1 != m)
            {
                if (flag)
                {
                    o();
                    p();
                }
                i = false;
                if (!b(i1, true))
                {
                    break label0;
                }
                m = i1;
                f.setVolume(0.0F, 0.0F);
            }
            return;
        }
        n = i1;
    }

    private boolean b(int i1, boolean flag)
    {
label0:
        {
            synchronized (a)
            {
                if (b)
                {
                    break label0;
                }
            }
            return false;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_95;
        }
        if (!k)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        obj;
        JVM INSTR monitorexit ;
        return false;
        exception;
        throw exception;
        k = true;
        l = 200;
_L1:
        (new StringBuilder("Seeking to ")).append(i1 - l);
        f.start();
        f.seekTo(i1 - l);
        obj;
        JVM INSTR monitorexit ;
        return true;
        l = 1000 + l;
          goto _L1
    }

    static boolean b(e e1)
    {
        e1.h = true;
        return true;
    }

    static boolean c(e e1)
    {
        e1.i = false;
        return false;
    }

    static int d(e e1)
    {
        e1.m = -1;
        return -1;
    }

    static MediaPlayer e(e e1)
    {
        e1.f = null;
        return null;
    }

    private void s()
    {
        h = false;
        f.start();
        o = com.instagram.creation.video.d.i.a;
        f.setVolume(1.0F, 1.0F);
        if (d != null)
        {
            d.F_();
        }
    }

    private void t()
    {
        m = -1;
        v();
        m();
        h = true;
        if (d != null)
        {
            d.c();
        }
    }

    private void u()
    {
        o = i.c;
        a(e.f(), false);
    }

    private void v()
    {
        o = i.b;
        a(e.f(), false);
    }

    public final void a()
    {
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        if (!b || g()) goto _L2; else goto _L1
_L1:
        q();
        h = true;
        if (!i)
        {
            break MISSING_BLOCK_LABEL_67;
        }
        f.pause();
_L4:
        if (d != null)
        {
            d.c();
        }
        m();
_L2:
        return;
        u();
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public final void b()
    {
        if (f == null || !f.isPlaying())
        {
            return;
        } else
        {
            f.pause();
            t();
            return;
        }
    }

    public final void c()
    {
        o = i.b;
        a(e.f(), true);
    }

    public final void d()
    {
        o = i.b;
        a(e.g(), true);
    }

    public final boolean e()
    {
        return g.a().e();
    }

    public final void f()
    {
        g.a().f();
        synchronized (a)
        {
            if (b && !f.isPlaying())
            {
                g.a().a(false);
                g.m();
            }
        }
    }

    public final boolean g()
    {
        if (h)
        {
            if (i)
            {
                s();
                l();
                return true;
            } else
            {
                p();
                o();
                u();
                j = true;
                return true;
            }
        } else
        {
            return false;
        }
    }

    public final d k()
    {
        return g;
    }

    public final void onCompletion(MediaPlayer mediaplayer)
    {
        t();
        m();
    }

    public final void onFrameAvailable(SurfaceTexture surfacetexture)
    {
label0:
        {
            if (g == null)
            {
                return;
            }
            synchronized (a)
            {
                if (b)
                {
                    break label0;
                }
            }
            return;
        }
        int i1 = f.getCurrentPosition();
        if (o != i.b && o != i.c || i1 <= -100 + m) goto _L2; else goto _L1
_L1:
        if (i1 <= 100 + m) goto _L4; else goto _L3
_L3:
        b(m, false);
_L2:
        if (o == com.instagram.creation.video.d.i.a)
        {
            if (i1 > e.g())
            {
                break MISSING_BLOCK_LABEL_247;
            }
            g.a().a(true);
            if (d != null)
            {
                d.a(i1);
            }
        }
_L5:
        g.m();
        obj;
        JVM INSTR monitorexit ;
        return;
_L4:
label1:
        {
            k = false;
            f.pause();
            if (o == i.b)
            {
                g.a().a(true);
            }
            if (m == e.f())
            {
                break label1;
            }
            u();
        }
          goto _L2
label2:
        {
            i = true;
            if (!j)
            {
                break label2;
            }
            o();
            s();
            j = false;
        }
          goto _L2
        q();
        n();
          goto _L2
        t();
          goto _L5
    }

    public final void onSeekComplete(MediaPlayer mediaplayer)
    {
label0:
        {
            int i1;
            synchronized (a)
            {
                if (b)
                {
                    break label0;
                }
            }
            return;
        }
        k = false;
        (new StringBuilder("Seek Complete at ")).append(mediaplayer.getCurrentPosition());
        if (n == -1) goto _L2; else goto _L1
_L1:
        i1 = n;
        n = -1;
        a(i1, true);
_L5:
        obj;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (m - l >= -3000) goto _L4; else goto _L3
_L3:
        m = mediaplayer.getCurrentPosition();
          goto _L5
_L4:
        if (mediaplayer.getCurrentPosition() <= 100 + m) goto _L5; else goto _L6
_L6:
        b(m, false);
          goto _L5
    }

    public final void r()
    {
        f = new MediaPlayer();
        try
        {
            f.setDataSource(e.b());
            f.setOnCompletionListener(this);
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
    }
}
