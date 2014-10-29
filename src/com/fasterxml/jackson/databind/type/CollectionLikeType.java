// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.a.f.a;
import com.fasterxml.jackson.databind.JavaType;
import java.util.Collection;

// Referenced classes of package com.fasterxml.jackson.databind.type:
//            TypeBase

public class CollectionLikeType extends TypeBase
{

    private static final long serialVersionUID = 0x3fffd755256ef9c2L;
    protected final JavaType _elementType;

    protected CollectionLikeType(Class class1, JavaType javatype, Object obj, Object obj1, boolean flag)
    {
        super(class1, javatype.hashCode(), obj, obj1, flag);
        _elementType = javatype;
    }

    public static CollectionLikeType construct(Class class1, JavaType javatype)
    {
        return new CollectionLikeType(class1, javatype, null, null, false);
    }

    protected JavaType _narrow(Class class1)
    {
        return new CollectionLikeType(class1, _elementType, _valueHandler, _typeHandler, _asStatic);
    }

    protected String buildCanonicalName()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(_class.getName());
        if (_elementType != null)
        {
            stringbuilder.append('<');
            stringbuilder.append(_elementType.toCanonical());
            stringbuilder.append('>');
        }
        return stringbuilder.toString();
    }

    public volatile a containedType(int i)
    {
        return containedType(i);
    }

    public JavaType containedType(int i)
    {
        if (i == 0)
        {
            return _elementType;
        } else
        {
            return null;
        }
    }

    public int containedTypeCount()
    {
        return 1;
    }

    public String containedTypeName(int i)
    {
        if (i == 0)
        {
            return "E";
        } else
        {
            return null;
        }
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj == null)
            {
                return false;
            }
            if (obj.getClass() != getClass())
            {
                return false;
            }
            CollectionLikeType collectionliketype = (CollectionLikeType)obj;
            if (_class != collectionliketype._class || !_elementType.equals(collectionliketype._elementType))
            {
                return false;
            }
        }
        return true;
    }

    public volatile a getContentType()
    {
        return getContentType();
    }

    public JavaType getContentType()
    {
        return _elementType;
    }

    public StringBuilder getErasedSignature(StringBuilder stringbuilder)
    {
        return _classSignature(_class, stringbuilder, true);
    }

    public StringBuilder getGenericSignature(StringBuilder stringbuilder)
    {
        _classSignature(_class, stringbuilder, false);
        stringbuilder.append('<');
        _elementType.getGenericSignature(stringbuilder);
        stringbuilder.append(">;");
        return stringbuilder;
    }

    public boolean isCollectionLikeType()
    {
        return true;
    }

    public boolean isContainerType()
    {
        return true;
    }

    public boolean isTrueCollectionType()
    {
        return java/util/Collection.isAssignableFrom(_class);
    }

    public JavaType narrowContentsBy(Class class1)
    {
        if (class1 == _elementType.getRawClass())
        {
            return this;
        } else
        {
            return new CollectionLikeType(_class, _elementType.narrowBy(class1), _valueHandler, _typeHandler, _asStatic);
        }
    }

    public String toString()
    {
        return (new StringBuilder("[collection-like type; class ")).append(_class.getName()).append(", contains ").append(_elementType).append("]").toString();
    }

    public JavaType widenContentsBy(Class class1)
    {
        if (class1 == _elementType.getRawClass())
        {
            return this;
        } else
        {
            return new CollectionLikeType(_class, _elementType.widenBy(class1), _valueHandler, _typeHandler, _asStatic);
        }
    }

    public volatile JavaType withContentTypeHandler(Object obj)
    {
        return withContentTypeHandler(obj);
    }

    public CollectionLikeType withContentTypeHandler(Object obj)
    {
        return new CollectionLikeType(_class, _elementType.withTypeHandler(obj), _valueHandler, _typeHandler, _asStatic);
    }

    public volatile JavaType withContentValueHandler(Object obj)
    {
        return withContentValueHandler(obj);
    }

    public CollectionLikeType withContentValueHandler(Object obj)
    {
        return new CollectionLikeType(_class, _elementType.withValueHandler(obj), _valueHandler, _typeHandler, _asStatic);
    }

    public volatile JavaType withStaticTyping()
    {
        return withStaticTyping();
    }

    public CollectionLikeType withStaticTyping()
    {
        if (_asStatic)
        {
            return this;
        } else
        {
            return new CollectionLikeType(_class, _elementType.withStaticTyping(), _valueHandler, _typeHandler, true);
        }
    }

    public volatile JavaType withTypeHandler(Object obj)
    {
        return withTypeHandler(obj);
    }

    public CollectionLikeType withTypeHandler(Object obj)
    {
        return new CollectionLikeType(_class, _elementType, _valueHandler, obj, _asStatic);
    }

    public volatile JavaType withValueHandler(Object obj)
    {
        return withValueHandler(obj);
    }

    public CollectionLikeType withValueHandler(Object obj)
    {
        return new CollectionLikeType(_class, _elementType, obj, _typeHandler, _asStatic);
    }
}
