// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.ui;

import android.graphics.Canvas;
import com.google.android.maps.MapView;
import com.google.android.maps.Overlay;

public final class ag extends Overlay
{

    public ag()
    {
    }

    public final void draw(Canvas canvas, MapView mapview, boolean flag)
    {
        if (flag)
        {
            canvas.drawColor(0x77000000);
        }
        super.draw(canvas, mapview, flag);
    }
}
