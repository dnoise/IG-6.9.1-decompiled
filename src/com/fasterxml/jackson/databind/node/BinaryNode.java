// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.a.a;
import com.fasterxml.jackson.a.b;
import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializerProvider;
import java.util.Arrays;

// Referenced classes of package com.fasterxml.jackson.databind.node:
//            ValueNode, JsonNodeType

public final class BinaryNode extends ValueNode
{

    static final BinaryNode EMPTY_BINARY_NODE = new BinaryNode(new byte[0]);
    final byte _data[];

    public BinaryNode(byte abyte0[])
    {
        _data = abyte0;
    }

    public BinaryNode(byte abyte0[], int i, int j)
    {
        if (i == 0 && j == abyte0.length)
        {
            _data = abyte0;
            return;
        } else
        {
            _data = new byte[j];
            System.arraycopy(abyte0, i, _data, 0, j);
            return;
        }
    }

    public static BinaryNode valueOf(byte abyte0[])
    {
        if (abyte0 == null)
        {
            return null;
        }
        if (abyte0.length == 0)
        {
            return EMPTY_BINARY_NODE;
        } else
        {
            return new BinaryNode(abyte0);
        }
    }

    public static BinaryNode valueOf(byte abyte0[], int i, int j)
    {
        if (abyte0 == null)
        {
            return null;
        }
        if (j == 0)
        {
            return EMPTY_BINARY_NODE;
        } else
        {
            return new BinaryNode(abyte0, i, j);
        }
    }

    public final String asText()
    {
        return b.a().a(_data, false);
    }

    public final r asToken()
    {
        return r.g;
    }

    public final byte[] binaryValue()
    {
        return _data;
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
                    return Arrays.equals(((BinaryNode)obj)._data, _data);
                }
            }
        }
        return flag;
    }

    public final JsonNodeType getNodeType()
    {
        return JsonNodeType.BINARY;
    }

    public final int hashCode()
    {
        if (_data == null)
        {
            return -1;
        } else
        {
            return _data.length;
        }
    }

    public final void serialize(h h1, SerializerProvider serializerprovider)
    {
        h1.writeBinary(serializerprovider.getConfig().getBase64Variant(), _data, 0, _data.length);
    }

    public final String toString()
    {
        return b.a().a(_data, true);
    }

}
