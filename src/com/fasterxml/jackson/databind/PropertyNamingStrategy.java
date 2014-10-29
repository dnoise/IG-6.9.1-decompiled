// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.AnnotatedField;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import java.io.Serializable;

public abstract class PropertyNamingStrategy
    implements Serializable
{

    public static final PropertyNamingStrategy CAMEL_CASE_TO_LOWER_CASE_WITH_UNDERSCORES = new LowerCaseWithUnderscoresStrategy();
    public static final PropertyNamingStrategy PASCAL_CASE_TO_CAMEL_CASE = new PascalCaseStrategy();

    public PropertyNamingStrategy()
    {
    }

    public String nameForConstructorParameter(MapperConfig mapperconfig, AnnotatedParameter annotatedparameter, String s)
    {
        return s;
    }

    public String nameForField(MapperConfig mapperconfig, AnnotatedField annotatedfield, String s)
    {
        return s;
    }

    public String nameForGetterMethod(MapperConfig mapperconfig, AnnotatedMethod annotatedmethod, String s)
    {
        return s;
    }

    public String nameForSetterMethod(MapperConfig mapperconfig, AnnotatedMethod annotatedmethod, String s)
    {
        return s;
    }


    private class LowerCaseWithUnderscoresStrategy extends PropertyNamingStrategyBase
    {
        private class PropertyNamingStrategyBase extends PropertyNamingStrategy
        {

            public String nameForConstructorParameter(MapperConfig mapperconfig, AnnotatedParameter annotatedparameter, String s)
            {
                return translate(s);
            }

            public String nameForField(MapperConfig mapperconfig, AnnotatedField annotatedfield, String s)
            {
                return translate(s);
            }

            public String nameForGetterMethod(MapperConfig mapperconfig, AnnotatedMethod annotatedmethod, String s)
            {
                return translate(s);
            }

            public String nameForSetterMethod(MapperConfig mapperconfig, AnnotatedMethod annotatedmethod, String s)
            {
                return translate(s);
            }

            public abstract String translate(String s);

            public PropertyNamingStrategyBase()
            {
            }
        }


        public String translate(String s)
        {
            if (s != null)
            {
                int i = s.length();
                StringBuilder stringbuilder = new StringBuilder(i * 2);
                int j = 0;
                boolean flag = false;
                int k = 0;
                while (j < i) 
                {
                    char c = s.charAt(j);
                    boolean flag1;
                    if (j > 0 || c != '_')
                    {
                        int l;
                        char c1;
                        if (Character.isUpperCase(c))
                        {
                            if (!flag && k > 0 && stringbuilder.charAt(k - 1) != '_')
                            {
                                stringbuilder.append('_');
                                k++;
                            }
                            char c2 = Character.toLowerCase(c);
                            flag1 = true;
                            l = k;
                            c1 = c2;
                        } else
                        {
                            l = k;
                            c1 = c;
                            flag1 = false;
                        }
                        stringbuilder.append(c1);
                        k = l + 1;
                    } else
                    {
                        flag1 = flag;
                    }
                    j++;
                    flag = flag1;
                }
                if (k > 0)
                {
                    return stringbuilder.toString();
                }
            }
            return s;
        }

        public LowerCaseWithUnderscoresStrategy()
        {
        }
    }


    private class PascalCaseStrategy extends PropertyNamingStrategyBase
    {

        public String translate(String s)
        {
            char c;
            if (s != null && s.length() != 0)
            {
                if (!Character.isUpperCase(c = s.charAt(0)))
                {
                    StringBuilder stringbuilder = new StringBuilder(s);
                    stringbuilder.setCharAt(0, Character.toUpperCase(c));
                    return stringbuilder.toString();
                }
            }
            return s;
        }

        public PascalCaseStrategy()
        {
        }
    }

}
