// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.a.c.i;
import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.a.o;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.SerializerProvider;
import java.math.BigDecimal;
import java.math.BigInteger;

// Referenced classes of package com.fasterxml.jackson.databind.node:
//            NumericNode

public final class DoubleNode extends NumericNode
{

    protected final double _value;

    public DoubleNode(double d)
    {
        _value = d;
    }

    public static DoubleNode valueOf(double d)
    {
        return new DoubleNode(d);
    }

    public final String asText()
    {
        return i.a(_value);
    }

    public final r asToken()
    {
        return r.j;
    }

    public final BigInteger bigIntegerValue()
    {
        return decimalValue().toBigInteger();
    }

    public final boolean canConvertToInt()
    {
        return _value >= -2147483648D && _value <= 2147483647D;
    }

    public final boolean canConvertToLong()
    {
        return _value >= -9.2233720368547758E+18D && _value <= 9.2233720368547758E+18D;
    }

    public final BigDecimal decimalValue()
    {
        return BigDecimal.valueOf(_value);
    }

    public final double doubleValue()
    {
        return _value;
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
            double d = ((DoubleNode)obj)._value;
            if (Double.compare(_value, d) != 0)
            {
                return false;
            }
        }
        return true;
    }

    public final float floatValue()
    {
        return (float)_value;
    }

    public final int hashCode()
    {
        long l = Double.doubleToLongBits(_value);
        return (int)l ^ (int)(l >> 32);
    }

    public final int intValue()
    {
        return (int)_value;
    }

    public final boolean isDouble()
    {
        return true;
    }

    public final boolean isFloatingPointNumber()
    {
        return true;
    }

    public final long longValue()
    {
        return (long)_value;
    }

    public final int numberType$72641f5()
    {
        return o.e;
    }

    public final Number numberValue()
    {
        return Double.valueOf(_value);
    }

    public final void serialize(h h1, SerializerProvider serializerprovider)
    {
        h1.writeNumber(_value);
    }

    public final short shortValue()
    {
        return (short)(int)_value;
    }
}
