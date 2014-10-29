// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.a.f.a;
import com.fasterxml.jackson.databind.JavaType;
import java.util.Map;

// Referenced classes of package com.fasterxml.jackson.databind.type:
//            TypeBase

public class MapLikeType extends TypeBase
{

    private static final long serialVersionUID = 0x5c62b5eee45d462L;
    protected final JavaType _keyType;
    protected final JavaType _valueType;

    protected MapLikeType(Class class1, JavaType javatype, JavaType javatype1, Object obj, Object obj1, boolean flag)
    {
        super(class1, javatype.hashCode() ^ javatype1.hashCode(), obj, obj1, flag);
        _keyType = javatype;
        _valueType = javatype1;
    }

    public static MapLikeType construct(Class class1, JavaType javatype, JavaType javatype1)
    {
        return new MapLikeType(class1, javatype, javatype1, null, null, false);
    }

    protected JavaType _narrow(Class class1)
    {
        return new MapLikeType(class1, _keyType, _valueType, _valueHandler, _typeHandler, _asStatic);
    }

    protected String buildCanonicalName()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(_class.getName());
        if (_keyType != null)
        {
            stringbuilder.append('<');
            stringbuilder.append(_keyType.toCanonical());
            stringbuilder.append(',');
            stringbuilder.append(_valueType.toCanonical());
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
            return _keyType;
        }
        if (i == 1)
        {
            return _valueType;
        } else
        {
            return null;
        }
    }

    public int containedTypeCount()
    {
        return 2;
    }

    public String containedTypeName(int i)
    {
        if (i == 0)
        {
            return "K";
        }
        if (i == 1)
        {
            return "V";
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
            MapLikeType mapliketype = (MapLikeType)obj;
            if (_class != mapliketype._class || !_keyType.equals(mapliketype._keyType) || !_valueType.equals(mapliketype._valueType))
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
        return _valueType;
    }

    public StringBuilder getErasedSignature(StringBuilder stringbuilder)
    {
        return _classSignature(_class, stringbuilder, true);
    }

    public StringBuilder getGenericSignature(StringBuilder stringbuilder)
    {
        _classSignature(_class, stringbuilder, false);
        stringbuilder.append('<');
        _keyType.getGenericSignature(stringbuilder);
        _valueType.getGenericSignature(stringbuilder);
        stringbuilder.append(">;");
        return stringbuilder;
    }

    public volatile a getKeyType()
    {
        return getKeyType();
    }

    public JavaType getKeyType()
    {
        return _keyType;
    }

    public boolean isContainerType()
    {
        return true;
    }

    public boolean isMapLikeType()
    {
        return true;
    }

    public boolean isTrueMapType()
    {
        return java/util/Map.isAssignableFrom(_class);
    }

    public JavaType narrowContentsBy(Class class1)
    {
        if (class1 == _valueType.getRawClass())
        {
            return this;
        } else
        {
            return new MapLikeType(_class, _keyType, _valueType.narrowBy(class1), _valueHandler, _typeHandler, _asStatic);
        }
    }

    public JavaType narrowKey(Class class1)
    {
        if (class1 == _keyType.getRawClass())
        {
            return this;
        } else
        {
            return new MapLikeType(_class, _keyType.narrowBy(class1), _valueType, _valueHandler, _typeHandler, _asStatic);
        }
    }

    public String toString()
    {
        return (new StringBuilder("[map-like type; class ")).append(_class.getName()).append(", ").append(_keyType).append(" -> ").append(_valueType).append("]").toString();
    }

    public JavaType widenContentsBy(Class class1)
    {
        if (class1 == _valueType.getRawClass())
        {
            return this;
        } else
        {
            return new MapLikeType(_class, _keyType, _valueType.widenBy(class1), _valueHandler, _typeHandler, _asStatic);
        }
    }

    public JavaType widenKey(Class class1)
    {
        if (class1 == _keyType.getRawClass())
        {
            return this;
        } else
        {
            return new MapLikeType(_class, _keyType.widenBy(class1), _valueType, _valueHandler, _typeHandler, _asStatic);
        }
    }

    public volatile JavaType withContentTypeHandler(Object obj)
    {
        return withContentTypeHandler(obj);
    }

    public MapLikeType withContentTypeHandler(Object obj)
    {
        return new MapLikeType(_class, _keyType, _valueType.withTypeHandler(obj), _valueHandler, _typeHandler, _asStatic);
    }

    public volatile JavaType withContentValueHandler(Object obj)
    {
        return withContentValueHandler(obj);
    }

    public MapLikeType withContentValueHandler(Object obj)
    {
        return new MapLikeType(_class, _keyType, _valueType.withValueHandler(obj), _valueHandler, _typeHandler, _asStatic);
    }

    public MapLikeType withKeyTypeHandler(Object obj)
    {
        return new MapLikeType(_class, _keyType.withTypeHandler(obj), _valueType, _valueHandler, _typeHandler, _asStatic);
    }

    public MapLikeType withKeyValueHandler(Object obj)
    {
        return new MapLikeType(_class, _keyType.withValueHandler(obj), _valueType, _valueHandler, _typeHandler, _asStatic);
    }

    public volatile JavaType withStaticTyping()
    {
        return withStaticTyping();
    }

    public MapLikeType withStaticTyping()
    {
        if (_asStatic)
        {
            return this;
        } else
        {
            return new MapLikeType(_class, _keyType, _valueType.withStaticTyping(), _valueHandler, _typeHandler, true);
        }
    }

    public volatile JavaType withTypeHandler(Object obj)
    {
        return withTypeHandler(obj);
    }

    public MapLikeType withTypeHandler(Object obj)
    {
        return new MapLikeType(_class, _keyType, _valueType, _valueHandler, obj, _asStatic);
    }

    public volatile JavaType withValueHandler(Object obj)
    {
        return withValueHandler(obj);
    }

    public MapLikeType withValueHandler(Object obj)
    {
        return new MapLikeType(_class, _keyType, _valueType, obj, _typeHandler, _asStatic);
    }
}
