// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.databind.JsonDeserializer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashSet;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            StdDeserializer

public class NumberDeserializers
{

    private static final HashSet _classNames;

    public NumberDeserializers()
    {
    }

    public static StdDeserializer[] all()
    {
        StdDeserializer astddeserializer[] = new StdDeserializer[19];
        astddeserializer[0] = new BooleanDeserializer(java/lang/Boolean, null);
        astddeserializer[1] = new ByteDeserializer(java/lang/Byte, null);
        astddeserializer[2] = new ShortDeserializer(java/lang/Short, null);
        astddeserializer[3] = new CharacterDeserializer(java/lang/Character, null);
        astddeserializer[4] = new IntegerDeserializer(java/lang/Integer, null);
        astddeserializer[5] = new LongDeserializer(java/lang/Long, null);
        astddeserializer[6] = new FloatDeserializer(java/lang/Float, null);
        astddeserializer[7] = new DoubleDeserializer(java/lang/Double, null);
        astddeserializer[8] = new BooleanDeserializer(Boolean.TYPE, Boolean.FALSE);
        astddeserializer[9] = new ByteDeserializer(Byte.TYPE, Byte.valueOf((byte)0));
        astddeserializer[10] = new ShortDeserializer(Short.TYPE, Short.valueOf((short)0));
        astddeserializer[11] = new CharacterDeserializer(Character.TYPE, Character.valueOf('\0'));
        astddeserializer[12] = new IntegerDeserializer(Integer.TYPE, Integer.valueOf(0));
        astddeserializer[13] = new LongDeserializer(Long.TYPE, Long.valueOf(0L));
        astddeserializer[14] = new FloatDeserializer(Float.TYPE, Float.valueOf(0.0F));
        astddeserializer[15] = new DoubleDeserializer(Double.TYPE, Double.valueOf(0.0D));
        astddeserializer[16] = new NumberDeserializer();
        astddeserializer[17] = new BigDecimalDeserializer();
        astddeserializer[18] = new BigIntegerDeserializer();
        return astddeserializer;
    }

    public static JsonDeserializer find(Class class1, String s)
    {
        if (class1.isPrimitive())
        {
            if (class1 == Integer.TYPE)
            {
                return IntegerDeserializer.primitiveInstance;
            }
            if (class1 == Boolean.TYPE)
            {
                return BooleanDeserializer.primitiveInstance;
            }
            if (class1 == Long.TYPE)
            {
                return LongDeserializer.primitiveInstance;
            }
            if (class1 == Double.TYPE)
            {
                return DoubleDeserializer.primitiveInstance;
            }
            if (class1 == Character.TYPE)
            {
                return CharacterDeserializer.primitiveInstance;
            }
            if (class1 == Byte.TYPE)
            {
                return ByteDeserializer.primitiveInstance;
            }
            if (class1 == Short.TYPE)
            {
                return ShortDeserializer.primitiveInstance;
            }
            if (class1 == Float.TYPE)
            {
                return FloatDeserializer.primitiveInstance;
            }
        } else
        if (_classNames.contains(s))
        {
            if (class1 == java/lang/Integer)
            {
                return IntegerDeserializer.wrapperInstance;
            }
            if (class1 == java/lang/Boolean)
            {
                return BooleanDeserializer.wrapperInstance;
            }
            if (class1 == java/lang/Long)
            {
                return LongDeserializer.wrapperInstance;
            }
            if (class1 == java/lang/Double)
            {
                return DoubleDeserializer.wrapperInstance;
            }
            if (class1 == java/lang/Character)
            {
                return CharacterDeserializer.wrapperInstance;
            }
            if (class1 == java/lang/Byte)
            {
                return ByteDeserializer.wrapperInstance;
            }
            if (class1 == java/lang/Short)
            {
                return ShortDeserializer.wrapperInstance;
            }
            if (class1 == java/lang/Float)
            {
                return FloatDeserializer.wrapperInstance;
            }
            if (class1 == java/lang/Number)
            {
                return NumberDeserializer.instance;
            }
            if (class1 == java/math/BigDecimal)
            {
                return BigDecimalDeserializer.instance;
            }
            if (class1 == java/math/BigInteger)
            {
                return BigIntegerDeserializer.instance;
            }
        } else
        {
            return null;
        }
        throw new IllegalArgumentException((new StringBuilder("Internal error: can't find deserializer for ")).append(class1.getName()).toString());
    }

    static 
    {
        int i = 0;
        _classNames = new HashSet();
        Class aclass[] = {
            java/lang/Boolean, java/lang/Byte, java/lang/Short, java/lang/Character, java/lang/Integer, java/lang/Long, java/lang/Float, java/lang/Double, java/lang/Number, java/math/BigDecimal, 
            java/math/BigInteger
        };
        for (; i < 11; i++)
        {
            Class class1 = aclass[i];
            _classNames.add(class1.getName());
        }

    }

    private class BooleanDeserializer extends PrimitiveOrWrapperDeserializer
    {
        private class PrimitiveOrWrapperDeserializer extends StdScalarDeserializer
        {

            private static final long serialVersionUID = 1L;
            protected final Object _nullValue;

            public final Object getNullValue()
            {
                return _nullValue;
            }

            protected PrimitiveOrWrapperDeserializer(Class class1, Object obj)
            {
                super(class1);
                _nullValue = obj;
            }
        }


        private static final BooleanDeserializer primitiveInstance;
        private static final long serialVersionUID = 1L;
        private static final BooleanDeserializer wrapperInstance;

        public final Boolean deserialize(l l, DeserializationContext deserializationcontext)
        {
            return _parseBoolean(l, deserializationcontext);
        }

        public final volatile Object deserialize(l l, DeserializationContext deserializationcontext)
        {
            return deserialize(l, deserializationcontext);
        }

        public final Boolean deserializeWithType(l l, DeserializationContext deserializationcontext, TypeDeserializer typedeserializer)
        {
            return _parseBoolean(l, deserializationcontext);
        }

        public final volatile Object deserializeWithType(l l, DeserializationContext deserializationcontext, TypeDeserializer typedeserializer)
        {
            return deserializeWithType(l, deserializationcontext, typedeserializer);
        }

        static 
        {
            primitiveInstance = new BooleanDeserializer(java/lang/Boolean, Boolean.FALSE);
            wrapperInstance = new BooleanDeserializer(Boolean.TYPE, null);
        }



        public BooleanDeserializer(Class class1, Boolean boolean1)
        {
            super(class1, boolean1);
        }
    }


    private class ByteDeserializer extends PrimitiveOrWrapperDeserializer
    {

        private static final ByteDeserializer primitiveInstance;
        private static final long serialVersionUID = 1L;
        private static final ByteDeserializer wrapperInstance = new ByteDeserializer(java/lang/Byte, null);

        public final Byte deserialize(l l, DeserializationContext deserializationcontext)
        {
            return _parseByte(l, deserializationcontext);
        }

        public final volatile Object deserialize(l l, DeserializationContext deserializationcontext)
        {
            return deserialize(l, deserializationcontext);
        }

        static 
        {
            primitiveInstance = new ByteDeserializer(Byte.TYPE, Byte.valueOf((byte)0));
        }



        public ByteDeserializer(Class class1, Byte byte1)
        {
            super(class1, byte1);
        }
    }


    private class ShortDeserializer extends PrimitiveOrWrapperDeserializer
    {

        private static final ShortDeserializer primitiveInstance = new ShortDeserializer(java/lang/Short, Short.valueOf((short)0));
        private static final long serialVersionUID = 1L;
        private static final ShortDeserializer wrapperInstance;

        public final volatile Object deserialize(l l, DeserializationContext deserializationcontext)
        {
            return deserialize(l, deserializationcontext);
        }

        public final Short deserialize(l l, DeserializationContext deserializationcontext)
        {
            return _parseShort(l, deserializationcontext);
        }

        static 
        {
            wrapperInstance = new ShortDeserializer(Short.TYPE, null);
        }



        public ShortDeserializer(Class class1, Short short1)
        {
            super(class1, short1);
        }
    }


    private class CharacterDeserializer extends PrimitiveOrWrapperDeserializer
    {

        private static final CharacterDeserializer primitiveInstance = new CharacterDeserializer(java/lang/Character, Character.valueOf('\0'));
        private static final long serialVersionUID = 1L;
        private static final CharacterDeserializer wrapperInstance;

        public final Character deserialize(l l1, DeserializationContext deserializationcontext)
        {
            r r1 = l1.getCurrentToken();
            if (r1 == r.i)
            {
                int i = l1.getIntValue();
                if (i >= 0 && i <= 65535)
                {
                    return Character.valueOf((char)i);
                }
            } else
            if (r1 == r.h)
            {
                String s = l1.getText();
                if (s.length() == 1)
                {
                    return Character.valueOf(s.charAt(0));
                }
                if (s.length() == 0)
                {
                    return (Character)getEmptyValue();
                }
            }
            throw deserializationcontext.mappingException(_valueClass, r1);
        }

        public final volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
        {
            return deserialize(l1, deserializationcontext);
        }

        static 
        {
            wrapperInstance = new CharacterDeserializer(Character.TYPE, null);
        }



        public CharacterDeserializer(Class class1, Character character)
        {
            super(class1, character);
        }
    }


    private class IntegerDeserializer extends PrimitiveOrWrapperDeserializer
    {

        private static final IntegerDeserializer primitiveInstance = new IntegerDeserializer(java/lang/Integer, Integer.valueOf(0));
        private static final long serialVersionUID = 1L;
        private static final IntegerDeserializer wrapperInstance;

        public final Integer deserialize(l l, DeserializationContext deserializationcontext)
        {
            return _parseInteger(l, deserializationcontext);
        }

        public final volatile Object deserialize(l l, DeserializationContext deserializationcontext)
        {
            return deserialize(l, deserializationcontext);
        }

        public final Integer deserializeWithType(l l, DeserializationContext deserializationcontext, TypeDeserializer typedeserializer)
        {
            return _parseInteger(l, deserializationcontext);
        }

        public final volatile Object deserializeWithType(l l, DeserializationContext deserializationcontext, TypeDeserializer typedeserializer)
        {
            return deserializeWithType(l, deserializationcontext, typedeserializer);
        }

        static 
        {
            wrapperInstance = new IntegerDeserializer(Integer.TYPE, null);
        }



        public IntegerDeserializer(Class class1, Integer integer)
        {
            super(class1, integer);
        }
    }


    private class LongDeserializer extends PrimitiveOrWrapperDeserializer
    {

        private static final LongDeserializer primitiveInstance = new LongDeserializer(java/lang/Long, Long.valueOf(0L));
        private static final long serialVersionUID = 1L;
        private static final LongDeserializer wrapperInstance;

        public final Long deserialize(l l, DeserializationContext deserializationcontext)
        {
            return _parseLong(l, deserializationcontext);
        }

        public final volatile Object deserialize(l l, DeserializationContext deserializationcontext)
        {
            return deserialize(l, deserializationcontext);
        }

        static 
        {
            wrapperInstance = new LongDeserializer(Long.TYPE, null);
        }



        public LongDeserializer(Class class1, Long long1)
        {
            super(class1, long1);
        }
    }


    private class FloatDeserializer extends PrimitiveOrWrapperDeserializer
    {

        private static final FloatDeserializer primitiveInstance = new FloatDeserializer(java/lang/Float, Float.valueOf(0.0F));
        private static final long serialVersionUID = 1L;
        private static final FloatDeserializer wrapperInstance;

        public final Float deserialize(l l, DeserializationContext deserializationcontext)
        {
            return _parseFloat(l, deserializationcontext);
        }

        public final volatile Object deserialize(l l, DeserializationContext deserializationcontext)
        {
            return deserialize(l, deserializationcontext);
        }

        static 
        {
            wrapperInstance = new FloatDeserializer(Float.TYPE, null);
        }



        public FloatDeserializer(Class class1, Float float1)
        {
            super(class1, float1);
        }
    }


    private class DoubleDeserializer extends PrimitiveOrWrapperDeserializer
    {

        private static final DoubleDeserializer primitiveInstance = new DoubleDeserializer(java/lang/Double, Double.valueOf(0.0D));
        private static final long serialVersionUID = 1L;
        private static final DoubleDeserializer wrapperInstance;

        public final Double deserialize(l l, DeserializationContext deserializationcontext)
        {
            return _parseDouble(l, deserializationcontext);
        }

        public final volatile Object deserialize(l l, DeserializationContext deserializationcontext)
        {
            return deserialize(l, deserializationcontext);
        }

        public final Double deserializeWithType(l l, DeserializationContext deserializationcontext, TypeDeserializer typedeserializer)
        {
            return _parseDouble(l, deserializationcontext);
        }

        public final volatile Object deserializeWithType(l l, DeserializationContext deserializationcontext, TypeDeserializer typedeserializer)
        {
            return deserializeWithType(l, deserializationcontext, typedeserializer);
        }

        static 
        {
            wrapperInstance = new DoubleDeserializer(Double.TYPE, null);
        }



        public DoubleDeserializer(Class class1, Double double1)
        {
            super(class1, double1);
        }
    }


    private class NumberDeserializer extends StdScalarDeserializer
    {

        public static final NumberDeserializer instance = new NumberDeserializer();

        public final Number deserialize(l l1, DeserializationContext deserializationcontext)
        {
            r r1;
            String s;
label0:
            {
                r1 = l1.getCurrentToken();
                if (r1 == r.i)
                {
                    if (deserializationcontext.isEnabled(DeserializationFeature.USE_BIG_INTEGER_FOR_INTS))
                    {
                        return l1.getBigIntegerValue();
                    } else
                    {
                        return l1.getNumberValue();
                    }
                }
                if (r1 == r.j)
                {
                    if (deserializationcontext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS))
                    {
                        return l1.getDecimalValue();
                    } else
                    {
                        return Double.valueOf(l1.getDoubleValue());
                    }
                }
                if (r1 != r.h)
                {
                    break MISSING_BLOCK_LABEL_199;
                }
                s = l1.getText().trim();
                BigDecimal bigdecimal;
                try
                {
                    if (s.indexOf('.') < 0)
                    {
                        break MISSING_BLOCK_LABEL_137;
                    }
                    if (!deserializationcontext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS))
                    {
                        break label0;
                    }
                    bigdecimal = new BigDecimal(s);
                }
                catch (IllegalArgumentException illegalargumentexception)
                {
                    throw deserializationcontext.weirdStringException(s, _valueClass, "not a valid number");
                }
                return bigdecimal;
            }
            return new Double(s);
            long l2;
            if (deserializationcontext.isEnabled(DeserializationFeature.USE_BIG_INTEGER_FOR_INTS))
            {
                return new BigInteger(s);
            }
            l2 = Long.parseLong(s);
            if (l2 > 0x7fffffffL || l2 < 0xffffffff80000000L)
            {
                break MISSING_BLOCK_LABEL_189;
            }
            return Integer.valueOf((int)l2);
            Long long1 = Long.valueOf(l2);
            return long1;
            throw deserializationcontext.mappingException(_valueClass, r1);
        }

        public final volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
        {
            return deserialize(l1, deserializationcontext);
        }

        public final Object deserializeWithType(l l1, DeserializationContext deserializationcontext, TypeDeserializer typedeserializer)
        {
            switch (_cls1..SwitchMap.com.fasterxml.jackson.core.JsonToken[l1.getCurrentToken().ordinal()])
            {
            default:
                return typedeserializer.deserializeTypedFromScalar(l1, deserializationcontext);

            case 1: // '\001'
            case 2: // '\002'
            case 3: // '\003'
                return deserialize(l1, deserializationcontext);
            }
        }


        public NumberDeserializer()
        {
            super(java/lang/Number);
        }

        private class _cls1
        {

            static final int $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[];
            static final int $SwitchMap$com$fasterxml$jackson$core$JsonToken[];

            static 
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType = new int[o.a().length];
                try
                {
                    $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[-1 + o.a] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[-1 + o.b] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                $SwitchMap$com$fasterxml$jackson$core$JsonToken = new int[r.values().length];
                try
                {
                    $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.i.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.j.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.h.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror4)
                {
                    return;
                }
            }
        }

    }


    private class BigDecimalDeserializer extends StdScalarDeserializer
    {

        public static final BigDecimalDeserializer instance = new BigDecimalDeserializer();

        public volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
        {
            return deserialize(l1, deserializationcontext);
        }

        public BigDecimal deserialize(l l1, DeserializationContext deserializationcontext)
        {
            r r1 = l1.getCurrentToken();
            if (r1 == r.i || r1 == r.j)
            {
                return l1.getDecimalValue();
            }
            if (r1 == r.h)
            {
                String s = l1.getText().trim();
                if (s.length() == 0)
                {
                    return null;
                }
                BigDecimal bigdecimal;
                try
                {
                    bigdecimal = new BigDecimal(s);
                }
                catch (IllegalArgumentException illegalargumentexception)
                {
                    throw deserializationcontext.weirdStringException(s, _valueClass, "not a valid representation");
                }
                return bigdecimal;
            } else
            {
                throw deserializationcontext.mappingException(_valueClass, r1);
            }
        }


        public BigDecimalDeserializer()
        {
            super(java/math/BigDecimal);
        }
    }


    private class BigIntegerDeserializer extends StdScalarDeserializer
    {

        public static final BigIntegerDeserializer instance = new BigIntegerDeserializer();

        public volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
        {
            return deserialize(l1, deserializationcontext);
        }

        public BigInteger deserialize(l l1, DeserializationContext deserializationcontext)
        {
            r r1 = l1.getCurrentToken();
            if (r1 != r.i) goto _L2; else goto _L1
_L1:
            _cls1..SwitchMap.com.fasterxml.jackson.core.JsonParser.NumberType[-1 + l1.getNumberType$72641f5()];
            JVM INSTR tableswitch 1 2: default 44
        //                       1 63
        //                       2 63;
               goto _L3 _L4 _L4
_L3:
            String s;
            s = l1.getText().trim();
            if (s.length() == 0)
            {
                return null;
            }
            break; /* Loop/switch isn't completed */
_L4:
            return BigInteger.valueOf(l1.getLongValue());
_L2:
            if (r1 == r.j)
            {
                return l1.getDecimalValue().toBigInteger();
            }
            if (r1 != r.h)
            {
                throw deserializationcontext.mappingException(_valueClass, r1);
            }
            if (true) goto _L3; else goto _L5
_L5:
            BigInteger biginteger;
            try
            {
                biginteger = new BigInteger(s);
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                throw deserializationcontext.weirdStringException(s, _valueClass, "not a valid representation");
            }
            return biginteger;
        }


        public BigIntegerDeserializer()
        {
            super(java/math/BigInteger);
        }
    }

}
