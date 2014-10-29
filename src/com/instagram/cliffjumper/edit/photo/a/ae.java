// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.a;

import android.graphics.SurfaceTexture;
import android.view.View;
import com.instagram.filterkit.a.c;
import com.instagram.filterkit.c.e;
import com.instagram.filterkit.e.d;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.a:
//            a

final class ae
    implements android.view.TextureView.SurfaceTextureListener
{

    final a a;

    private ae(a a1)
    {
        a = a1;
        super();
    }

    ae(a a1, byte byte0)
    {
        this(a1);
    }

    public final void onSurfaceTextureAvailable(SurfaceTexture surfacetexture, int i, int j)
    {
        com.instagram.cliffjumper.edit.photo.a.a.a(a, new e(a.n(), new c(surfacetexture), com.instagram.cliffjumper.edit.photo.a.a.p(a)));
        com.instagram.cliffjumper.edit.photo.a.a.o(a).a(d.a(i));
        com.instagram.cliffjumper.edit.photo.a.a.o(a).a(com.instagram.cliffjumper.edit.photo.a.a.f(a));
        com.instagram.cliffjumper.edit.photo.a.a.a(a);
    }

    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfacetexture)
    {
        if (com.instagram.cliffjumper.edit.photo.a.a.v(a) != null)
        {
            com.instagram.cliffjumper.edit.photo.a.a.v(a).setVisibility(0);
        }
        com.instagram.cliffjumper.edit.photo.a.a.o(a).b();
        com.instagram.cliffjumper.edit.photo.a.a.a(a, null);
        return true;
    }

    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfacetexture, int i, int j)
    {
        com.instagram.cliffjumper.edit.photo.a.a.o(a).a(d.a(i));
    }

    public final void onSurfaceTextureUpdated(SurfaceTexture surfacetexture)
    {
    }
}
