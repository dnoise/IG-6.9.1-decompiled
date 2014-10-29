// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.b;

import android.graphics.PointF;
import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;
import com.instagram.creation.b.a.i;

public final class q extends StdSerializer
{

    public q()
    {
        super(com/instagram/creation/b/a/i);
    }

    private static void a(h h1, String s, PointF pointf)
    {
        if (pointf != null)
        {
            h1.writeFieldName(s);
            h1.writeStartArray();
            h1.writeNumber(pointf.x);
            h1.writeNumber(pointf.y);
            h1.writeEndArray();
        }
    }

    private static void a(h h1, String s, Float float1)
    {
        if (float1 != null)
        {
            h1.writeNumberField(s, float1.floatValue());
        }
    }

    private static void a(h h1, String s, Integer integer)
    {
        if (integer != null)
        {
            h1.writeNumberField(s, integer.intValue());
        }
    }

    public static void a(i j, h h1)
    {
        a(h1, "filter_type", j.a);
        a(h1, "filter_strength", j.b);
        a(h1, "border_enabled", j.c);
        a(h1, "lux", j.d);
        a(h1, "brightness", j.e);
        a(h1, "contrast", j.f);
        a(h1, "temperature", j.g);
        a(h1, "saturation", j.h);
        a(h1, "highlights", j.i);
        a(h1, "shadows", j.j);
        a(h1, "vignette", j.k);
        a(h1, "sharpen", j.l);
        a(h1, "tiltshift_type", j.m);
        a(h1, "tiltshift_center", j.n);
        a(h1, "tiltshift_radius", j.o);
        a(h1, "tiltshift_angle", j.p);
        a(h1, "crop_original_size", j.q);
        a(h1, "crop_center", j.r);
        a(h1, "crop_zoom", j.s);
        a(h1, "crop_angle", j.t);
    }

    private static void b(i j, h h1)
    {
        h1.writeStartObject();
        a(j, h1);
        h1.writeEndObject();
    }

    public final void serialize(Object obj, h h1, SerializerProvider serializerprovider)
    {
        b((i)obj, h1);
    }
}
