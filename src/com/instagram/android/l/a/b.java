// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.l.a;

import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.view.Surface;
import android.view.TextureView;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.instagram.creation.video.ui.p;

// Referenced classes of package com.instagram.android.l.a:
//            c

public final class b extends c
    implements android.view.TextureView.SurfaceTextureListener
{

    private ViewGroup g;
    private TextureView h;
    private SurfaceTexture i;

    public b()
    {
    }

    private void o()
    {
        if (i != null)
        {
            i.release();
            i = null;
        }
    }

    public final void a()
    {
        g.removeView(h);
        g = null;
        h = null;
    }

    public final void a(FrameLayout framelayout)
    {
        g = framelayout;
        h = new p(g.getContext());
        h.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
        h.setSurfaceTextureListener(this);
        g.addView(h, 0);
    }

    protected final void b()
    {
        a.setSurface(null);
        o();
    }

    protected final void c()
    {
        o();
    }

    public final void d()
    {
        if (h.getWidth() == 0 && h.getParent() != null)
        {
            ViewParent viewparent = h.getParent();
            if (viewparent.getParent() != null)
            {
                viewparent = viewparent.getParent();
            }
            viewparent.requestLayout();
        }
        super.d();
    }

    public final void onSurfaceTextureAvailable(SurfaceTexture surfacetexture, int j, int k)
    {
        Surface surface = new Surface(surfacetexture);
        a.setSurface(surface);
    }

    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfacetexture)
    {
        i = surfacetexture;
        return false;
    }

    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfacetexture, int j, int k)
    {
    }

    public final void onSurfaceTextureUpdated(SurfaceTexture surfacetexture)
    {
    }
}
