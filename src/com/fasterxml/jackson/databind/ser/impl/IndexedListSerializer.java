// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.std.AsArraySerializerBase;
import java.util.List;

// Referenced classes of package com.fasterxml.jackson.databind.ser.impl:
//            PropertySerializerMap

public final class IndexedListSerializer extends AsArraySerializerBase
{

    public IndexedListSerializer(JavaType javatype, boolean flag, TypeSerializer typeserializer, BeanProperty beanproperty, JsonSerializer jsonserializer)
    {
        super(java/util/List, javatype, flag, typeserializer, beanproperty, jsonserializer);
    }

    public IndexedListSerializer(IndexedListSerializer indexedlistserializer, BeanProperty beanproperty, TypeSerializer typeserializer, JsonSerializer jsonserializer)
    {
        super(indexedlistserializer, beanproperty, typeserializer, jsonserializer);
    }

    public final ContainerSerializer _withValueTypeSerializer(TypeSerializer typeserializer)
    {
        return new IndexedListSerializer(_elementType, _staticTyping, typeserializer, _property, _elementSerializer);
    }

    public final volatile boolean hasSingleElement(Object obj)
    {
        return hasSingleElement((List)obj);
    }

    public final boolean hasSingleElement(List list)
    {
        return list.size() == 1;
    }

    public final volatile boolean isEmpty(Object obj)
    {
        return isEmpty((List)obj);
    }

    public final boolean isEmpty(List list)
    {
        return list == null || list.isEmpty();
    }

    public final volatile void serializeContents(Object obj, h h, SerializerProvider serializerprovider)
    {
        serializeContents((List)obj, h, serializerprovider);
    }

    public final void serializeContents(List list, h h, SerializerProvider serializerprovider)
    {
        if (_elementSerializer == null) goto _L2; else goto _L1
_L1:
        serializeContentsUsing(list, h, serializerprovider, _elementSerializer);
_L9:
        return;
_L2:
        if (_valueTypeSerializer != null)
        {
            serializeTypedContents(list, h, serializerprovider);
            return;
        }
        int i = list.size();
        if (i == 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        int j = 0;
        PropertySerializerMap propertyserializermap;
        Object obj;
        Class class1;
        JsonSerializer jsonserializer;
        JsonSerializer jsonserializer2;
        PropertySerializerMap propertyserializermap1;
        JsonSerializer jsonserializer3;
        try
        {
            propertyserializermap = _dynamicSerializers;
        }
        catch (Exception exception)
        {
            wrapAndThrow(serializerprovider, exception, list, j);
            return;
        }
        JsonSerializer jsonserializer1;
        for (; j >= i; j++)
        {
            continue; /* Loop/switch isn't completed */
        }

        obj = list.get(j);
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_86;
        }
        serializerprovider.defaultSerializeNull(h);
        break MISSING_BLOCK_LABEL_197;
        class1 = obj.getClass();
        jsonserializer = propertyserializermap.serializerFor(class1);
        if (jsonserializer != null) goto _L4; else goto _L3
_L3:
        if (!_elementType.hasGenericTypes()) goto _L6; else goto _L5
_L5:
        jsonserializer2 = _findAndAddDynamic(propertyserializermap, serializerprovider.constructSpecializedType(_elementType, class1), serializerprovider);
_L7:
        propertyserializermap1 = _dynamicSerializers;
        jsonserializer3 = jsonserializer2;
        propertyserializermap = propertyserializermap1;
        jsonserializer = jsonserializer3;
_L4:
        jsonserializer.serialize(obj, h, serializerprovider);
        break MISSING_BLOCK_LABEL_197;
_L6:
        jsonserializer1 = _findAndAddDynamic(propertyserializermap, class1, serializerprovider);
        jsonserializer2 = jsonserializer1;
          goto _L7
        if (true) goto _L9; else goto _L8
_L8:
    }

    public final void serializeContentsUsing(List list, h h, SerializerProvider serializerprovider, JsonSerializer jsonserializer)
    {
        int i = list.size();
        if (i != 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        TypeSerializer typeserializer;
        int j;
        typeserializer = _valueTypeSerializer;
        j = 0;
_L4:
        Object obj;
        if (j >= i)
        {
            continue; /* Loop/switch isn't completed */
        }
        obj = list.get(j);
        if (obj == null)
        {
            try
            {
                serializerprovider.defaultSerializeNull(h);
            }
            catch (Exception exception)
            {
                wrapAndThrow(serializerprovider, exception, list, j);
            }
            break MISSING_BLOCK_LABEL_96;
        }
        if (typeserializer != null)
        {
            break MISSING_BLOCK_LABEL_85;
        }
        jsonserializer.serialize(obj, h, serializerprovider);
        break MISSING_BLOCK_LABEL_96;
        jsonserializer.serializeWithType(obj, h, serializerprovider, typeserializer);
        j++;
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L1; else goto _L5
_L5:
    }

    public final void serializeTypedContents(List list, h h, SerializerProvider serializerprovider)
    {
        int i = list.size();
        if (i != 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int j = 0;
        TypeSerializer typeserializer;
        PropertySerializerMap propertyserializermap;
        Object obj;
        Class class1;
        JsonSerializer jsonserializer;
        JsonSerializer jsonserializer2;
        PropertySerializerMap propertyserializermap1;
        JsonSerializer jsonserializer3;
        try
        {
            typeserializer = _valueTypeSerializer;
            propertyserializermap = _dynamicSerializers;
        }
        catch (Exception exception)
        {
            wrapAndThrow(serializerprovider, exception, list, j);
            return;
        }
        JsonSerializer jsonserializer1;
        for (; j >= i; j++)
        {
            continue; /* Loop/switch isn't completed */
        }

        obj = list.get(j);
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_59;
        }
        serializerprovider.defaultSerializeNull(h);
        break MISSING_BLOCK_LABEL_172;
        class1 = obj.getClass();
        jsonserializer = propertyserializermap.serializerFor(class1);
        if (jsonserializer != null) goto _L4; else goto _L3
_L3:
        if (!_elementType.hasGenericTypes()) goto _L6; else goto _L5
_L5:
        jsonserializer2 = _findAndAddDynamic(propertyserializermap, serializerprovider.constructSpecializedType(_elementType, class1), serializerprovider);
_L7:
        propertyserializermap1 = _dynamicSerializers;
        jsonserializer3 = jsonserializer2;
        propertyserializermap = propertyserializermap1;
        jsonserializer = jsonserializer3;
_L4:
        jsonserializer.serializeWithType(obj, h, serializerprovider, typeserializer);
        break MISSING_BLOCK_LABEL_172;
_L6:
        jsonserializer1 = _findAndAddDynamic(propertyserializermap, class1, serializerprovider);
        jsonserializer2 = jsonserializer1;
          goto _L7
        if (true) goto _L1; else goto _L8
_L8:
    }

    public final IndexedListSerializer withResolved(BeanProperty beanproperty, TypeSerializer typeserializer, JsonSerializer jsonserializer)
    {
        return new IndexedListSerializer(this, beanproperty, typeserializer, jsonserializer);
    }

    public final volatile AsArraySerializerBase withResolved(BeanProperty beanproperty, TypeSerializer typeserializer, JsonSerializer jsonserializer)
    {
        return withResolved(beanproperty, typeserializer, jsonserializer);
    }
}
