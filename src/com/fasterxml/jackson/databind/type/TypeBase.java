// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializable;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;

public abstract class TypeBase extends JavaType
    implements JsonSerializable
{

    private static final long serialVersionUID = 0xce4d066641f17aa3L;
    volatile transient String _canonicalName;

    protected TypeBase(Class class1, int i, Object obj, Object obj1)
    {
        this(class1, i, obj, obj1, false);
    }

    protected TypeBase(Class class1, int i, Object obj, Object obj1, boolean flag)
    {
        super(class1, i, obj, obj1, flag);
    }

    protected static StringBuilder _classSignature(Class class1, StringBuilder stringbuilder, boolean flag)
    {
        if (!class1.isPrimitive()) goto _L2; else goto _L1
_L1:
        if (class1 != Boolean.TYPE) goto _L4; else goto _L3
_L3:
        stringbuilder.append('Z');
_L6:
        return stringbuilder;
_L4:
        if (class1 == Byte.TYPE)
        {
            stringbuilder.append('B');
            return stringbuilder;
        }
        if (class1 == Short.TYPE)
        {
            stringbuilder.append('S');
            return stringbuilder;
        }
        if (class1 == Character.TYPE)
        {
            stringbuilder.append('C');
            return stringbuilder;
        }
        if (class1 == Integer.TYPE)
        {
            stringbuilder.append('I');
            return stringbuilder;
        }
        if (class1 == Long.TYPE)
        {
            stringbuilder.append('J');
            return stringbuilder;
        }
        if (class1 == Float.TYPE)
        {
            stringbuilder.append('F');
            return stringbuilder;
        }
        if (class1 == Double.TYPE)
        {
            stringbuilder.append('D');
            return stringbuilder;
        }
        if (class1 == Void.TYPE)
        {
            stringbuilder.append('V');
            return stringbuilder;
        } else
        {
            throw new IllegalStateException((new StringBuilder("Unrecognized primitive type: ")).append(class1.getName()).toString());
        }
_L2:
        stringbuilder.append('L');
        String s = class1.getName();
        int i = s.length();
        for (int j = 0; j < i; j++)
        {
            char c = s.charAt(j);
            if (c == '.')
            {
                c = '/';
            }
            stringbuilder.append(c);
        }

        if (flag)
        {
            stringbuilder.append(';');
            return stringbuilder;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected abstract String buildCanonicalName();

    public abstract StringBuilder getErasedSignature(StringBuilder stringbuilder);

    public abstract StringBuilder getGenericSignature(StringBuilder stringbuilder);

    public Object getTypeHandler()
    {
        return _typeHandler;
    }

    public Object getValueHandler()
    {
        return _valueHandler;
    }

    public void serialize(h h1, SerializerProvider serializerprovider)
    {
        h1.writeString(toCanonical());
    }

    public void serializeWithType(h h1, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        typeserializer.writeTypePrefixForScalar(this, h1);
        serialize(h1, serializerprovider);
        typeserializer.writeTypeSuffixForScalar(this, h1);
    }

    public String toCanonical()
    {
        String s = _canonicalName;
        if (s == null)
        {
            s = buildCanonicalName();
        }
        return s;
    }
}
