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

public final class LongNode extends NumericNode
{

    final long _value;

    public LongNode(long l)
    {
        _value = l;
    }

    public static LongNode valueOf(long l)
    {
        return new LongNode(l);
    }

    public final boolean asBoolean(boolean flag)
    {
        return _value != 0L;
    }

    public final String asText()
    {
        return i.a(_value);
    }

    public final r asToken()
    {
        return r.i;
    }

    public final BigInteger bigIntegerValue()
    {
        return BigInteger.valueOf(_value);
    }

    public final boolean canConvertToInt()
    {
        return _value >= 0xffffffff80000000L && _value <= 0x7fffffffL;
    }

    public final boolean canConvertToLong()
    {
        return true;
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
            if (((LongNode)obj)._value != _value)
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
        return (int)_value ^ (int)(_value >> 32);
    }

    public final int intValue()
    {
        return (int)_value;
    }

    public final boolean isIntegralNumber()
    {
        return true;
    }

    public final boolean isLong()
    {
        return true;
    }

    public final long longValue()
    {
        return _value;
    }

    public final int numberType$72641f5()
    {
        return o.b;
    }

    public final Number numberValue()
    {
        return Long.valueOf(_value);
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
