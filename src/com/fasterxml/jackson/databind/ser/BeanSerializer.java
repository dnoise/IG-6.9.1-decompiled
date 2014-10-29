// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.impl.BeanAsArraySerializer;
import com.fasterxml.jackson.databind.ser.impl.ObjectIdWriter;
import com.fasterxml.jackson.databind.ser.impl.UnwrappingBeanSerializer;
import com.fasterxml.jackson.databind.ser.std.BeanSerializerBase;
import com.fasterxml.jackson.databind.util.NameTransformer;

// Referenced classes of package com.fasterxml.jackson.databind.ser:
//            BeanSerializerBuilder, BeanPropertyWriter

public class BeanSerializer extends BeanSerializerBase
{

    public BeanSerializer(JavaType javatype, BeanSerializerBuilder beanserializerbuilder, BeanPropertyWriter abeanpropertywriter[], BeanPropertyWriter abeanpropertywriter1[])
    {
        super(javatype, beanserializerbuilder, abeanpropertywriter, abeanpropertywriter1);
    }

    protected BeanSerializer(BeanSerializerBase beanserializerbase)
    {
        super(beanserializerbase);
    }

    protected BeanSerializer(BeanSerializerBase beanserializerbase, ObjectIdWriter objectidwriter)
    {
        super(beanserializerbase, objectidwriter);
    }

    protected BeanSerializer(BeanSerializerBase beanserializerbase, String as[])
    {
        super(beanserializerbase, as);
    }

    public static BeanSerializer createDummy(JavaType javatype)
    {
        return new BeanSerializer(javatype, null, NO_PROPS, null);
    }

    protected BeanSerializerBase asArraySerializer()
    {
        if (_objectIdWriter == null && _anyGetterWriter == null && _propertyFilterId == null)
        {
            this = new BeanAsArraySerializer(this);
        }
        return this;
    }

    public final void serialize(Object obj, h h1, SerializerProvider serializerprovider)
    {
        if (_objectIdWriter != null)
        {
            _serializeWithObjectId(obj, h1, serializerprovider, true);
            return;
        }
        h1.writeStartObject();
        if (_propertyFilterId != null)
        {
            serializeFieldsFiltered(obj, h1, serializerprovider);
        } else
        {
            serializeFields(obj, h1, serializerprovider);
        }
        h1.writeEndObject();
    }

    public String toString()
    {
        return (new StringBuilder("BeanSerializer for ")).append(handledType().getName()).toString();
    }

    public JsonSerializer unwrappingSerializer(NameTransformer nametransformer)
    {
        return new UnwrappingBeanSerializer(this, nametransformer);
    }

    protected BeanSerializer withIgnorals(String as[])
    {
        return new BeanSerializer(this, as);
    }

    protected volatile BeanSerializerBase withIgnorals(String as[])
    {
        return withIgnorals(as);
    }

    public BeanSerializer withObjectIdWriter(ObjectIdWriter objectidwriter)
    {
        return new BeanSerializer(this, objectidwriter);
    }

    public volatile BeanSerializerBase withObjectIdWriter(ObjectIdWriter objectidwriter)
    {
        return withObjectIdWriter(objectidwriter);
    }
}
