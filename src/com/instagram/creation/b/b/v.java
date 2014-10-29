// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.b;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;
import com.instagram.creation.b.a.j;
import java.util.Date;

public final class v extends StdSerializer
{

    public v()
    {
        super(com/instagram/creation/b/a/j);
    }

    private static void a(j j1, h h1)
    {
        h1.writeStartObject();
        h1.writeStringField("url", j1.c());
        h1.writeStringField("job", j1.b());
        h1.writeNumberField("expires", j1.a().getTime());
        h1.writeEndObject();
    }

    public final void serialize(Object obj, h h1, SerializerProvider serializerprovider)
    {
        a((j)obj, h1);
    }
}
