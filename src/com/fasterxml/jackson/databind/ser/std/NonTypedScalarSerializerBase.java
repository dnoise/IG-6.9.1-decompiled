// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;

// Referenced classes of package com.fasterxml.jackson.databind.ser.std:
//            StdScalarSerializer

public abstract class NonTypedScalarSerializerBase extends StdScalarSerializer
{

    protected NonTypedScalarSerializerBase(Class class1)
    {
        super(class1);
    }

    public final void serializeWithType(Object obj, h h, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        serialize(obj, h, serializerprovider);
    }
}
