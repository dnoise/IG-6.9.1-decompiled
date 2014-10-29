// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import com.fasterxml.jackson.databind.ser.std.BeanSerializerBase;
import com.fasterxml.jackson.databind.util.NameTransformer;

// Referenced classes of package com.fasterxml.jackson.databind.ser.impl:
//            ObjectIdWriter

public class BeanAsArraySerializer extends BeanSerializerBase
{

    protected final BeanSerializerBase _defaultSerializer;

    public BeanAsArraySerializer(BeanSerializerBase beanserializerbase)
    {
        super(beanserializerbase, null);
        _defaultSerializer = beanserializerbase;
    }

    protected BeanAsArraySerializer(BeanSerializerBase beanserializerbase, String as[])
    {
        super(beanserializerbase, as);
        _defaultSerializer = beanserializerbase;
    }

    private boolean hasSingleElement(SerializerProvider serializerprovider)
    {
        BeanPropertyWriter abeanpropertywriter[];
        if (_filteredProps != null && serializerprovider.getActiveView() != null)
        {
            abeanpropertywriter = _filteredProps;
        } else
        {
            abeanpropertywriter = _props;
        }
        return abeanpropertywriter.length == 1;
    }

    protected BeanSerializerBase asArraySerializer()
    {
        return this;
    }

    public boolean isUnwrappingSerializer()
    {
        return false;
    }

    public final void serialize(Object obj, h h1, SerializerProvider serializerprovider)
    {
        if (serializerprovider.isEnabled(SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED) && hasSingleElement(serializerprovider))
        {
            serializeAsArray(obj, h1, serializerprovider);
            return;
        } else
        {
            h1.writeStartArray();
            serializeAsArray(obj, h1, serializerprovider);
            h1.writeEndArray();
            return;
        }
    }

    protected final void serializeAsArray(Object obj, h h1, SerializerProvider serializerprovider)
    {
        BeanPropertyWriter abeanpropertywriter[];
        int i;
        BeanPropertyWriter beanpropertywriter;
        int j;
        if (_filteredProps != null && serializerprovider.getActiveView() != null)
        {
            abeanpropertywriter = _filteredProps;
        } else
        {
            abeanpropertywriter = _props;
        }
        i = 0;
        j = abeanpropertywriter.length;
_L2:
        if (i >= j)
        {
            break MISSING_BLOCK_LABEL_101;
        }
        beanpropertywriter = abeanpropertywriter[i];
        if (beanpropertywriter != null)
        {
            break; /* Loop/switch isn't completed */
        }
        h1.writeNull();
_L3:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        beanpropertywriter.serializeAsColumn(obj, h1, serializerprovider);
          goto _L3
        Exception exception;
        exception;
        String s1;
        if (i == abeanpropertywriter.length)
        {
            s1 = "[anySetter]";
        } else
        {
            s1 = abeanpropertywriter[i].getName();
        }
        wrapAndThrow(serializerprovider, exception, obj, s1);
        return;
        StackOverflowError stackoverflowerror;
        stackoverflowerror;
        JsonMappingException jsonmappingexception = new JsonMappingException("Infinite recursion (StackOverflowError)", stackoverflowerror);
        String s;
        if (i == abeanpropertywriter.length)
        {
            s = "[anySetter]";
        } else
        {
            s = abeanpropertywriter[i].getName();
        }
        jsonmappingexception.prependPath(new com.fasterxml.jackson.databind.JsonMappingException.Reference(obj, s));
        throw jsonmappingexception;
    }

    public void serializeWithType(Object obj, h h1, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        _defaultSerializer.serializeWithType(obj, h1, serializerprovider, typeserializer);
    }

    public String toString()
    {
        return (new StringBuilder("BeanAsArraySerializer for ")).append(handledType().getName()).toString();
    }

    public JsonSerializer unwrappingSerializer(NameTransformer nametransformer)
    {
        return _defaultSerializer.unwrappingSerializer(nametransformer);
    }

    protected BeanAsArraySerializer withIgnorals(String as[])
    {
        return new BeanAsArraySerializer(this, as);
    }

    protected volatile BeanSerializerBase withIgnorals(String as[])
    {
        return withIgnorals(as);
    }

    public BeanSerializerBase withObjectIdWriter(ObjectIdWriter objectidwriter)
    {
        return _defaultSerializer.withObjectIdWriter(objectidwriter);
    }
}
