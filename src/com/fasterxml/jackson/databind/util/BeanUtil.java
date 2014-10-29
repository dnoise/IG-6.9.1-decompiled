// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;

public class BeanUtil
{

    public BeanUtil()
    {
    }

    protected static boolean isCglibGetCallbacks(AnnotatedMethod annotatedmethod)
    {
        Class class1 = annotatedmethod.getRawType();
        Package package1;
        String s;
        if (class1 != null && class1.isArray())
        {
            if ((package1 = class1.getComponentType().getPackage()) != null && ((s = package1.getName()).startsWith("net.sf.cglib") || s.startsWith("org.hibernate.repackage.cglib")))
            {
                return true;
            }
        }
        return false;
    }

    protected static boolean isGroovyMetaClassGetter(AnnotatedMethod annotatedmethod)
    {
        Class class1 = annotatedmethod.getRawType();
        Package package1;
        if (class1 != null && !class1.isArray())
        {
            if ((package1 = class1.getPackage()) != null && package1.getName().startsWith("groovy.lang"))
            {
                return true;
            }
        }
        return false;
    }

    protected static boolean isGroovyMetaClassSetter(AnnotatedMethod annotatedmethod)
    {
        Package package1 = annotatedmethod.getRawParameterType(0).getPackage();
        boolean flag = false;
        if (package1 != null)
        {
            boolean flag1 = package1.getName().startsWith("groovy.lang");
            flag = false;
            if (flag1)
            {
                flag = true;
            }
        }
        return flag;
    }

    protected static String manglePropertyName(String s)
    {
        StringBuilder stringbuilder = null;
        int i = s.length();
        if (i == 0)
        {
            s = null;
        } else
        {
            for (int j = 0; j < i; j++)
            {
                char c = s.charAt(j);
                char c1 = Character.toLowerCase(c);
                if (c == c1)
                {
                    break;
                }
                if (stringbuilder == null)
                {
                    stringbuilder = new StringBuilder(s);
                }
                stringbuilder.setCharAt(j, c1);
            }

            if (stringbuilder != null)
            {
                return stringbuilder.toString();
            }
        }
        return s;
    }

    public static String okNameForGetter(AnnotatedMethod annotatedmethod)
    {
        String s = annotatedmethod.getName();
        String s1 = okNameForIsGetter(annotatedmethod, s);
        if (s1 == null)
        {
            s1 = okNameForRegularGetter(annotatedmethod, s);
        }
        return s1;
    }

    public static String okNameForIsGetter(AnnotatedMethod annotatedmethod, String s)
    {
label0:
        {
            if (s.startsWith("is"))
            {
                Class class1 = annotatedmethod.getRawType();
                if (class1 == java/lang/Boolean || class1 == Boolean.TYPE)
                {
                    break label0;
                }
            }
            return null;
        }
        return manglePropertyName(s.substring(2));
    }

    public static String okNameForMutator(AnnotatedMethod annotatedmethod, String s)
    {
        String s1 = annotatedmethod.getName();
        if (s1.startsWith(s))
        {
            return manglePropertyName(s1.substring(s.length()));
        } else
        {
            return null;
        }
    }

    public static String okNameForRegularGetter(AnnotatedMethod annotatedmethod, String s)
    {
        if (!s.startsWith("get") || ("getCallbacks".equals(s) ? isCglibGetCallbacks(annotatedmethod) : "getMetaClass".equals(s) && isGroovyMetaClassGetter(annotatedmethod)))
        {
            return null;
        } else
        {
            return manglePropertyName(s.substring(3));
        }
    }

    public static String okNameForSetter(AnnotatedMethod annotatedmethod)
    {
        String s = okNameForMutator(annotatedmethod, "set");
        if (s == null || "metaClass".equals(s) && isGroovyMetaClassSetter(annotatedmethod))
        {
            return null;
        } else
        {
            return s;
        }
    }
}
