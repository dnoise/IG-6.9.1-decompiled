// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.l.a;

import android.media.MediaPlayer;
import android.widget.FrameLayout;
import com.facebook.e.a.a;
import java.io.FileDescriptor;
import java.util.EnumSet;

// Referenced classes of package com.instagram.android.l.a:
//            g, d, e, f

public abstract class c
    implements android.media.MediaPlayer.OnCompletionListener, android.media.MediaPlayer.OnErrorListener, android.media.MediaPlayer.OnInfoListener, android.media.MediaPlayer.OnPreparedListener
{

    protected MediaPlayer a;
    protected f b;
    protected e c;
    protected d d;
    protected int e;
    protected g f;

    public c()
    {
        a = new MediaPlayer();
        a.setOnPreparedListener(this);
        a.setOnCompletionListener(this);
        a.setOnErrorListener(this);
        a.setOnInfoListener(this);
        f = com.instagram.android.l.a.g.a;
    }

    public abstract void a();

    public final void a(float f1, float f2)
    {
        a.setVolume(f1, f2);
    }

    public abstract void a(FrameLayout framelayout);

    public final void a(d d1)
    {
        d = d1;
    }

    public final void a(e e1)
    {
        c = e1;
    }

    public final void a(f f1)
    {
        b = f1;
    }

    public final void a(FileDescriptor filedescriptor)
    {
        if (f != com.instagram.android.l.a.g.a)
        {
            a.reset();
        }
        a.setDataSource(filedescriptor);
        a.prepareAsync();
        f = g.c;
    }

    protected abstract void b();

    protected abstract void c();

    public void d()
    {
        g g1;
        if (f != g.d && f != g.e && f != g.f && f != g.h)
        {
            break MISSING_BLOCK_LABEL_98;
        }
        g1 = f;
        a.start();
        f = g.e;
        if (g1 != g.d && g1 != g.h) goto _L2; else goto _L1
_L1:
        e = 0;
_L4:
        return;
_L2:
        if (g1 != g.f) goto _L4; else goto _L3
_L3:
        e = a.getCurrentPosition();
        return;
        throw new IllegalStateException((new StringBuilder("VideoPlayer cannot play in state ")).append(f).toString());
    }

    public final void e()
    {
        if (f != com.instagram.android.l.a.g.a)
        {
            a.reset();
            b();
            f = com.instagram.android.l.a.g.a;
        }
    }

    public final void f()
    {
        a.release();
        c();
        a = null;
        f = g.j;
    }

    public final void g()
    {
        if (f == g.e || f == g.f)
        {
            f = g.f;
            a.pause();
        }
    }

    public final boolean h()
    {
        return a.isPlaying();
    }

    public final boolean i()
    {
        return f == g.f;
    }

    public final boolean j()
    {
        return f == g.h;
    }

    public final boolean k()
    {
        return EnumSet.of(g.d, g.e, g.f, g.h).contains(f);
    }

    public final int l()
    {
        return a.getCurrentPosition();
    }

    public final int m()
    {
        return a.getDuration();
    }

    public final int n()
    {
        return e;
    }

    public void onCompletion(MediaPlayer mediaplayer)
    {
        f = g.h;
        if (d != null)
        {
            d.a();
        }
        e = 0;
    }

    public boolean onError(MediaPlayer mediaplayer, int i1, int j1)
    {
        com.facebook.e.a.a.a("VideoPlayer", (new StringBuilder("MediaPlayer Error: ")).append(i1).append(" ").append(j1).toString());
        if (c != null)
        {
            return c.a(i1, j1);
        } else
        {
            return true;
        }
    }

    public boolean onInfo(MediaPlayer mediaplayer, int i1, int j1)
    {
        if (i1 != 700)
        {
            (new StringBuilder("MediaPlayer Info: ")).append(i1).append(" ").append(j1);
        }
        return false;
    }

    public void onPrepared(MediaPlayer mediaplayer)
    {
        f = g.d;
        if (b != null)
        {
            b.a(this);
        }
    }
}
