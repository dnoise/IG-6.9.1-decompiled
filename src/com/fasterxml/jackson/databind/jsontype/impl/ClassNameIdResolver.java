// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.type.MapType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.util.EnumMap;
import java.util.EnumSet;

// Referenced classes of package com.fasterxml.jackson.databind.jsontype.impl:
//            TypeIdResolverBase

public class ClassNameIdResolver extends TypeIdResolverBase
{

    public ClassNameIdResolver(JavaType javatype, TypeFactory typefactory)
    {
        super(javatype, typefactory);
    }

    protected final String _idFrom(Object obj, Class class1)
    {
        String s;
        if (java/lang/Enum.isAssignableFrom(class1) && !class1.isEnum())
        {
            class1 = class1.getSuperclass();
        }
        s = class1.getName();
        if (!s.startsWith("java.util")) goto _L2; else goto _L1
_L1:
        if (!(obj instanceof EnumSet)) goto _L4; else goto _L3
_L3:
        Class class3 = ClassUtil.findEnumType((EnumSet)obj);
        s = TypeFactory.defaultInstance().constructCollectionType(java/util/EnumSet, class3).toCanonical();
_L6:
        return s;
_L4:
        if (obj instanceof EnumMap)
        {
            Class class2 = ClassUtil.findEnumType((EnumMap)obj);
            return TypeFactory.defaultInstance().constructMapType(java/util/EnumMap, class2, java/lang/Object).toCanonical();
        }
        String s1 = s.substring(9);
        if ((s1.startsWith(".Arrays$") || s1.startsWith(".Collections$")) && s.indexOf("List") >= 0)
        {
            return "java.util.ArrayList";
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (s.indexOf('$') >= 0 && ClassUtil.getOuterClass(class1) != null && ClassUtil.getOuterClass(_baseType.getRawClass()) == null)
        {
            return _baseType.getRawClass().getName();
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public com.fasterxml.jackson.annotation.JsonTypeInfo.Id getMechanism()
    {
        return com.fasterxml.jackson.annotation.JsonTypeInfo.Id.CLASS;
    }

    public String idFromValue(Object obj)
    {
        return _idFrom(obj, obj.getClass());
    }

    public String idFromValueAndType(Object obj, Class class1)
    {
        return _idFrom(obj, class1);
    }

    public void registerSubtype(Class class1, String s)
    {
    }

    public JavaType typeFromId(String s)
    {
        if (s.indexOf('<') > 0)
        {
            return _typeFactory.constructFromCanonical(s);
        }
        JavaType javatype;
        try
        {
            Class class1 = ClassUtil.findClass(s);
            javatype = _typeFactory.constructSpecializedType(_baseType, class1);
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            throw new IllegalArgumentException((new StringBuilder("Invalid type id '")).append(s).append("' (for id type 'Id.class'): no such class found").toString());
        }
        catch (Exception exception)
        {
            throw new IllegalArgumentException((new StringBuilder("Invalid type id '")).append(s).append("' (for id type 'Id.class'): ").append(exception.getMessage()).toString(), exception);
        }
        return javatype;
    }
}
