// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.a.f.b;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import com.fasterxml.jackson.databind.util.LRUMap;
import java.io.Serializable;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.fasterxml.jackson.databind.type:
//            SimpleType, TypeParser, CollectionType, MapType, 
//            HierarchicType, TypeModifier, ArrayType, ClassKey, 
//            TypeBindings, CollectionLikeType, MapLikeType

public final class TypeFactory
    implements Serializable
{

    protected static final SimpleType CORE_TYPE_BOOL;
    protected static final SimpleType CORE_TYPE_INT;
    protected static final SimpleType CORE_TYPE_LONG;
    protected static final SimpleType CORE_TYPE_STRING = new SimpleType(java/lang/String);
    private static final JavaType NO_TYPES[] = new JavaType[0];
    protected static final TypeFactory instance = new TypeFactory();
    private static final long serialVersionUID = 1L;
    protected transient HierarchicType _cachedArrayListType;
    protected transient HierarchicType _cachedHashMapType;
    protected final TypeModifier _modifiers[];
    protected final TypeParser _parser;
    protected final LRUMap _typeCache;

    private TypeFactory()
    {
        _typeCache = new LRUMap(16, 100);
        _parser = new TypeParser(this);
        _modifiers = null;
    }

    protected TypeFactory(TypeParser typeparser, TypeModifier atypemodifier[])
    {
        _typeCache = new LRUMap(16, 100);
        _parser = typeparser;
        _modifiers = atypemodifier;
    }

    private JavaType _collectionType(Class class1)
    {
        JavaType ajavatype[] = findTypeParameters(class1, java/util/Collection);
        if (ajavatype == null)
        {
            return CollectionType.construct(class1, _unknownType());
        }
        if (ajavatype.length != 1)
        {
            throw new IllegalArgumentException((new StringBuilder("Strange Collection type ")).append(class1.getName()).append(": can not determine type parameters").toString());
        } else
        {
            return CollectionType.construct(class1, ajavatype[0]);
        }
    }

    private JavaType _mapType(Class class1)
    {
        JavaType ajavatype[] = findTypeParameters(class1, java/util/Map);
        if (ajavatype == null)
        {
            return MapType.construct(class1, _unknownType(), _unknownType());
        }
        if (ajavatype.length != 2)
        {
            throw new IllegalArgumentException((new StringBuilder("Strange Map type ")).append(class1.getName()).append(": can not determine type parameters").toString());
        } else
        {
            return MapType.construct(class1, ajavatype[0], ajavatype[1]);
        }
    }

    public static TypeFactory defaultInstance()
    {
        return instance;
    }

    public static Class rawClass(Type type)
    {
        if (type instanceof Class)
        {
            return (Class)type;
        } else
        {
            return defaultInstance().constructType(type).getRawClass();
        }
    }

    public static JavaType unknownType()
    {
        return defaultInstance()._unknownType();
    }

    protected final HierarchicType _arrayListSuperInterfaceChain(HierarchicType hierarchictype)
    {
        this;
        JVM INSTR monitorenter ;
        if (_cachedArrayListType == null)
        {
            HierarchicType hierarchictype2 = hierarchictype.deepCloneWithoutSubtype();
            _doFindSuperInterfaceChain(hierarchictype2, java/util/List);
            _cachedArrayListType = hierarchictype2.getSuperType();
        }
        HierarchicType hierarchictype1 = _cachedArrayListType.deepCloneWithoutSubtype();
        hierarchictype.setSuperType(hierarchictype1);
        hierarchictype1.setSubType(hierarchictype);
        this;
        JVM INSTR monitorexit ;
        return hierarchictype;
        Exception exception;
        exception;
        throw exception;
    }

    protected final JavaType _constructType(Type type, TypeBindings typebindings)
    {
        if (!(type instanceof Class)) goto _L2; else goto _L1
_L1:
        JavaType javatype = _fromClass((Class)type, typebindings);
_L4:
        if (_modifiers != null && !javatype.isContainerType())
        {
            TypeModifier atypemodifier[] = _modifiers;
            int i = atypemodifier.length;
            for (int j = 0; j < i;)
            {
                JavaType javatype1 = atypemodifier[j].modifyType(javatype, type, typebindings, this);
                j++;
                javatype = javatype1;
            }

        }
        break MISSING_BLOCK_LABEL_219;
_L2:
        if (type instanceof ParameterizedType)
        {
            javatype = _fromParamType((ParameterizedType)type, typebindings);
            continue; /* Loop/switch isn't completed */
        }
        if (type instanceof JavaType)
        {
            return (JavaType)type;
        }
        if (type instanceof GenericArrayType)
        {
            javatype = _fromArrayType((GenericArrayType)type, typebindings);
            continue; /* Loop/switch isn't completed */
        }
        if (type instanceof TypeVariable)
        {
            javatype = _fromVariable((TypeVariable)type, typebindings);
            continue; /* Loop/switch isn't completed */
        }
        if (!(type instanceof WildcardType))
        {
            break; /* Loop/switch isn't completed */
        }
        javatype = _fromWildcard((WildcardType)type, typebindings);
        if (true) goto _L4; else goto _L3
_L3:
        StringBuilder stringbuilder = new StringBuilder("Unrecognized Type: ");
        String s;
        if (type == null)
        {
            s = "[null]";
        } else
        {
            s = type.toString();
        }
        throw new IllegalArgumentException(stringbuilder.append(s).toString());
        return javatype;
    }

    protected final HierarchicType _doFindSuperInterfaceChain(HierarchicType hierarchictype, Class class1)
    {
        Class class2 = hierarchictype.getRawClass();
        Type atype[] = class2.getGenericInterfaces();
        if (atype != null)
        {
            int i = atype.length;
            for (int j = 0; j < i; j++)
            {
                HierarchicType hierarchictype2 = _findSuperInterfaceChain(atype[j], class1);
                if (hierarchictype2 != null)
                {
                    hierarchictype2.setSubType(hierarchictype);
                    hierarchictype.setSuperType(hierarchictype2);
                    return hierarchictype;
                }
            }

        }
        Type type = class2.getGenericSuperclass();
        if (type != null)
        {
            HierarchicType hierarchictype1 = _findSuperInterfaceChain(type, class1);
            if (hierarchictype1 != null)
            {
                hierarchictype1.setSubType(hierarchictype);
                hierarchictype.setSuperType(hierarchictype1);
                return hierarchictype;
            }
        }
        return null;
    }

    protected final HierarchicType _findSuperClassChain(Type type, Class class1)
    {
        HierarchicType hierarchictype = new HierarchicType(type);
        Class class2 = hierarchictype.getRawClass();
        if (class2 == class1)
        {
            return hierarchictype;
        }
        Type type1 = class2.getGenericSuperclass();
        if (type1 != null)
        {
            HierarchicType hierarchictype1 = _findSuperClassChain(type1, class1);
            if (hierarchictype1 != null)
            {
                hierarchictype1.setSubType(hierarchictype);
                hierarchictype.setSuperType(hierarchictype1);
                return hierarchictype;
            }
        }
        return null;
    }

    protected final HierarchicType _findSuperInterfaceChain(Type type, Class class1)
    {
        HierarchicType hierarchictype = new HierarchicType(type);
        Class class2 = hierarchictype.getRawClass();
        if (class2 == class1)
        {
            return new HierarchicType(type);
        }
        if (class2 == java/util/HashMap && class1 == java/util/Map)
        {
            return _hashMapSuperInterfaceChain(hierarchictype);
        }
        if (class2 == java/util/ArrayList && class1 == java/util/List)
        {
            return _arrayListSuperInterfaceChain(hierarchictype);
        } else
        {
            return _doFindSuperInterfaceChain(hierarchictype, class1);
        }
    }

    protected final HierarchicType _findSuperTypeChain(Class class1, Class class2)
    {
        if (class2.isInterface())
        {
            return _findSuperInterfaceChain(class1, class2);
        } else
        {
            return _findSuperClassChain(class1, class2);
        }
    }

    protected final JavaType _fromArrayType(GenericArrayType genericarraytype, TypeBindings typebindings)
    {
        return ArrayType.construct(_constructType(genericarraytype.getGenericComponentType(), typebindings), null, null);
    }

    protected final JavaType _fromClass(Class class1, TypeBindings typebindings)
    {
        Object obj;
        if (class1 == java/lang/String)
        {
            obj = CORE_TYPE_STRING;
        } else
        {
            if (class1 == Boolean.TYPE)
            {
                return CORE_TYPE_BOOL;
            }
            if (class1 == Integer.TYPE)
            {
                return CORE_TYPE_INT;
            }
            if (class1 == Long.TYPE)
            {
                return CORE_TYPE_LONG;
            }
            ClassKey classkey = new ClassKey(class1);
            synchronized (_typeCache)
            {
                obj = (JavaType)_typeCache.get(classkey);
            }
            if (obj == null)
            {
                Object obj1;
                if (class1.isArray())
                {
                    obj1 = ArrayType.construct(_constructType(class1.getComponentType(), null), null, null);
                } else
                if (class1.isEnum())
                {
                    obj1 = new SimpleType(class1);
                } else
                if (java/util/Map.isAssignableFrom(class1))
                {
                    obj1 = _mapType(class1);
                } else
                if (java/util/Collection.isAssignableFrom(class1))
                {
                    obj1 = _collectionType(class1);
                } else
                {
                    obj1 = new SimpleType(class1);
                }
                synchronized (_typeCache)
                {
                    _typeCache.put(classkey, obj1);
                }
                return ((JavaType) (obj1));
            }
        }
        return ((JavaType) (obj));
    }

    protected final JavaType _fromParamType(ParameterizedType parameterizedtype, TypeBindings typebindings)
    {
        Class class1 = (Class)parameterizedtype.getRawType();
        Type atype[] = parameterizedtype.getActualTypeArguments();
        int i;
        JavaType ajavatype[];
        if (atype == null)
        {
            i = 0;
        } else
        {
            i = atype.length;
        }
        if (i == 0)
        {
            ajavatype = NO_TYPES;
        } else
        {
            ajavatype = new JavaType[i];
            int j = 0;
            while (j < i) 
            {
                ajavatype[j] = _constructType(atype[j], typebindings);
                j++;
            }
        }
        if (java/util/Map.isAssignableFrom(class1))
        {
            JavaType ajavatype2[] = findTypeParameters(constructSimpleType(class1, ajavatype), java/util/Map);
            if (ajavatype2.length != 2)
            {
                throw new IllegalArgumentException((new StringBuilder("Could not find 2 type parameters for Map class ")).append(class1.getName()).append(" (found ").append(ajavatype2.length).append(")").toString());
            } else
            {
                return MapType.construct(class1, ajavatype2[0], ajavatype2[1]);
            }
        }
        if (java/util/Collection.isAssignableFrom(class1))
        {
            JavaType ajavatype1[] = findTypeParameters(constructSimpleType(class1, ajavatype), java/util/Collection);
            if (ajavatype1.length != 1)
            {
                throw new IllegalArgumentException((new StringBuilder("Could not find 1 type parameter for Collection class ")).append(class1.getName()).append(" (found ").append(ajavatype1.length).append(")").toString());
            } else
            {
                return CollectionType.construct(class1, ajavatype1[0]);
            }
        }
        if (i == 0)
        {
            return new SimpleType(class1);
        } else
        {
            return constructSimpleType(class1, ajavatype);
        }
    }

    protected final JavaType _fromParameterizedClass(Class class1, List list)
    {
        if (class1.isArray())
        {
            return ArrayType.construct(_constructType(class1.getComponentType(), null), null, null);
        }
        if (class1.isEnum())
        {
            return new SimpleType(class1);
        }
        if (java/util/Map.isAssignableFrom(class1))
        {
            if (list.size() > 0)
            {
                JavaType javatype = (JavaType)list.get(0);
                JavaType javatype1;
                if (list.size() >= 2)
                {
                    javatype1 = (JavaType)list.get(1);
                } else
                {
                    javatype1 = _unknownType();
                }
                return MapType.construct(class1, javatype, javatype1);
            } else
            {
                return _mapType(class1);
            }
        }
        if (java/util/Collection.isAssignableFrom(class1))
        {
            if (list.size() > 0)
            {
                return CollectionType.construct(class1, (JavaType)list.get(0));
            } else
            {
                return _collectionType(class1);
            }
        }
        if (list.size() == 0)
        {
            return new SimpleType(class1);
        } else
        {
            return constructSimpleType(class1, (JavaType[])list.toArray(new JavaType[list.size()]));
        }
    }

    protected final JavaType _fromVariable(TypeVariable typevariable, TypeBindings typebindings)
    {
        JavaType javatype;
        if (typebindings == null)
        {
            javatype = _unknownType();
        } else
        {
            String s = typevariable.getName();
            javatype = typebindings.findType(s);
            if (javatype == null)
            {
                Type atype[] = typevariable.getBounds();
                typebindings._addPlaceholder(s);
                return _constructType(atype[0], typebindings);
            }
        }
        return javatype;
    }

    protected final JavaType _fromWildcard(WildcardType wildcardtype, TypeBindings typebindings)
    {
        return _constructType(wildcardtype.getUpperBounds()[0], typebindings);
    }

    protected final HierarchicType _hashMapSuperInterfaceChain(HierarchicType hierarchictype)
    {
        this;
        JVM INSTR monitorenter ;
        if (_cachedHashMapType == null)
        {
            HierarchicType hierarchictype2 = hierarchictype.deepCloneWithoutSubtype();
            _doFindSuperInterfaceChain(hierarchictype2, java/util/Map);
            _cachedHashMapType = hierarchictype2.getSuperType();
        }
        HierarchicType hierarchictype1 = _cachedHashMapType.deepCloneWithoutSubtype();
        hierarchictype.setSuperType(hierarchictype1);
        hierarchictype1.setSubType(hierarchictype);
        this;
        JVM INSTR monitorexit ;
        return hierarchictype;
        Exception exception;
        exception;
        throw exception;
    }

    protected final JavaType _resolveVariableViaSubTypes(HierarchicType hierarchictype, String s, TypeBindings typebindings)
    {
        if (hierarchictype != null && hierarchictype.isGeneric())
        {
            TypeVariable atypevariable[] = hierarchictype.getRawClass().getTypeParameters();
            int i = 0;
            for (int j = atypevariable.length; i < j; i++)
            {
                if (s.equals(atypevariable[i].getName()))
                {
                    Type type = hierarchictype.asGeneric().getActualTypeArguments()[i];
                    if (type instanceof TypeVariable)
                    {
                        return _resolveVariableViaSubTypes(hierarchictype.getSubType(), ((TypeVariable)type).getName(), typebindings);
                    } else
                    {
                        return _constructType(type, typebindings);
                    }
                }
            }

        }
        return _unknownType();
    }

    protected final JavaType _unknownType()
    {
        return new SimpleType(java/lang/Object);
    }

    public final ArrayType constructArrayType(JavaType javatype)
    {
        return ArrayType.construct(javatype, null, null);
    }

    public final ArrayType constructArrayType(Class class1)
    {
        return ArrayType.construct(_constructType(class1, null), null, null);
    }

    public final CollectionLikeType constructCollectionLikeType(Class class1, JavaType javatype)
    {
        return CollectionLikeType.construct(class1, javatype);
    }

    public final CollectionLikeType constructCollectionLikeType(Class class1, Class class2)
    {
        return CollectionLikeType.construct(class1, constructType(class2));
    }

    public final CollectionType constructCollectionType(Class class1, JavaType javatype)
    {
        return CollectionType.construct(class1, javatype);
    }

    public final CollectionType constructCollectionType(Class class1, Class class2)
    {
        return CollectionType.construct(class1, constructType(class2));
    }

    public final JavaType constructFromCanonical(String s)
    {
        return _parser.parse(s);
    }

    public final MapLikeType constructMapLikeType(Class class1, JavaType javatype, JavaType javatype1)
    {
        return MapLikeType.construct(class1, javatype, javatype1);
    }

    public final MapLikeType constructMapLikeType(Class class1, Class class2, Class class3)
    {
        return MapType.construct(class1, constructType(class2), constructType(class3));
    }

    public final MapType constructMapType(Class class1, JavaType javatype, JavaType javatype1)
    {
        return MapType.construct(class1, javatype, javatype1);
    }

    public final MapType constructMapType(Class class1, Class class2, Class class3)
    {
        return MapType.construct(class1, constructType(class2), constructType(class3));
    }

    public final transient JavaType constructParametricType(Class class1, JavaType ajavatype[])
    {
        if (class1.isArray())
        {
            if (ajavatype.length != 1)
            {
                throw new IllegalArgumentException((new StringBuilder("Need exactly 1 parameter type for arrays (")).append(class1.getName()).append(")").toString());
            } else
            {
                return constructArrayType(ajavatype[0]);
            }
        }
        if (java/util/Map.isAssignableFrom(class1))
        {
            if (ajavatype.length != 2)
            {
                throw new IllegalArgumentException((new StringBuilder("Need exactly 2 parameter types for Map types (")).append(class1.getName()).append(")").toString());
            } else
            {
                return constructMapType(class1, ajavatype[0], ajavatype[1]);
            }
        }
        if (java/util/Collection.isAssignableFrom(class1))
        {
            if (ajavatype.length != 1)
            {
                throw new IllegalArgumentException((new StringBuilder("Need exactly 1 parameter type for Collection types (")).append(class1.getName()).append(")").toString());
            } else
            {
                return constructCollectionType(class1, ajavatype[0]);
            }
        } else
        {
            return constructSimpleType(class1, ajavatype);
        }
    }

    public final transient JavaType constructParametricType(Class class1, Class aclass[])
    {
        int i = aclass.length;
        JavaType ajavatype[] = new JavaType[i];
        for (int j = 0; j < i; j++)
        {
            ajavatype[j] = _fromClass(aclass[j], null);
        }

        return constructParametricType(class1, ajavatype);
    }

    public final CollectionLikeType constructRawCollectionLikeType(Class class1)
    {
        return CollectionLikeType.construct(class1, unknownType());
    }

    public final CollectionType constructRawCollectionType(Class class1)
    {
        return CollectionType.construct(class1, unknownType());
    }

    public final MapLikeType constructRawMapLikeType(Class class1)
    {
        return MapLikeType.construct(class1, unknownType(), unknownType());
    }

    public final MapType constructRawMapType(Class class1)
    {
        return MapType.construct(class1, unknownType(), unknownType());
    }

    public final JavaType constructSimpleType(Class class1, JavaType ajavatype[])
    {
        TypeVariable atypevariable[] = class1.getTypeParameters();
        if (atypevariable.length != ajavatype.length)
        {
            throw new IllegalArgumentException((new StringBuilder("Parameter type mismatch for ")).append(class1.getName()).append(": expected ").append(atypevariable.length).append(" parameters, was given ").append(ajavatype.length).toString());
        }
        String as[] = new String[atypevariable.length];
        int i = atypevariable.length;
        for (int j = 0; j < i; j++)
        {
            as[j] = atypevariable[j].getName();
        }

        return new SimpleType(class1, as, ajavatype, null, null, false);
    }

    public final JavaType constructSpecializedType(JavaType javatype, Class class1)
    {
        if ((javatype instanceof SimpleType) && (class1.isArray() || java/util/Map.isAssignableFrom(class1) || java/util/Collection.isAssignableFrom(class1)))
        {
            if (!javatype.getRawClass().isAssignableFrom(class1))
            {
                throw new IllegalArgumentException((new StringBuilder("Class ")).append(class1.getClass().getName()).append(" not subtype of ").append(javatype).toString());
            }
            JavaType javatype1 = _fromClass(class1, new TypeBindings(this, javatype.getRawClass()));
            Object obj = javatype.getValueHandler();
            if (obj != null)
            {
                javatype1 = javatype1.withValueHandler(obj);
            }
            Object obj1 = javatype.getTypeHandler();
            if (obj1 != null)
            {
                javatype1 = javatype1.withTypeHandler(obj1);
            }
            return javatype1;
        } else
        {
            return javatype.narrowBy(class1);
        }
    }

    public final JavaType constructType(b b1)
    {
        return _constructType(b1.a(), null);
    }

    public final JavaType constructType(Type type)
    {
        return _constructType(type, null);
    }

    public final JavaType constructType(Type type, JavaType javatype)
    {
        TypeBindings typebindings;
        if (javatype == null)
        {
            typebindings = null;
        } else
        {
            typebindings = new TypeBindings(this, javatype);
        }
        return _constructType(type, typebindings);
    }

    public final JavaType constructType(Type type, TypeBindings typebindings)
    {
        return _constructType(type, typebindings);
    }

    public final JavaType constructType(Type type, Class class1)
    {
        TypeBindings typebindings;
        if (class1 == null)
        {
            typebindings = null;
        } else
        {
            typebindings = new TypeBindings(this, class1);
        }
        return _constructType(type, typebindings);
    }

    public final JavaType[] findTypeParameters(JavaType javatype, Class class1)
    {
        Class class2 = javatype.getRawClass();
        if (class2 == class1)
        {
            int i = javatype.containedTypeCount();
            JavaType ajavatype[];
            if (i == 0)
            {
                ajavatype = null;
            } else
            {
                ajavatype = new JavaType[i];
                int j = 0;
                while (j < i) 
                {
                    ajavatype[j] = javatype.containedType(j);
                    j++;
                }
            }
            return ajavatype;
        } else
        {
            return findTypeParameters(class2, class1, new TypeBindings(this, javatype));
        }
    }

    public final JavaType[] findTypeParameters(Class class1, Class class2)
    {
        return findTypeParameters(class1, class2, new TypeBindings(this, class1));
    }

    public final JavaType[] findTypeParameters(Class class1, Class class2, TypeBindings typebindings)
    {
        HierarchicType hierarchictype = _findSuperTypeChain(class1, class2);
        if (hierarchictype == null)
        {
            throw new IllegalArgumentException((new StringBuilder("Class ")).append(class1.getName()).append(" is not a subtype of ").append(class2.getName()).toString());
        }
        TypeBindings typebindings1;
        TypeBindings typebindings2;
        for (typebindings1 = typebindings; hierarchictype.getSuperType() != null; typebindings1 = typebindings2)
        {
            hierarchictype = hierarchictype.getSuperType();
            Class class3 = hierarchictype.getRawClass();
            typebindings2 = new TypeBindings(this, class3);
            if (!hierarchictype.isGeneric())
            {
                continue;
            }
            Type atype[] = hierarchictype.asGeneric().getActualTypeArguments();
            TypeVariable atypevariable[] = class3.getTypeParameters();
            int i = atype.length;
            for (int j = 0; j < i; j++)
            {
                typebindings2.addBinding(atypevariable[j].getName(), _constructType(atype[j], typebindings1));
            }

        }

        if (!hierarchictype.isGeneric())
        {
            return null;
        } else
        {
            return typebindings1.typesAsArray();
        }
    }

    public final JavaType moreSpecificType(JavaType javatype, JavaType javatype1)
    {
        if (javatype == null)
        {
            javatype = javatype1;
        } else
        if (javatype1 != null)
        {
            Class class1 = javatype.getRawClass();
            Class class2 = javatype1.getRawClass();
            if (class1 != class2 && class1.isAssignableFrom(class2))
            {
                return javatype1;
            }
        }
        return javatype;
    }

    public final JavaType uncheckedSimpleType(Class class1)
    {
        return new SimpleType(class1);
    }

    public final TypeFactory withModifier(TypeModifier typemodifier)
    {
        if (_modifiers == null)
        {
            return new TypeFactory(_parser, new TypeModifier[] {
                typemodifier
            });
        } else
        {
            return new TypeFactory(_parser, (TypeModifier[])ArrayBuilders.insertInListNoDup(_modifiers, typemodifier));
        }
    }

    static 
    {
        CORE_TYPE_BOOL = new SimpleType(Boolean.TYPE);
        CORE_TYPE_INT = new SimpleType(Integer.TYPE);
        CORE_TYPE_LONG = new SimpleType(Long.TYPE);
    }
}
