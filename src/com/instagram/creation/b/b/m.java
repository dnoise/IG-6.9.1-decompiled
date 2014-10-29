// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.b;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;
import com.instagram.creation.b.a.f;

public final class m extends StdSerializer
{

    public m()
    {
        super(com/instagram/creation/b/a/f);
    }

    private static void a(f f1, h h1)
    {
        h1.writeStartObject();
        h1.writeStringField("user_id", f1.b());
        h1.writeStringField("username", f1.a());
        h1.writeStringField("profilepic_url", f1.c());
        h1.writeEndObject();
    }

    public final void serialize(Object obj, h h1, SerializerProvider serializerprovider)
    {
        a((f)obj, h1);
    }
}
