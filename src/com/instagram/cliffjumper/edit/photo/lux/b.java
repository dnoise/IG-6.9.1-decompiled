// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.lux;

import com.instagram.cliffjumper.edit.photo.jpeg.JpegBridge;
import com.instagram.cliffjumper.edit.photo.jpeg.NativeImage;
import com.instagram.cliffjumper.util.a.c;
import com.instagram.cliffjumper.util.a.d;
import java.util.concurrent.CountDownLatch;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.lux:
//            a

final class b
    implements Runnable
{

    final NativeImage a;
    final a b;

    b(a a1, NativeImage nativeimage)
    {
        b = a1;
        a = nativeimage;
        super();
    }

    public final void run()
    {
        if (c.a().d)
        {
            com.instagram.cliffjumper.edit.photo.lux.a.a(b, JpegBridge.calcCDF(a.getBufferId()));
        } else
        {
            float af[] = JpegBridge.calcBWpoint(a.getBufferId());
            com.instagram.cliffjumper.edit.photo.lux.a.a(b, af[0]);
            com.instagram.cliffjumper.edit.photo.lux.a.b(b, af[1]);
        }
        JpegBridge.releaseNativeBuffer(a.getBufferId());
        com.instagram.cliffjumper.edit.photo.lux.a.a(b).countDown();
        synchronized (b)
        {
            if (com.instagram.cliffjumper.edit.photo.lux.a.b(b))
            {
                if (com.instagram.cliffjumper.edit.photo.lux.a.c(b) != -1)
                {
                    JpegBridge.releaseNativeBuffer(com.instagram.cliffjumper.edit.photo.lux.a.c(b));
                    com.instagram.cliffjumper.edit.photo.lux.a.a(b, -1);
                }
                com.instagram.cliffjumper.edit.photo.lux.a.a(b, new CountDownLatch(1));
                com.instagram.cliffjumper.edit.photo.lux.a.d(b);
            }
        }
    }
}
