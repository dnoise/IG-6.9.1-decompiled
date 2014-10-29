// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.jsontype.impl.StdTypeResolverBuilder;
import java.io.Serializable;
import java.util.Collection;

// Referenced classes of package com.fasterxml.jackson.databind:
//            JavaType, DeserializationConfig, SerializationConfig

public class _appliesFor extends StdTypeResolverBuilder
    implements Serializable
{

    private static final long serialVersionUID = 1L;
    protected final _appliesFor _appliesFor;

    public TypeDeserializer buildTypeDeserializer(DeserializationConfig deserializationconfig, JavaType javatype, Collection collection)
    {
        if (useForType(javatype))
        {
            return super.buildTypeDeserializer(deserializationconfig, javatype, collection);
        } else
        {
            return null;
        }
    }

    public TypeSerializer buildTypeSerializer(SerializationConfig serializationconfig, JavaType javatype, Collection collection)
    {
        if (useForType(javatype))
        {
            return super.buildTypeSerializer(serializationconfig, javatype, collection);
        } else
        {
            return null;
        }
    }

    public boolean useForType(JavaType javatype)
    {
        jackson.databind.ObjectMapper.DefaultTyping[_appliesFor._appliesFor()];
        JVM INSTR tableswitch 1 3: default 36
    //                   1 55
    //                   2 70
    //                   3 94;
           goto _L1 _L2 _L3 _L4
_L1:
        boolean flag1;
        Class class1 = javatype.getRawClass();
        flag1 = false;
        if (class1 == java/lang/Object)
        {
            flag1 = true;
        }
_L6:
        return flag1;
_L2:
        for (; javatype.isArrayType(); javatype = javatype.getContentType()) { }
_L3:
        boolean flag2;
        if (javatype.getRawClass() == java/lang/Object)
        {
            break; /* Loop/switch isn't completed */
        }
        flag2 = javatype.isConcrete();
        flag1 = false;
        if (flag2) goto _L6; else goto _L5
_L5:
        return true;
_L4:
        for (; javatype.isArrayType(); javatype = javatype.getContentType()) { }
        boolean flag = javatype.isFinal();
        flag1 = false;
        if (!flag)
        {
            return true;
        }
        if (true) goto _L6; else goto _L7
_L7:
    }

    public ( )
    {
        _appliesFor = ;
    }
}
