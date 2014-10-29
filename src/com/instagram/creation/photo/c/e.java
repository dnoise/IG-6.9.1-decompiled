// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.c;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;

public final class e
{

    public static Rect a(Rect rect)
    {
        int i = 0;
        rect.toShortString();
        Rect rect1 = new Rect(rect);
        if (rect.width() == rect.height())
        {
            return rect1;
        }
        int k;
        int l;
        int i1;
        if (rect1.width() > rect1.height())
        {
            int j1 = rect1.width() - rect1.height();
            int k1 = (int)Math.floor((float)j1 / 2.0F);
            l = j1 % 2;
            i1 = k1;
            k = 0;
        } else
        {
            int j = rect1.height() - rect1.width();
            k = (int)Math.floor((float)j / 2.0F);
            i = j % 2;
            l = 0;
            i1 = 0;
        }
        (new StringBuilder("Crop insets x: ")).append(i1).append(", y:").append(k);
        rect1.inset(i1, k);
        (new StringBuilder("Crop nudges x: ")).append(l).append(" y: ").append(i);
        rect1.right = rect1.right - l;
        rect1.bottom = rect1.bottom - i;
        rect1.toShortString();
        return rect1;
    }

    public static Rect a(Rect rect, float f)
    {
        Matrix matrix = new Matrix();
        matrix.postScale(f, f);
        RectF rectf = new RectF(rect);
        matrix.mapRect(rectf);
        Float.valueOf(rectf.width());
        Float.valueOf(rectf.height());
        return a(new Rect((int)rectf.left, (int)rectf.top, (int)rectf.right, (int)rectf.bottom));
    }
}
