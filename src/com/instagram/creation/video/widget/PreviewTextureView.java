// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.widget;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import com.instagram.creation.video.gl.j;
import com.instagram.creation.video.gl.y;

// Referenced classes of package com.instagram.creation.video.widget:
//            d

public class PreviewTextureView extends d
{

    private j a;
    private y b;

    public PreviewTextureView(Context context)
    {
        super(context);
    }

    public PreviewTextureView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public PreviewTextureView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    public final void b()
    {
        if (a != null)
        {
            a.a();
        }
    }

    public final void c()
    {
        if (a != null)
        {
            a.b();
        }
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfacetexture, int i, int k)
    {
        a = new j(surfacetexture, i);
        b.a(a);
        (new Thread(a)).start();
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfacetexture)
    {
        y y1 = b;
        j _tmp = a;
        y1.X();
        b = null;
        a.e();
        a = null;
        return true;
    }

    public void setDependent(y y1)
    {
        b = y1;
    }
}
