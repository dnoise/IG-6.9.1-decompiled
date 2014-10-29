// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.l.a;

import android.media.MediaPlayer;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.instagram.creation.video.ui.o;

// Referenced classes of package com.instagram.android.l.a:
//            c

public final class a extends c
    implements android.media.MediaPlayer.OnCompletionListener, android.media.MediaPlayer.OnErrorListener, android.media.MediaPlayer.OnInfoListener, android.media.MediaPlayer.OnPreparedListener, android.view.SurfaceHolder.Callback
{

    private ViewGroup g;
    private SurfaceView h;

    public a()
    {
    }

    public final void a()
    {
        a.setDisplay(null);
        g.removeView(h);
        g = null;
        h = null;
    }

    public final void a(FrameLayout framelayout)
    {
        g = framelayout;
        h = new o(g.getContext());
        h.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
        h.getHolder().addCallback(this);
        h.getHolder().setType(3);
        g.addView(h, 0);
    }

    protected final void b()
    {
    }

    protected final void c()
    {
    }

    public final void surfaceChanged(SurfaceHolder surfaceholder, int i, int j, int k)
    {
        a.setDisplay(surfaceholder);
    }

    public final void surfaceCreated(SurfaceHolder surfaceholder)
    {
    }

    public final void surfaceDestroyed(SurfaceHolder surfaceholder)
    {
    }
}
