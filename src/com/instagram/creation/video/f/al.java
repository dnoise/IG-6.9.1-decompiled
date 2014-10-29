// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.graphics.Bitmap;
import com.instagram.creation.video.c.b;
import com.instagram.creation.video.widget.PreviewTextureView;
import java.io.File;
import java.io.FileOutputStream;

// Referenced classes of package com.instagram.creation.video.f:
//            ah, ad

final class al
    implements Runnable
{

    final ah a;

    al(ah ah1)
    {
        a = ah1;
        super();
    }

    public final void run()
    {
        Bitmap bitmap = ad.h(a.a).getBitmap();
        Integer.valueOf(bitmap.getWidth());
        Integer.valueOf(bitmap.getHeight());
        Bitmap bitmap1 = Bitmap.createScaledBitmap(bitmap, 640, 640, true);
        bitmap.recycle();
        try
        {
            b.e(a.a.n());
            File file = b.a(a.a.n(), a.a.a);
            FileOutputStream fileoutputstream = new FileOutputStream(file);
            bitmap1.compress(android.graphics.Bitmap.CompressFormat.JPEG, 95, fileoutputstream);
            fileoutputstream.close();
            a.a.Y().e(file.getCanonicalPath());
            file.getCanonicalPath();
            return;
        }
        catch (Exception exception)
        {
            throw new RuntimeException(exception);
        }
    }
}
