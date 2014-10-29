// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.b;

import android.graphics.PointF;
import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;
import com.instagram.model.people.PeopleTag;

public final class o extends StdSerializer
{

    public o()
    {
        super(com/instagram/model/people/PeopleTag);
    }

    private static void a(PeopleTag peopletag, h h1)
    {
        h1.writeStartObject();
        h1.writeNumberField("user_id", Long.parseLong(peopletag.d()));
        h1.writeStringField("username", peopletag.c());
        PointF pointf = peopletag.b();
        if (pointf != null)
        {
            h1.writeFieldName("position");
            h1.writeStartArray();
            h1.writeNumber(pointf.x);
            h1.writeNumber(pointf.y);
            h1.writeEndArray();
        }
        h1.writeEndObject();
    }

    public final void serialize(Object obj, h h1, SerializerProvider serializerprovider)
    {
        a((PeopleTag)obj, h1);
    }
}
