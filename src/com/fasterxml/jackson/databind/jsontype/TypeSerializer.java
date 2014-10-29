// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.jsontype;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.databind.BeanProperty;

// Referenced classes of package com.fasterxml.jackson.databind.jsontype:
//            TypeIdResolver

public abstract class TypeSerializer
{

    public TypeSerializer()
    {
    }

    public abstract TypeSerializer forProperty(BeanProperty beanproperty);

    public abstract String getPropertyName();

    public abstract TypeIdResolver getTypeIdResolver();

    public abstract com.fasterxml.jackson.annotation.JsonTypeInfo.As getTypeInclusion();

    public abstract void writeCustomTypePrefixForArray(Object obj, h h, String s);

    public abstract void writeCustomTypePrefixForObject(Object obj, h h, String s);

    public abstract void writeCustomTypePrefixForScalar(Object obj, h h, String s);

    public abstract void writeCustomTypeSuffixForArray(Object obj, h h, String s);

    public abstract void writeCustomTypeSuffixForObject(Object obj, h h, String s);

    public abstract void writeCustomTypeSuffixForScalar(Object obj, h h, String s);

    public abstract void writeTypePrefixForArray(Object obj, h h);

    public void writeTypePrefixForArray(Object obj, h h, Class class1)
    {
        writeTypePrefixForArray(obj, h);
    }

    public abstract void writeTypePrefixForObject(Object obj, h h);

    public void writeTypePrefixForObject(Object obj, h h, Class class1)
    {
        writeTypePrefixForObject(obj, h);
    }

    public abstract void writeTypePrefixForScalar(Object obj, h h);

    public void writeTypePrefixForScalar(Object obj, h h, Class class1)
    {
        writeTypePrefixForScalar(obj, h);
    }

    public abstract void writeTypeSuffixForArray(Object obj, h h);

    public abstract void writeTypeSuffixForObject(Object obj, h h);

    public abstract void writeTypeSuffixForScalar(Object obj, h h);
}
