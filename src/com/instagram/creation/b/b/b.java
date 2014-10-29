// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.b;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;
import com.instagram.creation.b.a.a;

public final class b extends StdSerializer
{

    public b()
    {
        super(com/instagram/creation/b/a/a);
    }

    private static void a(a a1, h h1)
    {
        h1.writeStartObject();
        h1.writeStringField("clipFilePath", a1.b());
        h1.writeNumberField("rotation", a1.d());
        h1.writeNumberField("camera_id", a1.c());
        h1.writeNumberField("pan", a1.e());
        h1.writeNumberField("startMS", a1.f());
        h1.writeNumberField("endMS", a1.g());
        h1.writeNumberField("videoWidth", a1.k());
        h1.writeNumberField("videoHeight", a1.l());
        h1.writeEndObject();
    }

    public final void serialize(Object obj, h h1, SerializerProvider serializerprovider)
    {
        a((a)obj, h1);
    }
}
