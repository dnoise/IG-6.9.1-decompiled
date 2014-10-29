// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.c;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;

// Referenced classes of package com.instagram.creation.photo.c:
//            d

public abstract class c
{

    private static float a = 57.29578F;
    private float b;
    private SensorManager c;
    private boolean d;
    private int e;
    private Sensor f;
    private SensorEventListener g;

    public c(Context context)
    {
        this(context, (byte)0);
    }

    private c(Context context, byte byte0)
    {
        b = -1F;
        d = false;
        c = (SensorManager)context.getSystemService("sensor");
        e = 3;
        f = c.getDefaultSensor(1);
        if (f != null)
        {
            g = new d(this);
        }
    }

    static float a(c c1)
    {
        return c1.b;
    }

    static float a(c c1, float f1)
    {
        c1.b = f1;
        return f1;
    }

    static float c()
    {
        return a;
    }

    public final void a()
    {
        while (f == null || d) 
        {
            return;
        }
        c.registerListener(g, f, e);
        d = true;
    }

    public abstract void a(float f1);

    public final void b()
    {
        while (f == null || !d) 
        {
            return;
        }
        c.unregisterListener(g);
        d = false;
    }

}
