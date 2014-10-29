// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.crop;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import com.instagram.creation.photo.c.b;
import com.instagram.creation.photo.gallery.c;
import java.util.ArrayList;

// Referenced classes of package com.instagram.creation.photo.crop:
//            q, b, CropImageView

final class l
    implements Runnable
{

    float a;
    Matrix b;
    final com.instagram.creation.photo.crop.b c;

    l(com.instagram.creation.photo.crop.b b1)
    {
        c = b1;
        super();
        a = 1.0F;
    }

    private void a()
    {
        q q1 = new q(com.instagram.creation.photo.crop.b.g(c));
        if (c.j().getBoolean("CropFragment.isAvatar"))
        {
            q1.b();
        }
        int i = com.instagram.creation.photo.crop.b.h(c).getWidth();
        int j = com.instagram.creation.photo.crop.b.h(c).getHeight();
        int k = com.instagram.creation.photo.crop.b.e(c).e();
        int i1 = com.instagram.creation.photo.crop.b.e(c).f();
        int j1 = (int)(0.37D * (double)(int)(Runtime.getRuntime().maxMemory() / 4L));
        com.instagram.creation.photo.crop.b.b();
        for (; k * i1 > j1; i1 /= 2)
        {
            k /= 2;
        }

        float f;
        int k1;
        float f1;
        Rect rect;
        RectF rectf;
        if (com.instagram.creation.photo.crop.b.i(c) > 0)
        {
            f = (float)(i * com.instagram.creation.photo.crop.b.i(c)) / (float)k / (float)i;
        } else
        {
            f = 0.0F;
        }
        k1 = f != 1.0F;
        f1 = 0.0F;
        if (k1 <= 0)
        {
            f1 = f;
        }
        rect = new Rect(0, 0, i, j);
        if (com.instagram.creation.photo.crop.b.j(c) == null)
        {
            int l1 = Math.max((int)(f1 * (float)i), Math.min(i, j));
            if (c.j().getBoolean("CropFragment.isAvatar"))
            {
                l1 = (l1 * 7) / 8;
            }
            int i2 = (i - l1) / 2;
            int j2 = (j - l1) / 2;
            rectf = new RectF(i2, j2, i2 + l1, l1 + j2);
        } else
        {
            rectf = com.instagram.creation.photo.crop.b.j(c).e;
        }
        q1.a(b, rect, rectf, f1, com.instagram.creation.photo.crop.b.k(c).a());
        com.instagram.creation.photo.crop.b.g(c).a(q1);
    }

    public final void run()
    {
        b = com.instagram.creation.photo.crop.b.g(c).getImageMatrix();
        a = 1.0F / a;
        a();
        com.instagram.creation.photo.crop.b.g(c).invalidate();
        if (com.instagram.creation.photo.crop.b.g(c).a.size() == 1)
        {
            com.instagram.creation.photo.crop.b.a(c, (q)com.instagram.creation.photo.crop.b.g(c).a.get(0));
            com.instagram.creation.photo.crop.b.j(c).a();
        }
    }
}
