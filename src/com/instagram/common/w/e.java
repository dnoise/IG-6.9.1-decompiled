// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.w;

import android.hardware.SensorEvent;

final class e
{

    float a;
    long b;

    e(SensorEvent sensorevent)
    {
        a(sensorevent);
    }

    final void a(SensorEvent sensorevent)
    {
        a = sensorevent.values[0];
        b = sensorevent.timestamp;
    }
}
