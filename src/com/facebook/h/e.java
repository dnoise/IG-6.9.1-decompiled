// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.h;

import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Proxy;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook.h:
//            f, c, i, b, 
//            k, g

final class e extends f
{

    private final Class b;

    public e(JSONObject jsonobject, Class class1)
    {
        super(jsonobject);
        b = class1;
    }

    private final Object a(Object obj, Method method, Object aobj[])
    {
        String s = method.getName();
        if (s.equals("cast"))
        {
            Class class1 = (Class)aobj[0];
            if (class1 != null && class1.isAssignableFrom(b))
            {
                return obj;
            } else
            {
                return com.facebook.h.c.a(class1, (JSONObject)a);
            }
        }
        if (s.equals("getInnerJSONObject"))
        {
            return ((e)Proxy.getInvocationHandler(obj)).a;
        }
        if (s.equals("asMap"))
        {
            return com.facebook.h.c.b((JSONObject)a);
        }
        if (s.equals("getProperty"))
        {
            return ((JSONObject)a).opt((String)aobj[0]);
        }
        if (s.equals("setProperty"))
        {
            return a(aobj);
        }
        if (s.equals("removeProperty"))
        {
            ((JSONObject)a).remove((String)aobj[0]);
            return null;
        } else
        {
            return a(method);
        }
    }

    private Object a(Object aobj[])
    {
        String s = (String)aobj[0];
        Object obj = com.facebook.h.c.a(aobj[1]);
        try
        {
            ((JSONObject)a).putOpt(s, obj);
        }
        catch (JSONException jsonexception)
        {
            throw new IllegalArgumentException(jsonexception);
        }
        return null;
    }

    private final Object b(Method method, Object aobj[])
    {
        String s = method.getName();
        if (s.equals("clear"))
        {
            i.a((JSONObject)a);
            return null;
        }
        if (s.equals("containsKey"))
        {
            return Boolean.valueOf(((JSONObject)a).has((String)aobj[0]));
        }
        if (s.equals("containsValue"))
        {
            return Boolean.valueOf(i.a((JSONObject)a, aobj[0]));
        }
        if (s.equals("entrySet"))
        {
            return i.b((JSONObject)a);
        }
        if (s.equals("get"))
        {
            return ((JSONObject)a).opt((String)aobj[0]);
        }
        if (s.equals("isEmpty"))
        {
            boolean flag;
            if (((JSONObject)a).length() == 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            return Boolean.valueOf(flag);
        }
        if (s.equals("keySet"))
        {
            return i.c((JSONObject)a);
        }
        if (s.equals("put"))
        {
            return a(aobj);
        }
        if (s.equals("putAll"))
        {
            Map map;
            if (aobj[0] instanceof Map)
            {
                map = (Map)aobj[0];
            } else
            if (aobj[0] instanceof b)
            {
                map = ((b)aobj[0]).c();
            } else
            {
                map = null;
            }
            i.a((JSONObject)a, map);
            return null;
        }
        if (s.equals("remove"))
        {
            ((JSONObject)a).remove((String)aobj[0]);
            return null;
        }
        if (s.equals("size"))
        {
            return Integer.valueOf(((JSONObject)a).length());
        }
        if (s.equals("values"))
        {
            return i.d((JSONObject)a);
        } else
        {
            return a(method);
        }
    }

    private final Object c(Method method, Object aobj[])
    {
        String s = method.getName();
        int j = method.getParameterTypes().length;
        k k1 = (k)method.getAnnotation(com/facebook/h/k);
        String s1;
        if (k1 != null)
        {
            s1 = k1.a();
        } else
        {
            s1 = com.facebook.h.c.a(s.substring(3));
        }
        if (j == 0)
        {
            Object obj3 = ((JSONObject)a).opt(s1);
            Class class1 = method.getReturnType();
            java.lang.reflect.Type type = method.getGenericReturnType();
            Object obj;
            Object obj1;
            Iterator iterator;
            Object obj2;
            ParameterizedType parameterizedtype;
            if (type instanceof ParameterizedType)
            {
                parameterizedtype = (ParameterizedType)type;
            } else
            {
                parameterizedtype = null;
            }
            return com.facebook.h.c.a(obj3, class1, parameterizedtype);
        }
        if (j == 1)
        {
            obj = aobj[0];
            if (com/facebook/h/b.isAssignableFrom(obj.getClass()))
            {
                obj1 = ((b)obj).d();
            } else
            if (com/facebook/h/g.isAssignableFrom(obj.getClass()))
            {
                obj1 = ((g)obj).a();
            } else
            if (java/lang/Iterable.isAssignableFrom(obj.getClass()))
            {
                obj1 = new JSONArray();
                iterator = ((Iterable)obj).iterator();
                while (iterator.hasNext()) 
                {
                    obj2 = iterator.next();
                    if (com/facebook/h/b.isAssignableFrom(obj2.getClass()))
                    {
                        ((JSONArray) (obj1)).put(((b)obj2).d());
                    } else
                    {
                        ((JSONArray) (obj1)).put(obj2);
                    }
                }
            } else
            {
                obj1 = obj;
            }
            ((JSONObject)a).putOpt(s1, obj1);
            return null;
        } else
        {
            return a(method);
        }
    }

    public final Object invoke(Object obj, Method method, Object aobj[])
    {
        Class class1 = method.getDeclaringClass();
        if (class1 == java/lang/Object)
        {
            return a(method, aobj);
        }
        if (class1 == java/util/Map)
        {
            return b(method, aobj);
        }
        if (class1 == com/facebook/h/b)
        {
            return a(obj, method, aobj);
        }
        if (com/facebook/h/b.isAssignableFrom(class1))
        {
            return c(method, aobj);
        } else
        {
            return a(method);
        }
    }

    public final String toString()
    {
        Object aobj[] = new Object[2];
        aobj[0] = b.getSimpleName();
        aobj[1] = a;
        return String.format("GraphObject{graphObjectClass=%s, state=%s}", aobj);
    }
}
