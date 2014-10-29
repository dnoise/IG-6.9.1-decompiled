// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.module;

import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.type.ArrayType;
import com.fasterxml.jackson.databind.type.ClassKey;
import com.fasterxml.jackson.databind.type.CollectionLikeType;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.type.MapLikeType;
import com.fasterxml.jackson.databind.type.MapType;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class SimpleSerializers extends com.fasterxml.jackson.databind.ser.Serializers.Base
    implements Serializable
{

    private static final long serialVersionUID = 0x76667f4cd0de53cbL;
    protected HashMap _classMappings;
    protected HashMap _interfaceMappings;

    public SimpleSerializers()
    {
        _classMappings = null;
        _interfaceMappings = null;
    }

    public SimpleSerializers(List list)
    {
        _classMappings = null;
        _interfaceMappings = null;
        addSerializers(list);
    }

    private void _addSerializer(Class class1, JsonSerializer jsonserializer)
    {
        ClassKey classkey = new ClassKey(class1);
        if (class1.isInterface())
        {
            if (_interfaceMappings == null)
            {
                _interfaceMappings = new HashMap();
            }
            _interfaceMappings.put(classkey, jsonserializer);
            return;
        }
        if (_classMappings == null)
        {
            _classMappings = new HashMap();
        }
        _classMappings.put(classkey, jsonserializer);
    }

    protected JsonSerializer _findInterfaceMapping(Class class1, ClassKey classkey)
    {
        Class aclass[];
        int i;
        int j;
        aclass = class1.getInterfaces();
        i = aclass.length;
        j = 0;
_L5:
        Class class2;
        JsonSerializer jsonserializer;
        if (j >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        class2 = aclass[j];
        classkey.reset(class2);
        jsonserializer = (JsonSerializer)_interfaceMappings.get(classkey);
        if (jsonserializer == null) goto _L2; else goto _L1
_L1:
        return jsonserializer;
_L2:
        if ((jsonserializer = _findInterfaceMapping(class2, classkey)) != null) goto _L1; else goto _L3
_L3:
        j++;
        if (true) goto _L5; else goto _L4
_L4:
        return null;
    }

    public void addSerializer(JsonSerializer jsonserializer)
    {
        Class class1 = jsonserializer.handledType();
        if (class1 == null || class1 == java/lang/Object)
        {
            throw new IllegalArgumentException((new StringBuilder("JsonSerializer of type ")).append(jsonserializer.getClass().getName()).append(" does not define valid handledType() -- must either register with method that takes type argument  or make serializer extend 'com.fasterxml.jackson.databind.ser.std.StdSerializer'").toString());
        } else
        {
            _addSerializer(class1, jsonserializer);
            return;
        }
    }

    public void addSerializer(Class class1, JsonSerializer jsonserializer)
    {
        _addSerializer(class1, jsonserializer);
    }

    public void addSerializers(List list)
    {
        for (Iterator iterator = list.iterator(); iterator.hasNext(); addSerializer((JsonSerializer)iterator.next())) { }
    }

    public JsonSerializer findArraySerializer(SerializationConfig serializationconfig, ArrayType arraytype, BeanDescription beandescription, TypeSerializer typeserializer, JsonSerializer jsonserializer)
    {
        return findSerializer(serializationconfig, arraytype, beandescription);
    }

    public JsonSerializer findCollectionLikeSerializer(SerializationConfig serializationconfig, CollectionLikeType collectionliketype, BeanDescription beandescription, TypeSerializer typeserializer, JsonSerializer jsonserializer)
    {
        return findSerializer(serializationconfig, collectionliketype, beandescription);
    }

    public JsonSerializer findCollectionSerializer(SerializationConfig serializationconfig, CollectionType collectiontype, BeanDescription beandescription, TypeSerializer typeserializer, JsonSerializer jsonserializer)
    {
        return findSerializer(serializationconfig, collectiontype, beandescription);
    }

    public JsonSerializer findMapLikeSerializer(SerializationConfig serializationconfig, MapLikeType mapliketype, BeanDescription beandescription, JsonSerializer jsonserializer, TypeSerializer typeserializer, JsonSerializer jsonserializer1)
    {
        return findSerializer(serializationconfig, mapliketype, beandescription);
    }

    public JsonSerializer findMapSerializer(SerializationConfig serializationconfig, MapType maptype, BeanDescription beandescription, JsonSerializer jsonserializer, TypeSerializer typeserializer, JsonSerializer jsonserializer1)
    {
        return findSerializer(serializationconfig, maptype, beandescription);
    }

    public JsonSerializer findSerializer(SerializationConfig serializationconfig, JavaType javatype, BeanDescription beandescription)
    {
        Class class1;
        ClassKey classkey;
        class1 = javatype.getRawClass();
        classkey = new ClassKey(class1);
        if (!class1.isInterface()) goto _L2; else goto _L1
_L1:
        if (_interfaceMappings == null) goto _L4; else goto _L3
_L3:
        JsonSerializer jsonserializer = (JsonSerializer)_interfaceMappings.get(classkey);
        if (jsonserializer == null) goto _L4; else goto _L5
_L5:
        return jsonserializer;
_L2:
        if (_classMappings == null) goto _L4; else goto _L6
_L6:
        jsonserializer = (JsonSerializer)_classMappings.get(classkey);
        if (jsonserializer != null) goto _L5; else goto _L7
_L7:
        Class class3 = class1;
_L10:
        if (class3 == null) goto _L4; else goto _L8
_L8:
        classkey.reset(class3);
        jsonserializer = (JsonSerializer)_classMappings.get(classkey);
        if (jsonserializer != null) goto _L5; else goto _L9
_L9:
        class3 = class3.getSuperclass();
          goto _L10
_L4:
        if (_interfaceMappings == null)
        {
            break MISSING_BLOCK_LABEL_189;
        }
        if ((jsonserializer = _findInterfaceMapping(class1, classkey)) != null) goto _L5; else goto _L11
_L11:
        if (class1.isInterface())
        {
            break MISSING_BLOCK_LABEL_189;
        }
        Class class2 = class1;
        JsonSerializer jsonserializer1;
        do
        {
            class2 = class2.getSuperclass();
            if (class2 == null)
            {
                break MISSING_BLOCK_LABEL_189;
            }
            jsonserializer1 = _findInterfaceMapping(class2, classkey);
        } while (jsonserializer1 == null);
        return jsonserializer1;
        return null;
    }
}
