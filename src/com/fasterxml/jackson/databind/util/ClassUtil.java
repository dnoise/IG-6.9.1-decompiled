// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class ClassUtil
{

    public ClassUtil()
    {
    }

    private static void _addSuperTypes(Class class1, Class class2, Collection collection, boolean flag)
    {
        if (class1 != class2 && class1 != null && class1 != java/lang/Object) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (!flag)
        {
            break; /* Loop/switch isn't completed */
        }
        if (collection.contains(class1))
        {
            continue; /* Loop/switch isn't completed */
        }
        collection.add(class1);
        break; /* Loop/switch isn't completed */
        if (true) goto _L1; else goto _L3
_L3:
        Class aclass[] = class1.getInterfaces();
        int i = aclass.length;
        for (int j = 0; j < i; j++)
        {
            _addSuperTypes(aclass[j], class2, collection, true);
        }

        _addSuperTypes(class1.getSuperclass(), class2, collection, true);
        return;
    }

    public static String canBeABeanType(Class class1)
    {
        if (class1.isAnnotation())
        {
            return "annotation";
        }
        if (class1.isArray())
        {
            return "array";
        }
        if (class1.isEnum())
        {
            return "enum";
        }
        if (class1.isPrimitive())
        {
            return "primitive";
        } else
        {
            return null;
        }
    }

    public static void checkAndFixAccess(Member member)
    {
        AccessibleObject accessibleobject = (AccessibleObject)member;
        accessibleobject.setAccessible(true);
_L1:
        return;
        SecurityException securityexception;
        securityexception;
        if (!accessibleobject.isAccessible())
        {
            Class class1 = member.getDeclaringClass();
            throw new IllegalArgumentException((new StringBuilder("Can not access ")).append(member).append(" (from class ").append(class1.getName()).append("; failed to set access: ").append(securityexception.getMessage()).toString());
        }
          goto _L1
    }

    public static Object createInstance(Class class1, boolean flag)
    {
        Constructor constructor = findConstructor(class1, flag);
        if (constructor == null)
        {
            throw new IllegalArgumentException((new StringBuilder("Class ")).append(class1.getName()).append(" has no default (no arg) constructor").toString());
        }
        Object obj;
        try
        {
            obj = constructor.newInstance(new Object[0]);
        }
        catch (Exception exception)
        {
            unwrapAndThrowAsIAE(exception, (new StringBuilder("Failed to instantiate class ")).append(class1.getName()).append(", problem: ").append(exception.getMessage()).toString());
            return null;
        }
        return obj;
    }

    public static Object defaultValue(Class class1)
    {
        if (class1 == Integer.TYPE)
        {
            return Integer.valueOf(0);
        }
        if (class1 == Long.TYPE)
        {
            return Long.valueOf(0L);
        }
        if (class1 == Boolean.TYPE)
        {
            return Boolean.FALSE;
        }
        if (class1 == Double.TYPE)
        {
            return Double.valueOf(0.0D);
        }
        if (class1 == Float.TYPE)
        {
            return Float.valueOf(0.0F);
        }
        if (class1 == Byte.TYPE)
        {
            return Byte.valueOf((byte)0);
        }
        if (class1 == Short.TYPE)
        {
            return Short.valueOf((short)0);
        }
        if (class1 == Character.TYPE)
        {
            return Character.valueOf('\0');
        } else
        {
            throw new IllegalArgumentException((new StringBuilder("Class ")).append(class1.getName()).append(" is not a primitive type").toString());
        }
    }

    public static Class findClass(String s)
    {
        ClassLoader classloader;
        Throwable throwable;
        if (s.indexOf('.') < 0)
        {
            if ("int".equals(s))
            {
                return Integer.TYPE;
            }
            if ("long".equals(s))
            {
                return Long.TYPE;
            }
            if ("float".equals(s))
            {
                return Float.TYPE;
            }
            if ("double".equals(s))
            {
                return Double.TYPE;
            }
            if ("boolean".equals(s))
            {
                return Boolean.TYPE;
            }
            if ("byte".equals(s))
            {
                return Byte.TYPE;
            }
            if ("char".equals(s))
            {
                return Character.TYPE;
            }
            if ("short".equals(s))
            {
                return Short.TYPE;
            }
            if ("void".equals(s))
            {
                return Void.TYPE;
            }
        }
        classloader = Thread.currentThread().getContextClassLoader();
        throwable = null;
        if (classloader == null)
        {
            break MISSING_BLOCK_LABEL_158;
        }
        Class class2 = Class.forName(s, true, classloader);
        return class2;
        Exception exception1;
        exception1;
        throwable = getRootCause(exception1);
        Class class1;
        try
        {
            class1 = Class.forName(s);
        }
        catch (Exception exception)
        {
            if (throwable == null)
            {
                throwable = getRootCause(exception);
            }
            if (throwable instanceof RuntimeException)
            {
                throw (RuntimeException)throwable;
            } else
            {
                throw new ClassNotFoundException(throwable.getMessage(), throwable);
            }
        }
        return class1;
    }

    public static Constructor findConstructor(Class class1, boolean flag)
    {
        Constructor constructor = class1.getDeclaredConstructor(new Class[0]);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_22;
        }
        checkAndFixAccess(constructor);
        return constructor;
        if (!Modifier.isPublic(constructor.getModifiers()))
        {
            throw new IllegalArgumentException((new StringBuilder("Default constructor for ")).append(class1.getName()).append(" is not accessible (non-public?): not allowed to try modify access via Reflection: can not instantiate type").toString());
        }
          goto _L1
        NoSuchMethodException nosuchmethodexception;
        nosuchmethodexception;
_L2:
        return null;
        Exception exception;
        exception;
        unwrapAndThrowAsIAE(exception, (new StringBuilder("Failed to find default constructor of class ")).append(class1.getName()).append(", problem: ").append(exception.getMessage()).toString());
        if (true) goto _L2; else goto _L1
_L1:
        return constructor;
    }

    public static Class findEnumType(Class class1)
    {
        if (class1.getSuperclass() != java/lang/Enum)
        {
            class1 = class1.getSuperclass();
        }
        return class1;
    }

    public static Class findEnumType(Enum enum)
    {
        Class class1 = enum.getClass();
        if (class1.getSuperclass() != java/lang/Enum)
        {
            class1 = class1.getSuperclass();
        }
        return class1;
    }

    public static Class findEnumType(EnumMap enummap)
    {
        if (!enummap.isEmpty())
        {
            return findEnumType((Enum)enummap.keySet().iterator().next());
        } else
        {
            return EnumTypeLocator.instance.enumTypeFor(enummap);
        }
    }

    public static Class findEnumType(EnumSet enumset)
    {
        if (!enumset.isEmpty())
        {
            return findEnumType((Enum)enumset.iterator().next());
        } else
        {
            return EnumTypeLocator.instance.enumTypeFor(enumset);
        }
    }

    public static List findSuperTypes(Class class1, Class class2)
    {
        return findSuperTypes(class1, class2, ((List) (new ArrayList(8))));
    }

    public static List findSuperTypes(Class class1, Class class2, List list)
    {
        _addSuperTypes(class1, class2, list, false);
        return list;
    }

    public static String getClassDescription(Object obj)
    {
        if (obj == null)
        {
            return "unknown";
        }
        Class class1;
        if (obj instanceof Class)
        {
            class1 = (Class)obj;
        } else
        {
            class1 = obj.getClass();
        }
        return class1.getName();
    }

    public static Class getOuterClass(Class class1)
    {
        if (class1.getEnclosingMethod() != null)
        {
            return null;
        }
        Class class2;
        if (Modifier.isStatic(class1.getModifiers()))
        {
            break MISSING_BLOCK_LABEL_30;
        }
        class2 = class1.getEnclosingClass();
        return class2;
        NullPointerException nullpointerexception;
        nullpointerexception;
        return null;
        SecurityException securityexception;
        securityexception;
        return null;
    }

    public static Throwable getRootCause(Throwable throwable)
    {
        for (; throwable.getCause() != null; throwable = throwable.getCause()) { }
        return throwable;
    }

    public static boolean hasGetterSignature(Method method)
    {
        Class aclass[];
        if (!Modifier.isStatic(method.getModifiers()))
        {
            if (((aclass = method.getParameterTypes()) == null || aclass.length == 0) && Void.TYPE != method.getReturnType())
            {
                return true;
            }
        }
        return false;
    }

    public static boolean isCollectionMapOrArray(Class class1)
    {
        while (class1.isArray() || java/util/Collection.isAssignableFrom(class1) || java/util/Map.isAssignableFrom(class1)) 
        {
            return true;
        }
        return false;
    }

    public static boolean isConcrete(Class class1)
    {
        return (0x600 & class1.getModifiers()) == 0;
    }

    public static boolean isConcrete(Member member)
    {
        return (0x600 & member.getModifiers()) == 0;
    }

    public static boolean isJacksonStdImpl(Class class1)
    {
        return class1.getAnnotation(com/fasterxml/jackson/databind/annotation/JacksonStdImpl) != null;
    }

    public static boolean isJacksonStdImpl(Object obj)
    {
        return obj != null && isJacksonStdImpl(obj.getClass());
    }

    public static String isLocalType(Class class1, boolean flag)
    {
        if (class1.getEnclosingMethod() != null)
        {
            return "local/anonymous";
        }
        if (flag)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        if (class1.getEnclosingClass() != null && !Modifier.isStatic(class1.getModifiers()))
        {
            return "non-static member class";
        }
        break MISSING_BLOCK_LABEL_37;
        NullPointerException nullpointerexception;
        nullpointerexception;
_L2:
        return null;
        SecurityException securityexception;
        securityexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static boolean isProxyType(Class class1)
    {
        String s = class1.getName();
        return s.startsWith("net.sf.cglib.proxy.") || s.startsWith("org.hibernate.proxy.");
    }

    public static void throwAsIAE(Throwable throwable)
    {
        throwAsIAE(throwable, throwable.getMessage());
    }

    public static void throwAsIAE(Throwable throwable, String s)
    {
        if (throwable instanceof RuntimeException)
        {
            throw (RuntimeException)throwable;
        }
        if (throwable instanceof Error)
        {
            throw (Error)throwable;
        } else
        {
            throw new IllegalArgumentException(s, throwable);
        }
    }

    public static void throwRootCause(Throwable throwable)
    {
        Throwable throwable1 = getRootCause(throwable);
        if (throwable1 instanceof Exception)
        {
            throw (Exception)throwable1;
        } else
        {
            throw (Error)throwable1;
        }
    }

    public static void unwrapAndThrowAsIAE(Throwable throwable)
    {
        throwAsIAE(getRootCause(throwable));
    }

    public static void unwrapAndThrowAsIAE(Throwable throwable, String s)
    {
        throwAsIAE(getRootCause(throwable), s);
    }

    public static Class wrapperType(Class class1)
    {
        if (class1 == Integer.TYPE)
        {
            return java/lang/Integer;
        }
        if (class1 == Long.TYPE)
        {
            return java/lang/Long;
        }
        if (class1 == Boolean.TYPE)
        {
            return java/lang/Boolean;
        }
        if (class1 == Double.TYPE)
        {
            return java/lang/Double;
        }
        if (class1 == Float.TYPE)
        {
            return java/lang/Float;
        }
        if (class1 == Byte.TYPE)
        {
            return java/lang/Byte;
        }
        if (class1 == Short.TYPE)
        {
            return java/lang/Short;
        }
        if (class1 == Character.TYPE)
        {
            return java/lang/Character;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder("Class ")).append(class1.getName()).append(" is not a primitive type").toString());
        }
    }

    private class EnumTypeLocator
    {

        static final EnumTypeLocator instance = new EnumTypeLocator();
        private final Field enumMapTypeField = locateField(java/util/EnumMap, "elementType", java/lang/Class);
        private final Field enumSetTypeField = locateField(java/util/EnumSet, "elementType", java/lang/Class);

        private Object get(Object obj, Field field)
        {
            Object obj1;
            try
            {
                obj1 = field.get(obj);
            }
            catch (Exception exception)
            {
                throw new IllegalArgumentException(exception);
            }
            return obj1;
        }

        private static Field locateField(Class class1, String s, Class class2)
        {
            Field afield[];
            int i;
            int j;
            afield = class1.getDeclaredFields();
            i = afield.length;
            j = 0;
_L11:
            Field field;
            if (j >= i)
            {
                break MISSING_BLOCK_LABEL_138;
            }
            field = afield[j];
            if (!s.equals(field.getName()) || field.getType() != class2) goto _L2; else goto _L1
_L1:
            if (field != null) goto _L4; else goto _L3
_L3:
            int k;
            int l;
            Field field1;
            k = afield.length;
            l = 0;
            field1 = field;
_L12:
            if (l >= k) goto _L6; else goto _L5
_L5:
            Field field2 = afield[l];
            if (field2.getType() != class2) goto _L8; else goto _L7
_L7:
            if (field1 == null) goto _L10; else goto _L9
_L9:
            field = null;
_L14:
            return field;
_L2:
            j++;
              goto _L11
_L8:
            field2 = field1;
_L10:
            l++;
            field1 = field2;
              goto _L12
_L6:
            field = field1;
_L4:
            if (field == null) goto _L14; else goto _L13
_L13:
            try
            {
                field.setAccessible(true);
            }
            catch (Throwable throwable)
            {
                return field;
            }
            return field;
            field = null;
              goto _L1
        }

        public Class enumTypeFor(EnumMap enummap)
        {
            if (enumMapTypeField != null)
            {
                return (Class)get(enummap, enumMapTypeField);
            } else
            {
                throw new IllegalStateException("Can not figure out type for EnumMap (odd JDK platform?)");
            }
        }

        public Class enumTypeFor(EnumSet enumset)
        {
            if (enumSetTypeField != null)
            {
                return (Class)get(enumset, enumSetTypeField);
            } else
            {
                throw new IllegalStateException("Can not figure out type for EnumSet (odd JDK platform?)");
            }
        }


        private EnumTypeLocator()
        {
        }
    }

}
