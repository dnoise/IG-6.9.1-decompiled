// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.SerializerProvider;

// Referenced classes of package com.fasterxml.jackson.databind.node:
//            ValueNode, JsonNodeType

public final class BooleanNode extends ValueNode
{

    public static final BooleanNode FALSE = new BooleanNode(false);
    public static final BooleanNode TRUE = new BooleanNode(true);
    private final boolean _value;

    private BooleanNode(boolean flag)
    {
        _value = flag;
    }

    public static BooleanNode getFalse()
    {
        return FALSE;
    }

    public static BooleanNode getTrue()
    {
        return TRUE;
    }

    public static BooleanNode valueOf(boolean flag)
    {
        if (flag)
        {
            return TRUE;
        } else
        {
            return FALSE;
        }
    }

    public final boolean asBoolean()
    {
        return _value;
    }

    public final boolean asBoolean(boolean flag)
    {
        return _value;
    }

    public final double asDouble(double d)
    {
        return !_value ? 0.0D : 1.0D;
    }

    public final int asInt(int i)
    {
        return !_value ? 0 : 1;
    }

    public final long asLong(long l)
    {
        return !_value ? 0L : 1L;
    }

    public final String asText()
    {
        if (_value)
        {
            return "true";
        } else
        {
            return "false";
        }
    }

    public final r asToken()
    {
        if (_value)
        {
            return r.k;
        } else
        {
            return r.l;
        }
    }

    public final boolean booleanValue()
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
            if (_value != ((BooleanNode)obj)._value)
            {
                return false;
            }
        }
        return true;
    }

    public final JsonNodeType getNodeType()
    {
        return JsonNodeType.BOOLEAN;
    }

    public final void serialize(h h1, SerializerProvider serializerprovider)
    {
        h1.writeBoolean(_value);
    }

}
