// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import java.util.TimeZone;

// Referenced classes of package com.fasterxml.jackson.databind.ser.std:
//            StdScalarSerializer

public class TimeZoneSerializer extends StdScalarSerializer
{

    public static final TimeZoneSerializer instance = new TimeZoneSerializer();

    public TimeZoneSerializer()
    {
        super(java/util/TimeZone);
    }

    public volatile void serialize(Object obj, h h1, SerializerProvider serializerprovider)
    {
        serialize((TimeZone)obj, h1, serializerprovider);
    }

    public void serialize(TimeZone timezone, h h1, SerializerProvider serializerprovider)
    {
        h1.writeString(timezone.getID());
    }

    public volatile void serializeWithType(Object obj, h h1, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        serializeWithType((TimeZone)obj, h1, serializerprovider, typeserializer);
    }

    public void serializeWithType(TimeZone timezone, h h1, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        typeserializer.writeTypePrefixForScalar(timezone, h1, java/util/TimeZone);
        serialize(timezone, h1, serializerprovider);
        typeserializer.writeTypeSuffixForScalar(timezone, h1);
    }

}
