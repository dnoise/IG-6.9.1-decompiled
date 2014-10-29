// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.c.h;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.o;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.KeyDeserializer;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.Converter;
import java.io.Serializable;
import java.util.Date;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            StdDelegatingDeserializer

public abstract class StdDeserializer extends JsonDeserializer
    implements Serializable
{

    private static final long serialVersionUID = 1L;
    protected final Class _valueClass;

    protected StdDeserializer(JavaType javatype)
    {
        Class class1;
        if (javatype == null)
        {
            class1 = null;
        } else
        {
            class1 = javatype.getRawClass();
        }
        _valueClass = class1;
    }

    protected StdDeserializer(Class class1)
    {
        _valueClass = class1;
    }

    protected static final double parseDouble(String s)
    {
        if ("2.2250738585072012e-308".equals(s))
        {
            return 4.9406564584124654E-324D;
        } else
        {
            return Double.parseDouble(s);
        }
    }

    protected final Boolean _parseBoolean(l l1, DeserializationContext deserializationcontext)
    {
        r r1 = l1.getCurrentToken();
        if (r1 == r.k)
        {
            return Boolean.TRUE;
        }
        if (r1 == r.l)
        {
            return Boolean.FALSE;
        }
        if (r1 == r.i)
        {
            if (l1.getNumberType$72641f5() == o.a)
            {
                if (l1.getIntValue() == 0)
                {
                    return Boolean.FALSE;
                } else
                {
                    return Boolean.TRUE;
                }
            } else
            {
                return Boolean.valueOf(_parseBooleanFromNumber(l1, deserializationcontext));
            }
        }
        if (r1 == r.m)
        {
            return (Boolean)getNullValue();
        }
        if (r1 == r.h)
        {
            String s = l1.getText().trim();
            if ("true".equals(s))
            {
                return Boolean.TRUE;
            }
            if ("false".equals(s))
            {
                return Boolean.FALSE;
            }
            if (s.length() == 0)
            {
                return (Boolean)getEmptyValue();
            } else
            {
                throw deserializationcontext.weirdStringException(s, _valueClass, "only \"true\" or \"false\" recognized");
            }
        } else
        {
            throw deserializationcontext.mappingException(_valueClass, r1);
        }
    }

    protected final boolean _parseBooleanFromNumber(l l1, DeserializationContext deserializationcontext)
    {
        if (l1.getNumberType$72641f5() == o.b)
        {
            Boolean boolean1;
            if (l1.getLongValue() == 0L)
            {
                boolean1 = Boolean.FALSE;
            } else
            {
                boolean1 = Boolean.TRUE;
            }
            return boolean1.booleanValue();
        }
        String s = l1.getText();
        if ("0.0".equals(s) || "0".equals(s))
        {
            return Boolean.FALSE.booleanValue();
        } else
        {
            return Boolean.TRUE.booleanValue();
        }
    }

    protected final boolean _parseBooleanPrimitive(l l1, DeserializationContext deserializationcontext)
    {
        r r1 = l1.getCurrentToken();
        if (r1 != r.k) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        if (r1 == r.l)
        {
            return false;
        }
        if (r1 == r.m)
        {
            return false;
        }
        if (r1 != r.i)
        {
            break; /* Loop/switch isn't completed */
        }
        if (l1.getNumberType$72641f5() == o.a)
        {
            if (l1.getIntValue() == 0)
            {
                return false;
            }
        } else
        {
            return _parseBooleanFromNumber(l1, deserializationcontext);
        }
        if (true) goto _L1; else goto _L3
_L3:
        if (r1 == r.h)
        {
            String s = l1.getText().trim();
            if (!"true".equals(s))
            {
                if ("false".equals(s) || s.length() == 0)
                {
                    return Boolean.FALSE.booleanValue();
                } else
                {
                    throw deserializationcontext.weirdStringException(s, _valueClass, "only \"true\" or \"false\" recognized");
                }
            }
        } else
        {
            throw deserializationcontext.mappingException(_valueClass, r1);
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    protected Byte _parseByte(l l1, DeserializationContext deserializationcontext)
    {
        r r1 = l1.getCurrentToken();
        if (r1 == r.i || r1 == r.j)
        {
            return Byte.valueOf(l1.getByteValue());
        }
        if (r1 == r.h)
        {
            String s = l1.getText().trim();
            int i;
            try
            {
                if (s.length() == 0)
                {
                    return (Byte)getEmptyValue();
                }
                i = h.a(s);
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                throw deserializationcontext.weirdStringException(s, _valueClass, "not a valid Byte value");
            }
            if (i < -128 || i > 255)
            {
                throw deserializationcontext.weirdStringException(s, _valueClass, "overflow, value can not be represented as 8-bit value");
            } else
            {
                return Byte.valueOf((byte)i);
            }
        }
        if (r1 == r.m)
        {
            return (Byte)getNullValue();
        } else
        {
            throw deserializationcontext.mappingException(_valueClass, r1);
        }
    }

    protected Date _parseDate(l l1, DeserializationContext deserializationcontext)
    {
        r r1 = l1.getCurrentToken();
        if (r1 == r.i)
        {
            return new Date(l1.getLongValue());
        }
        if (r1 == r.m)
        {
            return (Date)getNullValue();
        }
        if (r1 == r.h)
        {
            String s = null;
            Date date;
            try
            {
                s = l1.getText().trim();
                if (s.length() == 0)
                {
                    return (Date)getEmptyValue();
                }
                date = deserializationcontext.parseDate(s);
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                throw deserializationcontext.weirdStringException(s, _valueClass, (new StringBuilder("not a valid representation (error: ")).append(illegalargumentexception.getMessage()).append(")").toString());
            }
            return date;
        } else
        {
            throw deserializationcontext.mappingException(_valueClass, r1);
        }
    }

    protected final Double _parseDouble(l l1, DeserializationContext deserializationcontext)
    {
        r r1;
        r1 = l1.getCurrentToken();
        if (r1 == r.i || r1 == r.j)
        {
            return Double.valueOf(l1.getDoubleValue());
        }
        if (r1 != r.h) goto _L2; else goto _L1
_L1:
        String s;
        s = l1.getText().trim();
        if (s.length() == 0)
        {
            return (Double)getEmptyValue();
        }
        s.charAt(0);
        JVM INSTR lookupswitch 3: default 100
    //                   45: 157
    //                   73: 113
    //                   78: 140;
           goto _L3 _L4 _L5 _L6
_L3:
        Double double1;
        try
        {
            double1 = Double.valueOf(parseDouble(s));
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            throw deserializationcontext.weirdStringException(s, _valueClass, "not a valid Double value");
        }
        return double1;
_L5:
        if (!"Infinity".equals(s) && !"INF".equals(s)) goto _L3; else goto _L7
_L7:
        return Double.valueOf((1.0D / 0.0D));
_L6:
        if (!"NaN".equals(s)) goto _L3; else goto _L8
_L8:
        return Double.valueOf((0.0D / 0.0D));
_L4:
        if (!"-Infinity".equals(s) && !"-INF".equals(s)) goto _L3; else goto _L9
_L9:
        return Double.valueOf((-1.0D / 0.0D));
_L2:
        if (r1 == r.m)
        {
            return (Double)getNullValue();
        } else
        {
            throw deserializationcontext.mappingException(_valueClass, r1);
        }
    }

    protected final double _parseDoublePrimitive(l l1, DeserializationContext deserializationcontext)
    {
        double d;
        r r1;
        d = 0.0D;
        r1 = l1.getCurrentToken();
        if (r1 != r.i && r1 != r.j) goto _L2; else goto _L1
_L1:
        d = l1.getDoubleValue();
_L4:
        return d;
_L2:
        String s;
        if (r1 != r.h)
        {
            continue; /* Loop/switch isn't completed */
        }
        s = l1.getText().trim();
        if (s.length() == 0) goto _L4; else goto _L3
_L3:
        s.charAt(0);
        JVM INSTR lookupswitch 3: default 96
    //                   45: 144
    //                   73: 106
    //                   78: 130;
           goto _L5 _L6 _L7 _L8
_L5:
        double d1;
        try
        {
            d1 = parseDouble(s);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            throw deserializationcontext.weirdStringException(s, _valueClass, "not a valid double value");
        }
        return d1;
_L7:
        if (!"Infinity".equals(s) && !"INF".equals(s)) goto _L5; else goto _L9
_L9:
        return (1.0D / 0.0D);
_L8:
        if (!"NaN".equals(s)) goto _L5; else goto _L10
_L10:
        return (0.0D / 0.0D);
_L6:
        if (!"-Infinity".equals(s) && !"-INF".equals(s)) goto _L5; else goto _L11
_L11:
        return (-1.0D / 0.0D);
        if (r1 == r.m) goto _L4; else goto _L12
_L12:
        throw deserializationcontext.mappingException(_valueClass, r1);
    }

    protected final Float _parseFloat(l l1, DeserializationContext deserializationcontext)
    {
        r r1;
        r1 = l1.getCurrentToken();
        if (r1 == r.i || r1 == r.j)
        {
            return Float.valueOf(l1.getFloatValue());
        }
        if (r1 != r.h) goto _L2; else goto _L1
_L1:
        String s;
        s = l1.getText().trim();
        if (s.length() == 0)
        {
            return (Float)getEmptyValue();
        }
        s.charAt(0);
        JVM INSTR lookupswitch 3: default 100
    //                   45: 157
    //                   73: 113
    //                   78: 140;
           goto _L3 _L4 _L5 _L6
_L3:
        Float float1;
        try
        {
            float1 = Float.valueOf(Float.parseFloat(s));
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            throw deserializationcontext.weirdStringException(s, _valueClass, "not a valid Float value");
        }
        return float1;
_L5:
        if (!"Infinity".equals(s) && !"INF".equals(s)) goto _L3; else goto _L7
_L7:
        return Float.valueOf((1.0F / 0.0F));
_L6:
        if (!"NaN".equals(s)) goto _L3; else goto _L8
_L8:
        return Float.valueOf((0.0F / 0.0F));
_L4:
        if (!"-Infinity".equals(s) && !"-INF".equals(s)) goto _L3; else goto _L9
_L9:
        return Float.valueOf((-1.0F / 0.0F));
_L2:
        if (r1 == r.m)
        {
            return (Float)getNullValue();
        } else
        {
            throw deserializationcontext.mappingException(_valueClass, r1);
        }
    }

    protected final float _parseFloatPrimitive(l l1, DeserializationContext deserializationcontext)
    {
        r r1 = l1.getCurrentToken();
        if (r1 != r.i && r1 != r.j) goto _L2; else goto _L1
_L1:
        float f = l1.getFloatValue();
_L13:
        return f;
_L2:
        if (r1 != r.h) goto _L4; else goto _L3
_L3:
        String s;
        s = l1.getText().trim();
        int i = s.length();
        f = 0.0F;
        if (i == 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        s.charAt(0);
        JVM INSTR lookupswitch 3: default 100
    //                   45: 148
    //                   73: 110
    //                   78: 134;
           goto _L5 _L6 _L7 _L8
_L5:
        float f1;
        try
        {
            f1 = Float.parseFloat(s);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            throw deserializationcontext.weirdStringException(s, _valueClass, "not a valid float value");
        }
        return f1;
_L7:
        if (!"Infinity".equals(s) && !"INF".equals(s)) goto _L5; else goto _L9
_L9:
        return (1.0F / 0.0F);
_L8:
        if (!"NaN".equals(s)) goto _L5; else goto _L10
_L10:
        return (0.0F / 0.0F);
_L6:
        if (!"-Infinity".equals(s) && !"-INF".equals(s)) goto _L5; else goto _L11
_L11:
        return (-1.0F / 0.0F);
_L4:
        r r2 = r.m;
        f = 0.0F;
        if (r1 != r2)
        {
            throw deserializationcontext.mappingException(_valueClass, r1);
        }
        if (true) goto _L13; else goto _L12
_L12:
    }

    protected final int _parseIntPrimitive(l l1, DeserializationContext deserializationcontext)
    {
        r r1 = l1.getCurrentToken();
        if (r1 != r.i && r1 != r.j) goto _L2; else goto _L1
_L1:
        int i = l1.getIntValue();
_L4:
        return i;
_L2:
        String s;
        int j;
        long l2;
        if (r1 != r.h)
        {
            break MISSING_BLOCK_LABEL_161;
        }
        s = l1.getText().trim();
        try
        {
            j = s.length();
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            throw deserializationcontext.weirdStringException(s, _valueClass, "not a valid int value");
        }
        if (j <= 9)
        {
            break MISSING_BLOCK_LABEL_143;
        }
        l2 = Long.parseLong(s);
        if (l2 >= 0xffffffff80000000L && l2 <= 0x7fffffffL)
        {
            break MISSING_BLOCK_LABEL_139;
        }
        throw deserializationcontext.weirdStringException(s, _valueClass, (new StringBuilder("Overflow: numeric value (")).append(s).append(") out of range of int (-2147483648 - 2147483647").append(")").toString());
        return (int)l2;
        i = 0;
        if (j == 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        int k = h.a(s);
        return k;
        r r2 = r.m;
        i = 0;
        if (r1 != r2)
        {
            throw deserializationcontext.mappingException(_valueClass, r1);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected final Integer _parseInteger(l l1, DeserializationContext deserializationcontext)
    {
        r r1;
        String s;
        int i;
        long l2;
        r1 = l1.getCurrentToken();
        if (r1 == r.i || r1 == r.j)
        {
            return Integer.valueOf(l1.getIntValue());
        }
        if (r1 != r.h)
        {
            break MISSING_BLOCK_LABEL_175;
        }
        s = l1.getText().trim();
        try
        {
            i = s.length();
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            throw deserializationcontext.weirdStringException(s, _valueClass, "not a valid Integer value");
        }
        if (i <= 9)
        {
            break MISSING_BLOCK_LABEL_149;
        }
        l2 = Long.parseLong(s);
        if (l2 >= 0xffffffff80000000L && l2 <= 0x7fffffffL)
        {
            break MISSING_BLOCK_LABEL_138;
        }
        throw deserializationcontext.weirdStringException(s, _valueClass, (new StringBuilder("Overflow: numeric value (")).append(s).append(") out of range of Integer (-2147483648 - 2147483647").append(")").toString());
        int j = (int)l2;
        return Integer.valueOf(j);
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_162;
        }
        return (Integer)getEmptyValue();
        Integer integer = Integer.valueOf(h.a(s));
        return integer;
        if (r1 == r.m)
        {
            return (Integer)getNullValue();
        } else
        {
            throw deserializationcontext.mappingException(_valueClass, r1);
        }
    }

    protected final Long _parseLong(l l1, DeserializationContext deserializationcontext)
    {
        r r1 = l1.getCurrentToken();
        if (r1 == r.i || r1 == r.j)
        {
            return Long.valueOf(l1.getLongValue());
        }
        if (r1 == r.h)
        {
            String s = l1.getText().trim();
            if (s.length() == 0)
            {
                return (Long)getEmptyValue();
            }
            Long long1;
            try
            {
                long1 = Long.valueOf(h.b(s));
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                throw deserializationcontext.weirdStringException(s, _valueClass, "not a valid Long value");
            }
            return long1;
        }
        if (r1 == r.m)
        {
            return (Long)getNullValue();
        } else
        {
            throw deserializationcontext.mappingException(_valueClass, r1);
        }
    }

    protected final long _parseLongPrimitive(l l1, DeserializationContext deserializationcontext)
    {
        long l2;
        r r1;
        l2 = 0L;
        r1 = l1.getCurrentToken();
        if (r1 != r.i && r1 != r.j) goto _L2; else goto _L1
_L1:
        l2 = l1.getLongValue();
_L4:
        return l2;
_L2:
        String s;
        if (r1 != r.h)
        {
            continue; /* Loop/switch isn't completed */
        }
        s = l1.getText().trim();
        if (s.length() == 0) goto _L4; else goto _L3
_L3:
        long l3;
        try
        {
            l3 = h.b(s);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            throw deserializationcontext.weirdStringException(s, _valueClass, "not a valid long value");
        }
        return l3;
        if (r1 == r.m) goto _L4; else goto _L5
_L5:
        throw deserializationcontext.mappingException(_valueClass, r1);
    }

    protected Short _parseShort(l l1, DeserializationContext deserializationcontext)
    {
        r r1 = l1.getCurrentToken();
        if (r1 == r.i || r1 == r.j)
        {
            return Short.valueOf(l1.getShortValue());
        }
        if (r1 == r.h)
        {
            String s = l1.getText().trim();
            int i;
            try
            {
                if (s.length() == 0)
                {
                    return (Short)getEmptyValue();
                }
                i = h.a(s);
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                throw deserializationcontext.weirdStringException(s, _valueClass, "not a valid Short value");
            }
            if (i < -32768 || i > 32767)
            {
                throw deserializationcontext.weirdStringException(s, _valueClass, "overflow, value can not be represented as 16-bit value");
            } else
            {
                return Short.valueOf((short)i);
            }
        }
        if (r1 == r.m)
        {
            return (Short)getNullValue();
        } else
        {
            throw deserializationcontext.mappingException(_valueClass, r1);
        }
    }

    protected final short _parseShortPrimitive(l l1, DeserializationContext deserializationcontext)
    {
        int i = _parseIntPrimitive(l1, deserializationcontext);
        if (i < -32768 || i > 32767)
        {
            throw deserializationcontext.weirdStringException(String.valueOf(i), _valueClass, "overflow, value can not be represented as 16-bit value");
        } else
        {
            return (short)i;
        }
    }

    protected final String _parseString(l l1, DeserializationContext deserializationcontext)
    {
        String s = l1.getValueAsString();
        if (s != null)
        {
            return s;
        } else
        {
            throw deserializationcontext.mappingException(java/lang/String, l1.getCurrentToken());
        }
    }

    public Object deserializeWithType(l l1, DeserializationContext deserializationcontext, TypeDeserializer typedeserializer)
    {
        return typedeserializer.deserializeTypedFromAny(l1, deserializationcontext);
    }

    protected JsonDeserializer findConvertingContentDeserializer(DeserializationContext deserializationcontext, BeanProperty beanproperty, JsonDeserializer jsondeserializer)
    {
        AnnotationIntrospector annotationintrospector = deserializationcontext.getAnnotationIntrospector();
        if (annotationintrospector != null && beanproperty != null)
        {
            Object obj = annotationintrospector.findDeserializationContentConverter(beanproperty.getMember());
            if (obj != null)
            {
                Converter converter = deserializationcontext.converterInstance(beanproperty.getMember(), obj);
                JavaType javatype = converter.getInputType(deserializationcontext.getTypeFactory());
                if (jsondeserializer == null)
                {
                    jsondeserializer = deserializationcontext.findContextualValueDeserializer(javatype, beanproperty);
                }
                return new StdDelegatingDeserializer(converter, javatype, jsondeserializer);
            }
        }
        return jsondeserializer;
    }

    protected JsonDeserializer findDeserializer(DeserializationContext deserializationcontext, JavaType javatype, BeanProperty beanproperty)
    {
        return deserializationcontext.findContextualValueDeserializer(javatype, beanproperty);
    }

    public Class getValueClass()
    {
        return _valueClass;
    }

    public JavaType getValueType()
    {
        return null;
    }

    protected void handleUnknownProperty(l l1, DeserializationContext deserializationcontext, Object obj, String s)
    {
        if (obj == null)
        {
            obj = getValueClass();
        }
        if (deserializationcontext.handleUnknownProperty(l1, this, obj, s))
        {
            return;
        } else
        {
            deserializationcontext.reportUnknownProperty(obj, s, this);
            l1.skipChildren();
            return;
        }
    }

    protected boolean isDefaultDeserializer(JsonDeserializer jsondeserializer)
    {
        return jsondeserializer != null && jsondeserializer.getClass().getAnnotation(com/fasterxml/jackson/databind/annotation/JacksonStdImpl) != null;
    }

    protected boolean isDefaultKeyDeserializer(KeyDeserializer keydeserializer)
    {
        return keydeserializer != null && keydeserializer.getClass().getAnnotation(com/fasterxml/jackson/databind/annotation/JacksonStdImpl) != null;
    }
}
