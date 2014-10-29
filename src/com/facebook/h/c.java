// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.h;

import com.facebook.aa;
import com.facebook.g.t;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Proxy;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.facebook.h:
//            b, d, g, e, 
//            k

public final class c
{

    private static final HashSet a = new HashSet();
    private static final SimpleDateFormat b[];

    public static b a()
    {
        return a(com/facebook/h/b);
    }

    private static b a(Class class1)
    {
        return b(class1, new JSONObject());
    }

    static b a(Class class1, JSONObject jsonobject)
    {
        return b(class1, jsonobject);
    }

    public static b a(JSONObject jsonobject)
    {
        return a(jsonobject, com/facebook/h/b);
    }

    private static b a(JSONObject jsonobject, Class class1)
    {
        return b(class1, jsonobject);
    }

    public static g a(JSONArray jsonarray, Class class1)
    {
        return new d(jsonarray, class1);
    }

    static Object a(Object obj)
    {
        return b(obj);
    }

    static Object a(Object obj, Class class1, ParameterizedType parameterizedtype)
    {
        if (obj != null) goto _L2; else goto _L1
_L1:
        obj = null;
_L4:
        return obj;
_L2:
        Class class2 = obj.getClass();
        if (class1.isAssignableFrom(class2) || class1.isPrimitive()) goto _L4; else goto _L3
_L3:
        SimpleDateFormat asimpledateformat[];
        int i;
        int j;
        if (com/facebook/h/b.isAssignableFrom(class1))
        {
            if (org/json/JSONObject.isAssignableFrom(class2))
            {
                return b(class1, (JSONObject)obj);
            }
            if (com/facebook/h/b.isAssignableFrom(class2))
            {
                return ((b)obj).b();
            } else
            {
                throw new aa((new StringBuilder("Can't create GraphObject from ")).append(class2.getName()).toString());
            }
        }
        if (java/lang/Iterable.equals(class1) || java/util/Collection.equals(class1) || java/util/List.equals(class1) || com/facebook/h/g.equals(class1))
        {
            if (parameterizedtype == null)
            {
                throw new aa((new StringBuilder("can't infer generic type of: ")).append(class1.toString()).toString());
            }
            java.lang.reflect.Type atype[] = parameterizedtype.getActualTypeArguments();
            if (atype == null || atype.length != 1 || !(atype[0] instanceof Class))
            {
                throw new aa("Expect collection properties to be of a type with exactly one generic parameter.");
            }
            Class class3 = (Class)atype[0];
            if (org/json/JSONArray.isAssignableFrom(class2))
            {
                return a((JSONArray)obj, class3);
            } else
            {
                throw new aa((new StringBuilder("Can't create Collection from ")).append(class2.getName()).toString());
            }
        }
        if (java/lang/String.equals(class1))
        {
            if (java/lang/Double.isAssignableFrom(class2) || java/lang/Float.isAssignableFrom(class2))
            {
                return String.format("%f", new Object[] {
                    obj
                });
            }
            if (java/lang/Number.isAssignableFrom(class2))
            {
                return String.format("%d", new Object[] {
                    obj
                });
            }
            break MISSING_BLOCK_LABEL_399;
        }
        if (!java/util/Date.equals(class1) || !java/lang/String.isAssignableFrom(class2))
        {
            break MISSING_BLOCK_LABEL_399;
        }
        asimpledateformat = b;
        i = asimpledateformat.length;
        j = 0;
_L7:
        if (j >= i) goto _L6; else goto _L5
_L5:
        SimpleDateFormat simpledateformat = asimpledateformat[j];
        Date date = simpledateformat.parse((String)obj);
        if (date != null)
        {
            return date;
        }
        continue; /* Loop/switch isn't completed */
        ParseException parseexception;
        parseexception;
        j++;
          goto _L7
_L6:
        throw new aa((new StringBuilder("Can't convert type")).append(class2.getName()).append(" to ").append(class1.getName()).toString());
    }

    static String a(String s)
    {
        return s.replaceAll("([a-z])([A-Z])", "$1_$2").toLowerCase(Locale.US);
    }

    private static b b(Class class1, JSONObject jsonobject)
    {
        d(class1);
        Class aclass[] = {
            class1
        };
        e e1 = new e(jsonobject, class1);
        return (b)Proxy.newProxyInstance(com/facebook/h/b.getClassLoader(), aclass, e1);
    }

    private static Object b(Object obj)
    {
        Class class1 = obj.getClass();
        if (com/facebook/h/b.isAssignableFrom(class1))
        {
            obj = ((b)obj).d();
        } else
        if (com/facebook/h/g.isAssignableFrom(class1))
        {
            return ((g)obj).a();
        }
        return obj;
    }

    static Map b(JSONObject jsonobject)
    {
        return c(jsonobject);
    }

    private static boolean b(Class class1)
    {
        com/facebook/h/c;
        JVM INSTR monitorenter ;
        boolean flag = a.contains(class1);
        com/facebook/h/c;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    private static Map c(JSONObject jsonobject)
    {
        Class aclass[] = {
            java/util/Map
        };
        e e1 = new e(jsonobject, java/util/Map);
        return (Map)Proxy.newProxyInstance(com/facebook/h/b.getClassLoader(), aclass, e1);
    }

    private static void c(Class class1)
    {
        com/facebook/h/c;
        JVM INSTR monitorenter ;
        a.add(class1);
        com/facebook/h/c;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private static void d(Class class1)
    {
        if (b(class1))
        {
            return;
        }
        if (!class1.isInterface())
        {
            throw new aa((new StringBuilder("Factory can only wrap interfaces, not class: ")).append(class1.getName()).toString());
        }
        Method amethod[] = class1.getMethods();
        int i = amethod.length;
        for (int j = 0; j < i;)
        {
            Method method = amethod[j];
            String s = method.getName();
            int l = method.getParameterTypes().length;
            Class class2 = method.getReturnType();
            boolean flag = method.isAnnotationPresent(com/facebook/h/k);
            if (method.getDeclaringClass().isAssignableFrom(com/facebook/h/b) || (l != 1 || class2 != Void.TYPE ? l == 0 && class2 != Void.TYPE && (flag ? !t.a(((k)method.getAnnotation(com/facebook/h/k)).a()) : s.startsWith("get") && s.length() > 3) : flag ? !t.a(((k)method.getAnnotation(com/facebook/h/k)).a()) : s.startsWith("set") && s.length() > 3))
            {
                j++;
            } else
            {
                throw new aa((new StringBuilder("Factory can't proxy method: ")).append(method.toString()).toString());
            }
        }

        c(class1);
    }

    static 
    {
        SimpleDateFormat asimpledateformat[] = new SimpleDateFormat[3];
        asimpledateformat[0] = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US);
        asimpledateformat[1] = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);
        asimpledateformat[2] = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
        b = asimpledateformat;
    }
}
