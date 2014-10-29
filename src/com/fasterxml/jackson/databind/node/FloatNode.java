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

public final class FloatNode extends NumericNode
{

    protected final float _value;

    public FloatNode(float f)
    {
        _value = f;
    }

    public static FloatNode valueOf(float f)
    {
        return new FloatNode(f);
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
        return _value >= -2.147484E+09F && _value <= 2.147484E+09F;
    }

    public final boolean canConvertToLong()
    {
        return _value >= -9.223372E+18F && _value <= 9.223372E+18F;
    }

    public final BigDecimal decimalValue()
    {
        return BigDecimal.valueOf(_value);
    }

    public final double doubleValue()
    {
        return (double)_value;
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
            float f = ((FloatNode)obj)._value;
            if (Float.compare(_value, f) != 0)
            {
                return false;
            }
        }
        return true;
    }

    public final float floatValue()
    {
        return _value;
    }

    public final int hashCode()
    {
        return Float.floatToIntBits(_value);
    }

    public final int intValue()
    {
        return (int)_value;
    }

    public final boolean isFloat()
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
        return o.d;
    }

    public final Number numberValue()
    {
        return Float.valueOf(_value);
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
