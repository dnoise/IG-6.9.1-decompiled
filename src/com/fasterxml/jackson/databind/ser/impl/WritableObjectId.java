// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;

// Referenced classes of package com.fasterxml.jackson.databind.ser.impl:
//            ObjectIdWriter

public final class WritableObjectId
{

    public final ObjectIdGenerator generator;
    public Object id;
    protected boolean idWritten;

    public WritableObjectId(ObjectIdGenerator objectidgenerator)
    {
        idWritten = false;
        generator = objectidgenerator;
    }

    public final Object generateId(Object obj)
    {
        Object obj1 = generator.generateId(obj);
        id = obj1;
        return obj1;
    }

    public final void writeAsField(h h1, SerializerProvider serializerprovider, ObjectIdWriter objectidwriter)
    {
        com.fasterxml.jackson.a.c.l l = objectidwriter.propertyName;
        idWritten = true;
        if (l != null)
        {
            h1.writeFieldName(l);
            objectidwriter.serializer.serialize(id, h1, serializerprovider);
        }
    }

    public final boolean writeAsId(h h1, SerializerProvider serializerprovider, ObjectIdWriter objectidwriter)
    {
        if (id != null && (idWritten || objectidwriter.alwaysAsId))
        {
            objectidwriter.serializer.serialize(id, h1, serializerprovider);
            return true;
        } else
        {
            return false;
        }
    }
}
