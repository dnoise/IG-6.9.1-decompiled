// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.a.o;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.SerializerProvider;
import java.math.BigDecimal;
import java.math.BigInteger;

// Referenced classes of package com.fasterxml.jackson.databind.node:
//            NumericNode

public final class BigIntegerNode extends NumericNode
{

    private static final BigInteger MAX_INTEGER = BigInteger.valueOf(0x7fffffffL);
    private static final BigInteger MAX_LONG = BigInteger.valueOf(0x7fffffffffffffffL);
    private static final BigInteger MIN_INTEGER = BigInteger.valueOf(0xffffffff80000000L);
    private static final BigInteger MIN_LONG = BigInteger.valueOf(0x8000000000000000L);
    protected final BigInteger _value;

    public BigIntegerNode(BigInteger biginteger)
    {
        _value = biginteger;
    }

    public static BigIntegerNode valueOf(BigInteger biginteger)
    {
        return new BigIntegerNode(biginteger);
    }

    public final boolean asBoolean(boolean flag)
    {
        return !BigInteger.ZERO.equals(_value);
    }

    public final String asText()
    {
        return _value.toString();
    }

    public final r asToken()
    {
        return r.i;
    }

    public final BigInteger bigIntegerValue()
    {
        return _value;
    }

    public final boolean canConvertToInt()
    {
        return _value.compareTo(MIN_INTEGER) >= 0 && _value.compareTo(MAX_INTEGER) <= 0;
    }

    public final boolean canConvertToLong()
    {
        return _value.compareTo(MIN_LONG) >= 0 && _value.compareTo(MAX_LONG) <= 0;
    }

    public final BigDecimal decimalValue()
    {
        return new BigDecimal(_value);
    }

    public final double doubleValue()
    {
        return _value.doubleValue();
    }

    public final boolean equals(Object obj)
    {
        boolean flag;
        if (obj == this)
        {
            flag = true;
        } else
        {
            flag = false;
            if (obj != null)
            {
                Class class1 = obj.getClass();
                Class class2 = getClass();
                flag = false;
                if (class1 == class2)
                {
                    return ((BigIntegerNode)obj)._value.equals(_value);
                }
            }
        }
        return flag;
    }

    public final float floatValue()
    {
        return _value.floatValue();
    }

    public final int hashCode()
    {
        return _value.hashCode();
    }

    public final int intValue()
    {
        return _value.intValue();
    }

    public final boolean isBigInteger()
    {
        return true;
    }

    public final boolean isIntegralNumber()
    {
        return true;
    }

    public final long longValue()
    {
        return _value.longValue();
    }

    public final int numberType$72641f5()
    {
        return o.c;
    }

    public final Number numberValue()
    {
        return _value;
    }

    public final void serialize(h h1, SerializerProvider serializerprovider)
    {
        h1.writeNumber(_value);
    }

    public final short shortValue()
    {
        return _value.shortValue();
    }

}
