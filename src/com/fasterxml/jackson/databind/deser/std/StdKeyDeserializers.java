// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.KeyDeserializer;
import com.fasterxml.jackson.databind.deser.KeyDeserializers;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.EnumResolver;
import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.UUID;

public class StdKeyDeserializers
    implements KeyDeserializers, Serializable
{

    private static final long serialVersionUID = 0xcd01b6e7cfbcee7L;

    public StdKeyDeserializers()
    {
    }

    public static KeyDeserializer constructDelegatingKeyDeserializer(DeserializationConfig deserializationconfig, JavaType javatype, JsonDeserializer jsondeserializer)
    {
        return new StdKeyDeserializer.DelegatingKD(javatype.getRawClass(), jsondeserializer);
    }

    public static KeyDeserializer constructEnumKeyDeserializer(EnumResolver enumresolver)
    {
        return new StdKeyDeserializer.EnumKD(enumresolver, null);
    }

    public static KeyDeserializer constructEnumKeyDeserializer(EnumResolver enumresolver, AnnotatedMethod annotatedmethod)
    {
        return new StdKeyDeserializer.EnumKD(enumresolver, annotatedmethod);
    }

    public static KeyDeserializer constructStringKeyDeserializer(DeserializationConfig deserializationconfig, JavaType javatype)
    {
        return StdKeyDeserializer.StringKD.forType(javatype.getRawClass());
    }

    public static KeyDeserializer findStringBasedKeyDeserializer(DeserializationConfig deserializationconfig, JavaType javatype)
    {
        BeanDescription beandescription = deserializationconfig.introspect(javatype);
        java.lang.reflect.Constructor constructor = beandescription.findSingleArgConstructor(new Class[] {
            java/lang/String
        });
        if (constructor != null)
        {
            if (deserializationconfig.canOverrideAccessModifiers())
            {
                ClassUtil.checkAndFixAccess(constructor);
            }
            return new StdKeyDeserializer.StringCtorKeyDeserializer(constructor);
        }
        java.lang.reflect.Method method = beandescription.findFactoryMethod(new Class[] {
            java/lang/String
        });
        if (method != null)
        {
            if (deserializationconfig.canOverrideAccessModifiers())
            {
                ClassUtil.checkAndFixAccess(method);
            }
            return new StdKeyDeserializer.StringFactoryKeyDeserializer(method);
        } else
        {
            return null;
        }
    }

    public KeyDeserializer findKeyDeserializer(JavaType javatype, DeserializationConfig deserializationconfig, BeanDescription beandescription)
    {
        Class class1 = javatype.getRawClass();
        if (class1 == java/lang/String || class1 == java/lang/Object)
        {
            return StdKeyDeserializer.StringKD.forType(class1);
        }
        if (class1 == java/util/UUID)
        {
            return new StdKeyDeserializer.UuidKD();
        }
        if (class1.isPrimitive())
        {
            class1 = ClassUtil.wrapperType(class1);
        }
        if (class1 == java/lang/Integer)
        {
            return new StdKeyDeserializer.IntKD();
        }
        if (class1 == java/lang/Long)
        {
            return new StdKeyDeserializer.LongKD();
        }
        if (class1 == java/util/Date)
        {
            return new StdKeyDeserializer.DateKD();
        }
        if (class1 == java/util/Calendar)
        {
            return new StdKeyDeserializer.CalendarKD();
        }
        if (class1 == java/lang/Boolean)
        {
            return new StdKeyDeserializer.BoolKD();
        }
        if (class1 == java/lang/Byte)
        {
            return new StdKeyDeserializer.ByteKD();
        }
        if (class1 == java/lang/Character)
        {
            return new StdKeyDeserializer.CharKD();
        }
        if (class1 == java/lang/Short)
        {
            return new StdKeyDeserializer.ShortKD();
        }
        if (class1 == java/lang/Float)
        {
            return new StdKeyDeserializer.FloatKD();
        }
        if (class1 == java/lang/Double)
        {
            return new StdKeyDeserializer.DoubleKD();
        }
        if (class1 == java/util/Locale)
        {
            return new StdKeyDeserializer.LocaleKD();
        } else
        {
            return null;
        }
    }
}
