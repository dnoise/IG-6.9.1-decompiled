// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.a.c.l;
import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import com.fasterxml.jackson.databind.util.NameTransformer;

// Referenced classes of package com.fasterxml.jackson.databind.ser.impl:
//            UnwrappingBeanSerializer, PropertySerializerMap

public class UnwrappingBeanPropertyWriter extends BeanPropertyWriter
{

    protected final NameTransformer _nameTransformer;

    public UnwrappingBeanPropertyWriter(BeanPropertyWriter beanpropertywriter, NameTransformer nametransformer)
    {
        super(beanpropertywriter);
        _nameTransformer = nametransformer;
    }

    private UnwrappingBeanPropertyWriter(UnwrappingBeanPropertyWriter unwrappingbeanpropertywriter, NameTransformer nametransformer, l l1)
    {
        super(unwrappingbeanpropertywriter, l1);
        _nameTransformer = nametransformer;
    }

    protected JsonSerializer _findAndAddDynamic(PropertySerializerMap propertyserializermap, Class class1, SerializerProvider serializerprovider)
    {
        JsonSerializer jsonserializer;
        NameTransformer nametransformer;
        NameTransformer nametransformer1;
        JsonSerializer jsonserializer1;
        if (_nonTrivialBaseType != null)
        {
            jsonserializer = serializerprovider.findValueSerializer(serializerprovider.constructSpecializedType(_nonTrivialBaseType, class1), this);
        } else
        {
            jsonserializer = serializerprovider.findValueSerializer(class1, this);
        }
        nametransformer = _nameTransformer;
        if (jsonserializer.isUnwrappingSerializer())
        {
            nametransformer1 = NameTransformer.chainedTransformer(nametransformer, ((UnwrappingBeanSerializer)jsonserializer)._nameTransformer);
        } else
        {
            nametransformer1 = nametransformer;
        }
        jsonserializer1 = jsonserializer.unwrappingSerializer(nametransformer1);
        _dynamicSerializers = _dynamicSerializers.newWith(class1, jsonserializer1);
        return jsonserializer1;
    }

    public void assignSerializer(JsonSerializer jsonserializer)
    {
        super.assignSerializer(jsonserializer);
        if (_serializer != null)
        {
            NameTransformer nametransformer = _nameTransformer;
            NameTransformer nametransformer1;
            if (_serializer.isUnwrappingSerializer())
            {
                nametransformer1 = NameTransformer.chainedTransformer(nametransformer, ((UnwrappingBeanSerializer)_serializer)._nameTransformer);
            } else
            {
                nametransformer1 = nametransformer;
            }
            _serializer = _serializer.unwrappingSerializer(nametransformer1);
        }
    }

    public volatile BeanPropertyWriter rename(NameTransformer nametransformer)
    {
        return rename(nametransformer);
    }

    public UnwrappingBeanPropertyWriter rename(NameTransformer nametransformer)
    {
        String s = nametransformer.transform(_name.a());
        return new UnwrappingBeanPropertyWriter(this, NameTransformer.chainedTransformer(nametransformer, _nameTransformer), new l(s));
    }

    public void serializeAsField(Object obj, h h1, SerializerProvider serializerprovider)
    {
        Object obj1 = get(obj);
        if (obj1 != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        JsonSerializer jsonserializer;
        jsonserializer = _serializer;
        if (jsonserializer == null)
        {
            Class class1 = obj1.getClass();
            PropertySerializerMap propertyserializermap = _dynamicSerializers;
            jsonserializer = propertyserializermap.serializerFor(class1);
            if (jsonserializer == null)
            {
                jsonserializer = _findAndAddDynamic(propertyserializermap, class1, serializerprovider);
            }
        }
        if (_suppressableValue == null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (MARKER_FOR_EMPTY != _suppressableValue)
        {
            break MISSING_BLOCK_LABEL_135;
        }
        if (jsonserializer.isEmpty(obj1)) goto _L1; else goto _L3
_L3:
        if (obj1 == obj)
        {
            _handleSelfReference(obj, jsonserializer);
        }
        if (!jsonserializer.isUnwrappingSerializer())
        {
            h1.writeFieldName(_name);
        }
        if (_typeSerializer == null)
        {
            jsonserializer.serialize(obj1, h1, serializerprovider);
            return;
        } else
        {
            jsonserializer.serializeWithType(obj1, h1, serializerprovider, _typeSerializer);
            return;
        }
        if (_suppressableValue.equals(obj1))
        {
            return;
        }
          goto _L3
    }
}
