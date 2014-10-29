// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.c;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;

// Referenced classes of package com.instagram.creation.photo.c:
//            c

final class d
    implements SensorEventListener
{

    final c a;

    d(c c1)
    {
        a = c1;
        super();
    }

    public final void onAccuracyChanged(Sensor sensor, int i)
    {
    }

    public final void onSensorChanged(SensorEvent sensorevent)
    {
        float af[] = sensorevent.values;
        float f = -1F;
        float f1 = -af[0];
        float f2 = -af[1];
        float f3 = -af[2];
        if (4F * (f1 * f1 + f2 * f2) >= f3 * f3)
        {
            for (f = 90F - (float)Math.atan2(-f2, f1) * c.c(); f >= 360F; f -= 360F) { }
            for (; f < 0.0F; f += 360F) { }
        }
        if (Math.abs(f - c.a(a)) > 0.01F)
        {
            a.a(f);
            c.a(a, f);
        }
    }
}
