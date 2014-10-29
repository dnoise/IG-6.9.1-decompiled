// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import java.net.InetAddress;

// Referenced classes of package com.fasterxml.jackson.databind.ser.std:
//            StdScalarSerializer

public class InetAddressSerializer extends StdScalarSerializer
{

    public static final InetAddressSerializer instance = new InetAddressSerializer();

    public InetAddressSerializer()
    {
        super(java/net/InetAddress);
    }

    public volatile void serialize(Object obj, h h1, SerializerProvider serializerprovider)
    {
        serialize((InetAddress)obj, h1, serializerprovider);
    }

    public void serialize(InetAddress inetaddress, h h1, SerializerProvider serializerprovider)
    {
        String s = inetaddress.toString().trim();
        int i = s.indexOf('/');
        if (i >= 0)
        {
            if (i == 0)
            {
                s = s.substring(1);
            } else
            {
                s = s.substring(0, i);
            }
        }
        h1.writeString(s);
    }

    public volatile void serializeWithType(Object obj, h h1, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        serializeWithType((InetAddress)obj, h1, serializerprovider, typeserializer);
    }

    public void serializeWithType(InetAddress inetaddress, h h1, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        typeserializer.writeTypePrefixForScalar(inetaddress, h1, java/net/InetAddress);
        serialize(inetaddress, h1, serializerprovider);
        typeserializer.writeTypeSuffixForScalar(inetaddress, h1);
    }

}
