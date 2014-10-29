// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a;

import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;
import com.instagram.venue.model.Venue;

// Referenced classes of package com.instagram.android.a:
//            d

public final class h extends StdSerializer
{

    final d a;

    public h(d d)
    {
        a = d;
        super(com/instagram/venue/model/Venue);
    }

    private static void a(Venue venue, com.fasterxml.jackson.a.h h1)
    {
        h1.writeStartObject();
        h1.writeStringField("name", venue.c());
        if (venue.g() != null && venue.h() != null)
        {
            h1.writeNumberField("lat", venue.g().doubleValue());
            h1.writeNumberField("lng", venue.h().doubleValue());
        }
        h1.writeEndObject();
    }

    public final void serialize(Object obj, com.fasterxml.jackson.a.h h1, SerializerProvider serializerprovider)
    {
        a((Venue)obj, h1);
    }
}
