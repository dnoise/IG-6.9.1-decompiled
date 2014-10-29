// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.a;

import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.instagram.cliffjumper.edit.photo.jpeg.JpegBridge;
import com.instagram.cliffjumper.edit.photo.jpeg.NativeImage;
import com.instagram.cliffjumper.util.d;
import com.instagram.creation.photo.gallery.c;
import com.instagram.filterkit.c.a;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.a:
//            a

final class z extends a
{

    final com.instagram.cliffjumper.edit.photo.a.a a;
    private com.instagram.filterkit.e.a b;
    private boolean c;
    private boolean d;

    private z(com.instagram.cliffjumper.edit.photo.a.a a1)
    {
        a = a1;
        super();
        b = null;
    }

    z(com.instagram.cliffjumper.edit.photo.a.a a1, byte byte0)
    {
        this(a1);
    }

    private static Rect a(int i, int j, int k, int l, boolean flag)
    {
        int i1 = Math.min(i, j);
        int j1 = i - i1;
        int k1 = j - i1;
        if (l == 0 && k != 0)
        {
            return com.instagram.cliffjumper.util.d.b(i, j, k, flag, i1, j1, k1);
        } else
        {
            return com.instagram.cliffjumper.util.d.a(i, j, l, flag, i1, j1, k1);
        }
    }

    private Rect d()
    {
        if (a.j().containsKey("cropRect"))
        {
            return (Rect)a.j().getParcelable("cropRect");
        }
        if (a.j().containsKey("cameraRotation"))
        {
            return a(com.instagram.cliffjumper.edit.photo.a.a.r(a).e(), com.instagram.cliffjumper.edit.photo.a.a.r(a).f(), a.j().getInt("cameraRotation"), com.instagram.cliffjumper.edit.photo.a.a.u(a), a.j().getBoolean("mirrorMedia"));
        } else
        {
            int i = Math.min(com.instagram.cliffjumper.edit.photo.a.a.r(a).e(), com.instagram.cliffjumper.edit.photo.a.a.r(a).f());
            return new Rect(0, 0, i, i);
        }
    }

    public final com.instagram.filterkit.e.a a()
    {
        String s = com.instagram.cliffjumper.edit.photo.a.a.r(a).a();
        if (b == null)
        {
            NativeImage nativeimage = com.instagram.cliffjumper.edit.photo.jpeg.a.a(s, d());
            b = new com.instagram.filterkit.d.d(JpegBridge.uploadTexture(nativeimage), nativeimage.getWidth(), nativeimage.getHeight());
            com.instagram.cliffjumper.edit.photo.a.a.s(a).a(com.instagram.common.y.c.a.a(), nativeimage);
        }
        return b;
    }

    public final void a(Exception exception)
    {
        if (!d)
        {
            d = true;
            Message message = com.instagram.cliffjumper.edit.photo.a.a.t(a).obtainMessage(5);
            message.obj = exception;
            com.instagram.cliffjumper.edit.photo.a.a.t(a).sendMessage(message);
        }
    }

    public final void b()
    {
        if (!c)
        {
            c = true;
            com.instagram.cliffjumper.edit.photo.a.a.t(a).sendEmptyMessage(4);
        }
    }

    public final void c()
    {
        b.e();
        b = null;
        c = false;
    }
}
