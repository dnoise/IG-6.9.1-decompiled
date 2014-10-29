// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.SerializerProvider;

// Referenced classes of package com.fasterxml.jackson.databind.node:
//            ValueNode, JsonNodeType

public final class POJONode extends ValueNode
{

    protected final Object _value;

    public POJONode(Object obj)
    {
        _value = obj;
    }

    public final boolean asBoolean(boolean flag)
    {
        if (_value != null && (_value instanceof Boolean))
        {
            flag = ((Boolean)_value).booleanValue();
        }
        return flag;
    }

    public final double asDouble(double d)
    {
        if (_value instanceof Number)
        {
            d = ((Number)_value).doubleValue();
        }
        return d;
    }

    public final int asInt(int i)
    {
        if (_value instanceof Number)
        {
            i = ((Number)_value).intValue();
        }
        return i;
    }

    public final long asLong(long l)
    {
        if (_value instanceof Number)
        {
            l = ((Number)_value).longValue();
        }
        return l;
    }

    public final String asText()
    {
        if (_value == null)
        {
            return "null";
        } else
        {
            return _value.toString();
        }
    }

    public final r asToken()
    {
        return r.g;
    }

    public final byte[] binaryValue()
    {
        if (_value instanceof byte[])
        {
            return (byte[])(byte[])_value;
        } else
        {
            return super.binaryValue();
        }
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
            POJONode pojonode = (POJONode)obj;
            if (_value == null)
            {
                if (pojonode._value != null)
                {
                    return false;
                }
            } else
            {
                return _value.equals(pojonode._value);
            }
        }
        return true;
    }

    public final JsonNodeType getNodeType()
    {
        return JsonNodeType.POJO;
    }

    public final Object getPojo()
    {
        return _value;
    }

    public final int hashCode()
    {
        return _value.hashCode();
    }

    public final void serialize(h h1, SerializerProvider serializerprovider)
    {
        if (_value == null)
        {
            serializerprovider.defaultSerializeNull(h1);
            return;
        } else
        {
            h1.writeObject(_value);
            return;
        }
    }

    public final String toString()
    {
        return String.valueOf(_value);
    }
}
