// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.widget;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import com.instagram.creation.video.ui.p;

public abstract class d extends p
    implements android.view.TextureView.SurfaceTextureListener
{

    public d(Context context)
    {
        super(context);
        b();
    }

    public d(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b();
    }

    public d(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        b();
    }

    private void b()
    {
        setSurfaceTextureListener(this);
        a();
    }

    protected void a()
    {
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfacetexture, int i, int j)
    {
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfacetexture)
    {
    }
}
