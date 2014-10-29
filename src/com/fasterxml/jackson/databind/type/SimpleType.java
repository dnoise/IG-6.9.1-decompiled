// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.a.f.a;
import com.fasterxml.jackson.databind.JavaType;
import java.util.Collection;
import java.util.Map;

// Referenced classes of package com.fasterxml.jackson.databind.type:
//            TypeBase

public final class SimpleType extends TypeBase
{

    private static final long serialVersionUID = 0xf4e47f55695bcb98L;
    protected final String _typeNames[];
    protected final JavaType _typeParameters[];

    protected SimpleType(Class class1)
    {
        this(class1, null, null, null, null, false);
    }

    protected SimpleType(Class class1, String as[], JavaType ajavatype[], Object obj, Object obj1, boolean flag)
    {
        super(class1, 0, obj, obj1, flag);
        if (as == null || as.length == 0)
        {
            _typeNames = null;
            _typeParameters = null;
            return;
        } else
        {
            _typeNames = as;
            _typeParameters = ajavatype;
            return;
        }
    }

    public static SimpleType construct(Class class1)
    {
        if (java/util/Map.isAssignableFrom(class1))
        {
            throw new IllegalArgumentException((new StringBuilder("Can not construct SimpleType for a Map (class: ")).append(class1.getName()).append(")").toString());
        }
        if (java/util/Collection.isAssignableFrom(class1))
        {
            throw new IllegalArgumentException((new StringBuilder("Can not construct SimpleType for a Collection (class: ")).append(class1.getName()).append(")").toString());
        }
        if (class1.isArray())
        {
            throw new IllegalArgumentException((new StringBuilder("Can not construct SimpleType for an array (class: ")).append(class1.getName()).append(")").toString());
        } else
        {
            return new SimpleType(class1);
        }
    }

    public static SimpleType constructUnsafe(Class class1)
    {
        return new SimpleType(class1, null, null, null, null, false);
    }

    protected final JavaType _narrow(Class class1)
    {
        return new SimpleType(class1, _typeNames, _typeParameters, _valueHandler, _typeHandler, _asStatic);
    }

    protected final String buildCanonicalName()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(_class.getName());
        if (_typeParameters != null && _typeParameters.length > 0)
        {
            stringbuilder.append('<');
            boolean flag = true;
            JavaType ajavatype[] = _typeParameters;
            int i = ajavatype.length;
            int j = 0;
            while (j < i) 
            {
                JavaType javatype = ajavatype[j];
                if (flag)
                {
                    flag = false;
                } else
                {
                    stringbuilder.append(',');
                }
                stringbuilder.append(javatype.toCanonical());
                j++;
            }
            stringbuilder.append('>');
        }
        return stringbuilder.toString();
    }

    public final volatile a containedType(int i)
    {
        return containedType(i);
    }

    public final JavaType containedType(int i)
    {
        if (i < 0 || _typeParameters == null || i >= _typeParameters.length)
        {
            return null;
        } else
        {
            return _typeParameters[i];
        }
    }

    public final int containedTypeCount()
    {
        if (_typeParameters == null)
        {
            return 0;
        } else
        {
            return _typeParameters.length;
        }
    }

    public final String containedTypeName(int i)
    {
        if (i < 0 || _typeNames == null || i >= _typeNames.length)
        {
            return null;
        } else
        {
            return _typeNames[i];
        }
    }

    public final boolean equals(Object obj)
    {
        if (obj != this) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        if (obj == null)
        {
            return false;
        }
        if (obj.getClass() != getClass())
        {
            return false;
        }
        SimpleType simpletype = (SimpleType)obj;
        if (simpletype._class != _class)
        {
            return false;
        }
        JavaType ajavatype[] = _typeParameters;
        JavaType ajavatype1[] = simpletype._typeParameters;
        if (ajavatype == null)
        {
            if (ajavatype1 != null && ajavatype1.length != 0)
            {
                return false;
            }
        } else
        {
            if (ajavatype1 == null)
            {
                return false;
            }
            if (ajavatype.length != ajavatype1.length)
            {
                return false;
            }
            int i = ajavatype.length;
            int j = 0;
            while (j < i) 
            {
                if (!ajavatype[j].equals(ajavatype1[j]))
                {
                    return false;
                }
                j++;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public final StringBuilder getErasedSignature(StringBuilder stringbuilder)
    {
        return _classSignature(_class, stringbuilder, true);
    }

    public final StringBuilder getGenericSignature(StringBuilder stringbuilder)
    {
        int i = 0;
        _classSignature(_class, stringbuilder, false);
        if (_typeParameters != null)
        {
            stringbuilder.append('<');
            JavaType ajavatype[] = _typeParameters;
            for (int j = ajavatype.length; i < j; i++)
            {
                stringbuilder = ajavatype[i].getGenericSignature(stringbuilder);
            }

            stringbuilder.append('>');
        }
        stringbuilder.append(';');
        return stringbuilder;
    }

    public final boolean isContainerType()
    {
        return false;
    }

    public final JavaType narrowContentsBy(Class class1)
    {
        throw new IllegalArgumentException("Internal error: SimpleType.narrowContentsBy() should never be called");
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(40);
        stringbuilder.append("[simple type, class ").append(buildCanonicalName()).append(']');
        return stringbuilder.toString();
    }

    public final JavaType widenContentsBy(Class class1)
    {
        throw new IllegalArgumentException("Internal error: SimpleType.widenContentsBy() should never be called");
    }

    public final JavaType withContentTypeHandler(Object obj)
    {
        throw new IllegalArgumentException("Simple types have no content types; can not call withContenTypeHandler()");
    }

    public final volatile JavaType withContentValueHandler(Object obj)
    {
        return withContentValueHandler(obj);
    }

    public final SimpleType withContentValueHandler(Object obj)
    {
        throw new IllegalArgumentException("Simple types have no content types; can not call withContenValueHandler()");
    }

    public final volatile JavaType withStaticTyping()
    {
        return withStaticTyping();
    }

    public final SimpleType withStaticTyping()
    {
        if (_asStatic)
        {
            return this;
        } else
        {
            return new SimpleType(_class, _typeNames, _typeParameters, _valueHandler, _typeHandler, _asStatic);
        }
    }

    public final volatile JavaType withTypeHandler(Object obj)
    {
        return withTypeHandler(obj);
    }

    public final SimpleType withTypeHandler(Object obj)
    {
        return new SimpleType(_class, _typeNames, _typeParameters, _valueHandler, obj, _asStatic);
    }

    public final volatile JavaType withValueHandler(Object obj)
    {
        return withValueHandler(obj);
    }

    public final SimpleType withValueHandler(Object obj)
    {
        if (obj == _valueHandler)
        {
            return this;
        } else
        {
            return new SimpleType(_class, _typeNames, _typeParameters, obj, _typeHandler, _asStatic);
        }
    }
}
