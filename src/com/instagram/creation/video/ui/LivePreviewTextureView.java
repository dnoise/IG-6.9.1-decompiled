// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.ui;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import com.instagram.creation.video.widget.d;

// Referenced classes of package com.instagram.creation.video.ui:
//            d

public class LivePreviewTextureView extends d
{

    private com.instagram.creation.video.ui.d a;

    public LivePreviewTextureView(Context context)
    {
        super(context);
    }

    public LivePreviewTextureView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public LivePreviewTextureView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    protected final void a()
    {
        setClickable(true);
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfacetexture, int i, int j)
    {
        a.a(surfacetexture, i);
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfacetexture)
    {
        a.a();
        return true;
    }

    public boolean performClick()
    {
        a.b();
        return super.performClick();
    }

    public void setDelegate(com.instagram.creation.video.ui.d d1)
    {
        a = d1;
    }
}
