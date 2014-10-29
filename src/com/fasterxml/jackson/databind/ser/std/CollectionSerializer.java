// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap;
import java.util.Collection;
import java.util.Iterator;

// Referenced classes of package com.fasterxml.jackson.databind.ser.std:
//            AsArraySerializerBase

public class CollectionSerializer extends AsArraySerializerBase
{

    public CollectionSerializer(JavaType javatype, boolean flag, TypeSerializer typeserializer, BeanProperty beanproperty, JsonSerializer jsonserializer)
    {
        super(java/util/Collection, javatype, flag, typeserializer, beanproperty, jsonserializer);
    }

    public CollectionSerializer(CollectionSerializer collectionserializer, BeanProperty beanproperty, TypeSerializer typeserializer, JsonSerializer jsonserializer)
    {
        super(collectionserializer, beanproperty, typeserializer, jsonserializer);
    }

    public ContainerSerializer _withValueTypeSerializer(TypeSerializer typeserializer)
    {
        return new CollectionSerializer(_elementType, _staticTyping, typeserializer, _property, _elementSerializer);
    }

    public volatile boolean hasSingleElement(Object obj)
    {
        return hasSingleElement((Collection)obj);
    }

    public boolean hasSingleElement(Collection collection)
    {
        Iterator iterator = collection.iterator();
        if (iterator.hasNext())
        {
            iterator.next();
            if (!iterator.hasNext())
            {
                return true;
            }
        }
        return false;
    }

    public volatile boolean isEmpty(Object obj)
    {
        return isEmpty((Collection)obj);
    }

    public boolean isEmpty(Collection collection)
    {
        return collection == null || collection.isEmpty();
    }

    public volatile void serializeContents(Object obj, h h, SerializerProvider serializerprovider)
    {
        serializeContents((Collection)obj, h, serializerprovider);
    }

    public void serializeContents(Collection collection, h h, SerializerProvider serializerprovider)
    {
        if (_elementSerializer == null) goto _L2; else goto _L1
_L1:
        serializeContentsUsing(collection, h, serializerprovider, _elementSerializer);
_L4:
        return;
_L2:
        Iterator iterator = collection.iterator();
        if (!iterator.hasNext()) goto _L4; else goto _L3
_L3:
        PropertySerializerMap propertyserializermap;
        TypeSerializer typeserializer;
        int i;
        propertyserializermap = _dynamicSerializers;
        typeserializer = _valueTypeSerializer;
        i = 0;
_L8:
        Object obj;
        Class class1;
        JsonSerializer jsonserializer;
        JsonSerializer jsonserializer1;
        PropertySerializerMap propertyserializermap1;
        try
        {
            obj = iterator.next();
        }
        catch (Exception exception)
        {
            wrapAndThrow(serializerprovider, exception, collection, i);
            return;
        }
        if (obj != null) goto _L6; else goto _L5
_L5:
        serializerprovider.defaultSerializeNull(h);
_L11:
        i++;
        if (iterator.hasNext()) goto _L8; else goto _L7
_L7:
        return;
_L6:
        class1 = obj.getClass();
        jsonserializer = propertyserializermap.serializerFor(class1);
        if (jsonserializer != null) goto _L10; else goto _L9
_L9:
        if (!_elementType.hasGenericTypes())
        {
            break MISSING_BLOCK_LABEL_183;
        }
        jsonserializer1 = _findAndAddDynamic(propertyserializermap, serializerprovider.constructSpecializedType(_elementType, class1), serializerprovider);
_L12:
        propertyserializermap1 = _dynamicSerializers;
        JsonSerializer jsonserializer2 = jsonserializer1;
        propertyserializermap = propertyserializermap1;
        jsonserializer = jsonserializer2;
_L10:
        if (typeserializer != null)
        {
            break MISSING_BLOCK_LABEL_197;
        }
        jsonserializer.serialize(obj, h, serializerprovider);
          goto _L11
        jsonserializer1 = _findAndAddDynamic(propertyserializermap, class1, serializerprovider);
          goto _L12
        jsonserializer.serializeWithType(obj, h, serializerprovider, typeserializer);
          goto _L11
    }

    public void serializeContentsUsing(Collection collection, h h, SerializerProvider serializerprovider, JsonSerializer jsonserializer)
    {
        Iterator iterator = collection.iterator();
        if (!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        TypeSerializer typeserializer;
        int i;
        typeserializer = _valueTypeSerializer;
        i = 0;
_L5:
        Object obj = iterator.next();
        if (obj != null) goto _L4; else goto _L3
_L3:
        serializerprovider.defaultSerializeNull(h);
_L6:
        i++;
_L7:
        if (iterator.hasNext()) goto _L5; else goto _L2
_L2:
        return;
_L4:
        if (typeserializer != null)
        {
            break MISSING_BLOCK_LABEL_92;
        }
        jsonserializer.serialize(obj, h, serializerprovider);
          goto _L6
        Exception exception;
        exception;
        wrapAndThrow(serializerprovider, exception, collection, i);
          goto _L7
        jsonserializer.serializeWithType(obj, h, serializerprovider, typeserializer);
          goto _L6
    }

    public volatile AsArraySerializerBase withResolved(BeanProperty beanproperty, TypeSerializer typeserializer, JsonSerializer jsonserializer)
    {
        return withResolved(beanproperty, typeserializer, jsonserializer);
    }

    public CollectionSerializer withResolved(BeanProperty beanproperty, TypeSerializer typeserializer, JsonSerializer jsonserializer)
    {
        return new CollectionSerializer(this, beanproperty, typeserializer, jsonserializer);
    }
}
