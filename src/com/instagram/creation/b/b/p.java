// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.b;

import android.graphics.PointF;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.deser.std.StdDeserializer;
import com.instagram.creation.b.a.i;

public final class p extends StdDeserializer
{

    public p()
    {
        super(com/instagram/creation/b/a/i);
    }

    private static i a(l l1)
    {
        return a((JsonNode)l1.readValueAs(com/fasterxml/jackson/databind/JsonNode));
    }

    private static i a(JsonNode jsonnode)
    {
        i j = new i();
        j.a = b(jsonnode, "filter_type");
        j.b = a(jsonnode, "filter_strength");
        j.c = b(jsonnode, "border_enabled");
        j.d = a(jsonnode, "lux");
        j.e = a(jsonnode, "brightness");
        j.f = a(jsonnode, "contrast");
        j.g = a(jsonnode, "temperature");
        j.h = a(jsonnode, "saturation");
        j.i = a(jsonnode, "highlights");
        j.j = a(jsonnode, "shadows");
        j.k = a(jsonnode, "vignette");
        j.l = a(jsonnode, "sharpen");
        j.m = b(jsonnode, "tiltshift_type");
        j.n = c(jsonnode, "tiltshift_center");
        j.o = a(jsonnode, "tiltshift_radius");
        j.p = a(jsonnode, "tiltshift_angle");
        j.q = c(jsonnode, "crop_original_size");
        j.r = c(jsonnode, "crop_center");
        j.s = a(jsonnode, "crop_zoom");
        j.t = b(jsonnode, "crop_angle");
        return j;
    }

    private static Float a(JsonNode jsonnode, String s)
    {
        JsonNode jsonnode1 = jsonnode.get(s);
        Float float1 = null;
        if (jsonnode1 != null)
        {
            float1 = Float.valueOf(jsonnode1.floatValue());
        }
        return float1;
    }

    private static Integer b(JsonNode jsonnode, String s)
    {
        JsonNode jsonnode1 = jsonnode.get(s);
        Integer integer = null;
        if (jsonnode1 != null)
        {
            integer = Integer.valueOf(jsonnode1.intValue());
        }
        return integer;
    }

    private static PointF c(JsonNode jsonnode, String s)
    {
        JsonNode jsonnode1 = jsonnode.get(s);
        PointF pointf = null;
        if (jsonnode1 != null)
        {
            Double double1 = Double.valueOf(jsonnode1.get(0).asDouble());
            Double double2 = Double.valueOf(jsonnode1.get(1).asDouble());
            pointf = null;
            if (double1 != null)
            {
                pointf = null;
                if (double2 != null)
                {
                    pointf = new PointF(double1.floatValue(), double2.floatValue());
                }
            }
        }
        return pointf;
    }

    public final Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        return a(l1);
    }
}
