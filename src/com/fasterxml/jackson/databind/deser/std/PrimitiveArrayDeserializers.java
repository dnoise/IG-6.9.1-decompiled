// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            StdDeserializer

public abstract class PrimitiveArrayDeserializers extends StdDeserializer
{

    protected PrimitiveArrayDeserializers(Class class1)
    {
        super(class1);
    }

    public static JsonDeserializer forType(Class class1)
    {
        if (class1 == Integer.TYPE)
        {
            return IntDeser.instance;
        }
        if (class1 == Long.TYPE)
        {
            return LongDeser.instance;
        }
        if (class1 == Byte.TYPE)
        {
            return new ByteDeser();
        }
        if (class1 == Short.TYPE)
        {
            return new ShortDeser();
        }
        if (class1 == Float.TYPE)
        {
            return new FloatDeser();
        }
        if (class1 == Double.TYPE)
        {
            return new DoubleDeser();
        }
        if (class1 == Boolean.TYPE)
        {
            return new BooleanDeser();
        }
        if (class1 == Character.TYPE)
        {
            return new CharDeser();
        } else
        {
            throw new IllegalStateException();
        }
    }

    public Object deserializeWithType(l l, DeserializationContext deserializationcontext, TypeDeserializer typedeserializer)
    {
        return typedeserializer.deserializeTypedFromArray(l, deserializationcontext);
    }

    private class IntDeser extends PrimitiveArrayDeserializers
    {

        public static final IntDeser instance = new IntDeser();
        private static final long serialVersionUID = 1L;

        private final int[] handleNonArray(l l1, DeserializationContext deserializationcontext)
        {
            if (l1.getCurrentToken() == r.h && deserializationcontext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && l1.getText().length() == 0)
            {
                return null;
            }
            if (!deserializationcontext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY))
            {
                throw deserializationcontext.mappingException(_valueClass);
            } else
            {
                int ai[] = new int[1];
                ai[0] = _parseIntPrimitive(l1, deserializationcontext);
                return ai;
            }
        }

        public final volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
        {
            return deserialize(l1, deserializationcontext);
        }

        public final int[] deserialize(l l1, DeserializationContext deserializationcontext)
        {
            if (!l1.isExpectedStartArrayToken())
            {
                return handleNonArray(l1, deserializationcontext);
            }
            com.fasterxml.jackson.databind.util.ArrayBuilders.IntBuilder intbuilder = deserializationcontext.getArrayBuilders().getIntBuilder();
            int ai[] = (int[])intbuilder.resetAndStart();
            int i = 0;
            while (l1.nextToken() != r.e) 
            {
                int j = _parseIntPrimitive(l1, deserializationcontext);
                int k;
                if (i >= ai.length)
                {
                    int ai1[] = (int[])intbuilder.appendCompletedChunk(ai, i);
                    k = 0;
                    ai = ai1;
                } else
                {
                    k = i;
                }
                i = k + 1;
                ai[k] = j;
            }
            return (int[])intbuilder.completeAndClearBuffer(ai, i);
        }


        public IntDeser()
        {
            super([I);
        }
    }


    private class LongDeser extends PrimitiveArrayDeserializers
    {

        public static final LongDeser instance = new LongDeser();
        private static final long serialVersionUID = 1L;

        private final long[] handleNonArray(l l1, DeserializationContext deserializationcontext)
        {
            if (l1.getCurrentToken() == r.h && deserializationcontext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && l1.getText().length() == 0)
            {
                return null;
            }
            if (!deserializationcontext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY))
            {
                throw deserializationcontext.mappingException(_valueClass);
            } else
            {
                long al[] = new long[1];
                al[0] = _parseLongPrimitive(l1, deserializationcontext);
                return al;
            }
        }

        public final volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
        {
            return deserialize(l1, deserializationcontext);
        }

        public final long[] deserialize(l l1, DeserializationContext deserializationcontext)
        {
            if (!l1.isExpectedStartArrayToken())
            {
                return handleNonArray(l1, deserializationcontext);
            }
            com.fasterxml.jackson.databind.util.ArrayBuilders.LongBuilder longbuilder = deserializationcontext.getArrayBuilders().getLongBuilder();
            long al[] = (long[])longbuilder.resetAndStart();
            int i = 0;
            while (l1.nextToken() != r.e) 
            {
                long l2 = _parseLongPrimitive(l1, deserializationcontext);
                int j;
                if (i >= al.length)
                {
                    long al1[] = (long[])longbuilder.appendCompletedChunk(al, i);
                    j = 0;
                    al = al1;
                } else
                {
                    j = i;
                }
                i = j + 1;
                al[j] = l2;
            }
            return (long[])longbuilder.completeAndClearBuffer(al, i);
        }


        public LongDeser()
        {
            super([J);
        }
    }


    private class ByteDeser extends PrimitiveArrayDeserializers
    {

        private static final long serialVersionUID = 1L;

        private final byte[] handleNonArray(l l1, DeserializationContext deserializationcontext)
        {
            if (l1.getCurrentToken() == r.h && deserializationcontext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && l1.getText().length() == 0)
            {
                return null;
            }
            if (!deserializationcontext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY))
            {
                throw deserializationcontext.mappingException(_valueClass);
            }
            r r1 = l1.getCurrentToken();
            byte byte0;
            if (r1 == r.i || r1 == r.j)
            {
                byte0 = l1.getByteValue();
            } else
            {
                if (r1 != r.m)
                {
                    throw deserializationcontext.mappingException(_valueClass.getComponentType());
                }
                byte0 = 0;
            }
            return (new byte[] {
                byte0
            });
        }

        public final volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
        {
            return deserialize(l1, deserializationcontext);
        }

        public final byte[] deserialize(l l1, DeserializationContext deserializationcontext)
        {
            r r1 = l1.getCurrentToken();
            if (r1 == r.h)
            {
                return l1.getBinaryValue(deserializationcontext.getBase64Variant());
            }
            if (r1 == r.g)
            {
                Object obj = l1.getEmbeddedObject();
                if (obj == null)
                {
                    return null;
                }
                if (obj instanceof byte[])
                {
                    return (byte[])(byte[])obj;
                }
            }
            if (!l1.isExpectedStartArrayToken())
            {
                return handleNonArray(l1, deserializationcontext);
            }
            com.fasterxml.jackson.databind.util.ArrayBuilders.ByteBuilder bytebuilder = deserializationcontext.getArrayBuilders().getByteBuilder();
            byte abyte0[] = (byte[])bytebuilder.resetAndStart();
            int i = 0;
            byte abyte1[] = abyte0;
            do
            {
                r r2 = l1.nextToken();
                if (r2 != r.e)
                {
                    byte byte0;
                    int j;
                    byte abyte2[];
                    int k;
                    if (r2 == r.i || r2 == r.j)
                    {
                        byte0 = l1.getByteValue();
                    } else
                    {
                        if (r2 != r.m)
                        {
                            throw deserializationcontext.mappingException(_valueClass.getComponentType());
                        }
                        byte0 = 0;
                    }
                    if (i >= abyte1.length)
                    {
                        abyte2 = (byte[])bytebuilder.appendCompletedChunk(abyte1, i);
                        j = 0;
                    } else
                    {
                        j = i;
                        abyte2 = abyte1;
                    }
                    k = j + 1;
                    abyte2[j] = byte0;
                    abyte1 = abyte2;
                    i = k;
                } else
                {
                    return (byte[])bytebuilder.completeAndClearBuffer(abyte1, i);
                }
            } while (true);
        }

        public ByteDeser()
        {
            super([B);
        }
    }


    private class ShortDeser extends PrimitiveArrayDeserializers
    {

        private static final long serialVersionUID = 1L;

        private final short[] handleNonArray(l l1, DeserializationContext deserializationcontext)
        {
            if (l1.getCurrentToken() == r.h && deserializationcontext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && l1.getText().length() == 0)
            {
                return null;
            }
            if (!deserializationcontext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY))
            {
                throw deserializationcontext.mappingException(_valueClass);
            } else
            {
                short aword0[] = new short[1];
                aword0[0] = _parseShortPrimitive(l1, deserializationcontext);
                return aword0;
            }
        }

        public final volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
        {
            return deserialize(l1, deserializationcontext);
        }

        public final short[] deserialize(l l1, DeserializationContext deserializationcontext)
        {
            if (!l1.isExpectedStartArrayToken())
            {
                return handleNonArray(l1, deserializationcontext);
            }
            com.fasterxml.jackson.databind.util.ArrayBuilders.ShortBuilder shortbuilder = deserializationcontext.getArrayBuilders().getShortBuilder();
            short aword0[] = (short[])shortbuilder.resetAndStart();
            int i = 0;
            while (l1.nextToken() != r.e) 
            {
                short word0 = _parseShortPrimitive(l1, deserializationcontext);
                int j;
                if (i >= aword0.length)
                {
                    short aword1[] = (short[])shortbuilder.appendCompletedChunk(aword0, i);
                    j = 0;
                    aword0 = aword1;
                } else
                {
                    j = i;
                }
                i = j + 1;
                aword0[j] = word0;
            }
            return (short[])shortbuilder.completeAndClearBuffer(aword0, i);
        }

        public ShortDeser()
        {
            super([S);
        }
    }


    private class FloatDeser extends PrimitiveArrayDeserializers
    {

        private static final long serialVersionUID = 1L;

        private final float[] handleNonArray(l l1, DeserializationContext deserializationcontext)
        {
            if (l1.getCurrentToken() == r.h && deserializationcontext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && l1.getText().length() == 0)
            {
                return null;
            }
            if (!deserializationcontext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY))
            {
                throw deserializationcontext.mappingException(_valueClass);
            } else
            {
                float af[] = new float[1];
                af[0] = _parseFloatPrimitive(l1, deserializationcontext);
                return af;
            }
        }

        public final volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
        {
            return deserialize(l1, deserializationcontext);
        }

        public final float[] deserialize(l l1, DeserializationContext deserializationcontext)
        {
            if (!l1.isExpectedStartArrayToken())
            {
                return handleNonArray(l1, deserializationcontext);
            }
            com.fasterxml.jackson.databind.util.ArrayBuilders.FloatBuilder floatbuilder = deserializationcontext.getArrayBuilders().getFloatBuilder();
            float af[] = (float[])floatbuilder.resetAndStart();
            int i = 0;
            while (l1.nextToken() != r.e) 
            {
                float f = _parseFloatPrimitive(l1, deserializationcontext);
                int j;
                if (i >= af.length)
                {
                    float af1[] = (float[])floatbuilder.appendCompletedChunk(af, i);
                    j = 0;
                    af = af1;
                } else
                {
                    j = i;
                }
                i = j + 1;
                af[j] = f;
            }
            return (float[])floatbuilder.completeAndClearBuffer(af, i);
        }

        public FloatDeser()
        {
            super([F);
        }
    }


    private class DoubleDeser extends PrimitiveArrayDeserializers
    {

        private static final long serialVersionUID = 1L;

        private final double[] handleNonArray(l l1, DeserializationContext deserializationcontext)
        {
            if (l1.getCurrentToken() == r.h && deserializationcontext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && l1.getText().length() == 0)
            {
                return null;
            }
            if (!deserializationcontext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY))
            {
                throw deserializationcontext.mappingException(_valueClass);
            } else
            {
                double ad[] = new double[1];
                ad[0] = _parseDoublePrimitive(l1, deserializationcontext);
                return ad;
            }
        }

        public final volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
        {
            return deserialize(l1, deserializationcontext);
        }

        public final double[] deserialize(l l1, DeserializationContext deserializationcontext)
        {
            if (!l1.isExpectedStartArrayToken())
            {
                return handleNonArray(l1, deserializationcontext);
            }
            com.fasterxml.jackson.databind.util.ArrayBuilders.DoubleBuilder doublebuilder = deserializationcontext.getArrayBuilders().getDoubleBuilder();
            double ad[] = (double[])doublebuilder.resetAndStart();
            int i = 0;
            while (l1.nextToken() != r.e) 
            {
                double d = _parseDoublePrimitive(l1, deserializationcontext);
                int j;
                if (i >= ad.length)
                {
                    double ad1[] = (double[])doublebuilder.appendCompletedChunk(ad, i);
                    j = 0;
                    ad = ad1;
                } else
                {
                    j = i;
                }
                i = j + 1;
                ad[j] = d;
            }
            return (double[])doublebuilder.completeAndClearBuffer(ad, i);
        }

        public DoubleDeser()
        {
            super([D);
        }
    }


    private class BooleanDeser extends PrimitiveArrayDeserializers
    {

        private static final long serialVersionUID = 1L;

        private final boolean[] handleNonArray(l l1, DeserializationContext deserializationcontext)
        {
            if (l1.getCurrentToken() == r.h && deserializationcontext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && l1.getText().length() == 0)
            {
                return null;
            }
            if (!deserializationcontext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY))
            {
                throw deserializationcontext.mappingException(_valueClass);
            } else
            {
                boolean aflag[] = new boolean[1];
                aflag[0] = _parseBooleanPrimitive(l1, deserializationcontext);
                return aflag;
            }
        }

        public final volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
        {
            return deserialize(l1, deserializationcontext);
        }

        public final boolean[] deserialize(l l1, DeserializationContext deserializationcontext)
        {
            if (!l1.isExpectedStartArrayToken())
            {
                return handleNonArray(l1, deserializationcontext);
            }
            com.fasterxml.jackson.databind.util.ArrayBuilders.BooleanBuilder booleanbuilder = deserializationcontext.getArrayBuilders().getBooleanBuilder();
            boolean aflag[] = (boolean[])booleanbuilder.resetAndStart();
            int i = 0;
            while (l1.nextToken() != r.e) 
            {
                boolean flag = _parseBooleanPrimitive(l1, deserializationcontext);
                int j;
                if (i >= aflag.length)
                {
                    boolean aflag1[] = (boolean[])booleanbuilder.appendCompletedChunk(aflag, i);
                    j = 0;
                    aflag = aflag1;
                } else
                {
                    j = i;
                }
                i = j + 1;
                aflag[j] = flag;
            }
            return (boolean[])booleanbuilder.completeAndClearBuffer(aflag, i);
        }

        public BooleanDeser()
        {
            super([Z);
        }
    }


    private class CharDeser extends PrimitiveArrayDeserializers
    {

        private static final long serialVersionUID = 1L;

        public final volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
        {
            return deserialize(l1, deserializationcontext);
        }

        public final char[] deserialize(l l1, DeserializationContext deserializationcontext)
        {
            r r1 = l1.getCurrentToken();
            if (r1 == r.h)
            {
                char ac[] = l1.getTextCharacters();
                int i = l1.getTextOffset();
                int j = l1.getTextLength();
                char ac1[] = new char[j];
                System.arraycopy(ac, i, ac1, 0, j);
                return ac1;
            }
            if (l1.isExpectedStartArrayToken())
            {
                StringBuilder stringbuilder = new StringBuilder(64);
                do
                {
                    r r2 = l1.nextToken();
                    if (r2 != r.e)
                    {
                        if (r2 != r.h)
                        {
                            throw deserializationcontext.mappingException(Character.TYPE);
                        }
                        String s = l1.getText();
                        if (s.length() != 1)
                        {
                            throw JsonMappingException.from(l1, (new StringBuilder("Can not convert a JSON String of length ")).append(s.length()).append(" into a char element of char array").toString());
                        }
                        stringbuilder.append(s.charAt(0));
                    } else
                    {
                        return stringbuilder.toString().toCharArray();
                    }
                } while (true);
            }
            if (r1 == r.g)
            {
                Object obj = l1.getEmbeddedObject();
                if (obj == null)
                {
                    return null;
                }
                if (obj instanceof char[])
                {
                    return (char[])(char[])obj;
                }
                if (obj instanceof String)
                {
                    return ((String)obj).toCharArray();
                }
                if (obj instanceof byte[])
                {
                    return b.a().a((byte[])(byte[])obj, false).toCharArray();
                }
            }
            throw deserializationcontext.mappingException(_valueClass);
        }

        public CharDeser()
        {
            super([C);
        }
    }

}
