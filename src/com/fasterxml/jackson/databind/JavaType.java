// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.a.f.a;
import java.io.Serializable;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;

public abstract class JavaType extends a
    implements Serializable, Type
{

    private static final long serialVersionUID = 0x5e03193550d4eef6L;
    protected final boolean _asStatic;
    protected final Class _class;
    protected final int _hashCode;
    protected final Object _typeHandler;
    protected final Object _valueHandler;

    protected JavaType(Class class1, int i, Object obj, Object obj1, boolean flag)
    {
        _class = class1;
        _hashCode = i + class1.getName().hashCode();
        _valueHandler = obj;
        _typeHandler = obj1;
        _asStatic = flag;
    }

    protected void _assertSubclass(Class class1, Class class2)
    {
        if (!_class.isAssignableFrom(class1))
        {
            throw new IllegalArgumentException((new StringBuilder("Class ")).append(class1.getName()).append(" is not assignable to ").append(_class.getName()).toString());
        } else
        {
            return;
        }
    }

    protected abstract JavaType _narrow(Class class1);

    protected JavaType _widen(Class class1)
    {
        return _narrow(class1);
    }

    public volatile a containedType(int i)
    {
        return containedType(i);
    }

    public JavaType containedType(int i)
    {
        return null;
    }

    public int containedTypeCount()
    {
        return 0;
    }

    public String containedTypeName(int i)
    {
        return null;
    }

    public abstract boolean equals(Object obj);

    public JavaType forcedNarrowBy(Class class1)
    {
        if (class1 == _class)
        {
            return this;
        }
        JavaType javatype = _narrow(class1);
        if (_valueHandler != javatype.getValueHandler())
        {
            javatype = javatype.withValueHandler(_valueHandler);
        }
        if (_typeHandler != javatype.getTypeHandler())
        {
            javatype = javatype.withTypeHandler(_typeHandler);
        }
        return javatype;
    }

    public volatile a getContentType()
    {
        return getContentType();
    }

    public JavaType getContentType()
    {
        return null;
    }

    public String getErasedSignature()
    {
        StringBuilder stringbuilder = new StringBuilder(40);
        getErasedSignature(stringbuilder);
        return stringbuilder.toString();
    }

    public abstract StringBuilder getErasedSignature(StringBuilder stringbuilder);

    public String getGenericSignature()
    {
        StringBuilder stringbuilder = new StringBuilder(40);
        getGenericSignature(stringbuilder);
        return stringbuilder.toString();
    }

    public abstract StringBuilder getGenericSignature(StringBuilder stringbuilder);

    public volatile a getKeyType()
    {
        return getKeyType();
    }

    public JavaType getKeyType()
    {
        return null;
    }

    public final Class getRawClass()
    {
        return _class;
    }

    public Object getTypeHandler()
    {
        return _typeHandler;
    }

    public Object getValueHandler()
    {
        return _valueHandler;
    }

    public boolean hasGenericTypes()
    {
        return containedTypeCount() > 0;
    }

    public final boolean hasRawClass(Class class1)
    {
        return _class == class1;
    }

    public final int hashCode()
    {
        return _hashCode;
    }

    public boolean isAbstract()
    {
        return Modifier.isAbstract(_class.getModifiers());
    }

    public boolean isArrayType()
    {
        return false;
    }

    public boolean isCollectionLikeType()
    {
        return false;
    }

    public boolean isConcrete()
    {
        while ((0x600 & _class.getModifiers()) == 0 || _class.isPrimitive()) 
        {
            return true;
        }
        return false;
    }

    public abstract boolean isContainerType();

    public final boolean isEnumType()
    {
        return _class.isEnum();
    }

    public final boolean isFinal()
    {
        return Modifier.isFinal(_class.getModifiers());
    }

    public final boolean isInterface()
    {
        return _class.isInterface();
    }

    public boolean isMapLikeType()
    {
        return false;
    }

    public final boolean isPrimitive()
    {
        return _class.isPrimitive();
    }

    public boolean isThrowable()
    {
        return java/lang/Throwable.isAssignableFrom(_class);
    }

    public JavaType narrowBy(Class class1)
    {
        if (class1 == _class)
        {
            return this;
        }
        _assertSubclass(class1, _class);
        JavaType javatype = _narrow(class1);
        if (_valueHandler != javatype.getValueHandler())
        {
            javatype = javatype.withValueHandler(_valueHandler);
        }
        if (_typeHandler != javatype.getTypeHandler())
        {
            javatype = javatype.withTypeHandler(_typeHandler);
        }
        return javatype;
    }

    public abstract JavaType narrowContentsBy(Class class1);

    public abstract String toString();

    public final boolean useStaticType()
    {
        return _asStatic;
    }

    public JavaType widenBy(Class class1)
    {
        if (class1 == _class)
        {
            return this;
        } else
        {
            _assertSubclass(_class, class1);
            return _widen(class1);
        }
    }

    public abstract JavaType widenContentsBy(Class class1);

    public abstract JavaType withContentTypeHandler(Object obj);

    public abstract JavaType withContentValueHandler(Object obj);

    public abstract JavaType withStaticTyping();

    public abstract JavaType withTypeHandler(Object obj);

    public abstract JavaType withValueHandler(Object obj);
}
