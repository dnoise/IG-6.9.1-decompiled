// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.a;

import android.view.SurfaceHolder;
import android.view.View;
import com.instagram.filterkit.c.c;
import com.instagram.filterkit.c.e;
import com.instagram.filterkit.e.d;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.a:
//            a

final class ad
    implements android.view.SurfaceHolder.Callback
{

    final a a;

    private ad(a a1)
    {
        a = a1;
        super();
    }

    ad(a a1, byte byte0)
    {
        this(a1);
    }

    public final void surfaceChanged(SurfaceHolder surfaceholder, int i, int j, int k)
    {
        com.instagram.cliffjumper.edit.photo.a.a.o(a).a(d.a(j));
        com.instagram.cliffjumper.edit.photo.a.a.a(a);
    }

    public final void surfaceCreated(SurfaceHolder surfaceholder)
    {
        com.instagram.cliffjumper.edit.photo.a.a.a(a, new e(a.n(), new com.instagram.filterkit.a.c(surfaceholder), com.instagram.cliffjumper.edit.photo.a.a.p(a)));
        com.instagram.cliffjumper.edit.photo.a.a.o(a).a(com.instagram.cliffjumper.edit.photo.a.a.f(a));
    }

    public final void surfaceDestroyed(SurfaceHolder surfaceholder)
    {
        if (com.instagram.cliffjumper.edit.photo.a.a.v(a) != null)
        {
            com.instagram.cliffjumper.edit.photo.a.a.v(a).setVisibility(0);
        }
        com.instagram.cliffjumper.edit.photo.a.a.o(a).b();
        com.instagram.cliffjumper.edit.photo.a.a.a(a, null);
    }
}
