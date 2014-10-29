// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.a.o;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.math.BigDecimal;
import java.math.BigInteger;

// Referenced classes of package com.fasterxml.jackson.databind.node:
//            NumericNode

public final class DecimalNode extends NumericNode
{

    private static final BigDecimal MAX_INTEGER = BigDecimal.valueOf(0x7fffffffL);
    private static final BigDecimal MAX_LONG = BigDecimal.valueOf(0x7fffffffffffffffL);
    private static final BigDecimal MIN_INTEGER = BigDecimal.valueOf(0xffffffff80000000L);
    private static final BigDecimal MIN_LONG = BigDecimal.valueOf(0x8000000000000000L);
    public static final DecimalNode ZERO;
    protected final BigDecimal _value;

    public DecimalNode(BigDecimal bigdecimal)
    {
        _value = bigdecimal;
    }

    public static DecimalNode valueOf(BigDecimal bigdecimal)
    {
        return new DecimalNode(bigdecimal);
    }

    public final String asText()
    {
        return _value.toString();
    }

    public final r asToken()
    {
        return r.j;
    }

    public final BigInteger bigIntegerValue()
    {
        return _value.toBigInteger();
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
        return _value;
    }

    public final double doubleValue()
    {
        return _value.doubleValue();
    }

    public final boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj == null)
            {
                return false;
            }
            if (obj.getClass() != getClass())
            {
                return false;
            }
            if (((DecimalNode)obj)._value.compareTo(_value) != 0)
            {
                return false;
            }
        }
        return true;
    }

    public final float floatValue()
    {
        return _value.floatValue();
    }

    public final int hashCode()
    {
        return Double.valueOf(_value.doubleValue()).hashCode();
    }

    public final int intValue()
    {
        return _value.intValue();
    }

    public final boolean isBigDecimal()
    {
        return true;
    }

    public final boolean isFloatingPointNumber()
    {
        return true;
    }

    public final long longValue()
    {
        return _value.longValue();
    }

    public final int numberType$72641f5()
    {
        return o.f;
    }

    public final Number numberValue()
    {
        return _value;
    }

    public final void serialize(h h1, SerializerProvider serializerprovider)
    {
        if (serializerprovider.isEnabled(SerializationFeature.WRITE_BIGDECIMAL_AS_PLAIN) && !(h1 instanceof TokenBuffer))
        {
            h1.writeNumber(_value.toPlainString());
            return;
        } else
        {
            h1.writeNumber(_value);
            return;
        }
    }

    public final short shortValue()
    {
        return _value.shortValue();
    }

    static 
    {
        ZERO = new DecimalNode(BigDecimal.ZERO);
    }
}
