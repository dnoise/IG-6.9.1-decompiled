// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.node;

import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;

// Referenced classes of package com.fasterxml.jackson.databind.node:
//            JsonNodeCreator, POJONode, ArrayNode, BinaryNode, 
//            BooleanNode, NullNode, IntNode, DoubleNode, 
//            FloatNode, LongNode, DecimalNode, BigIntegerNode, 
//            ShortNode, ObjectNode, TextNode, ValueNode, 
//            NumericNode

public class JsonNodeFactory
    implements JsonNodeCreator, Serializable
{

    private static final JsonNodeFactory decimalsAsIs = new JsonNodeFactory(true);
    private static final JsonNodeFactory decimalsNormalized;
    public static final JsonNodeFactory instance;
    private static final long serialVersionUID = 0xd297bb545c7178e6L;
    private final boolean _cfgBigDecimalExact;

    protected JsonNodeFactory()
    {
        this(false);
    }

    public JsonNodeFactory(boolean flag)
    {
        _cfgBigDecimalExact = flag;
    }

    public static JsonNodeFactory withExactBigDecimals(boolean flag)
    {
        if (flag)
        {
            return decimalsAsIs;
        } else
        {
            return decimalsNormalized;
        }
    }

    public POJONode POJONode(Object obj)
    {
        return new POJONode(obj);
    }

    public ArrayNode arrayNode()
    {
        return new ArrayNode(this);
    }

    public BinaryNode binaryNode(byte abyte0[])
    {
        return BinaryNode.valueOf(abyte0);
    }

    public BinaryNode binaryNode(byte abyte0[], int i, int j)
    {
        return BinaryNode.valueOf(abyte0, i, j);
    }

    public volatile ValueNode binaryNode(byte abyte0[])
    {
        return binaryNode(abyte0);
    }

    public volatile ValueNode binaryNode(byte abyte0[], int i, int j)
    {
        return binaryNode(abyte0, i, j);
    }

    public BooleanNode booleanNode(boolean flag)
    {
        if (flag)
        {
            return BooleanNode.getTrue();
        } else
        {
            return BooleanNode.getFalse();
        }
    }

    public volatile ValueNode booleanNode(boolean flag)
    {
        return booleanNode(flag);
    }

    public NullNode nullNode()
    {
        return NullNode.getInstance();
    }

    public volatile ValueNode nullNode()
    {
        return nullNode();
    }

    public NumericNode numberNode(byte byte0)
    {
        return IntNode.valueOf(byte0);
    }

    public NumericNode numberNode(double d)
    {
        return DoubleNode.valueOf(d);
    }

    public NumericNode numberNode(float f)
    {
        return FloatNode.valueOf(f);
    }

    public NumericNode numberNode(int i)
    {
        return IntNode.valueOf(i);
    }

    public NumericNode numberNode(long l)
    {
        return LongNode.valueOf(l);
    }

    public NumericNode numberNode(BigDecimal bigdecimal)
    {
        if (_cfgBigDecimalExact)
        {
            return DecimalNode.valueOf(bigdecimal);
        }
        if (bigdecimal.compareTo(BigDecimal.ZERO) == 0)
        {
            return DecimalNode.ZERO;
        } else
        {
            return DecimalNode.valueOf(bigdecimal.stripTrailingZeros());
        }
    }

    public NumericNode numberNode(BigInteger biginteger)
    {
        return BigIntegerNode.valueOf(biginteger);
    }

    public NumericNode numberNode(short word0)
    {
        return ShortNode.valueOf(word0);
    }

    public volatile ValueNode numberNode(byte byte0)
    {
        return numberNode(byte0);
    }

    public volatile ValueNode numberNode(double d)
    {
        return numberNode(d);
    }

    public volatile ValueNode numberNode(float f)
    {
        return numberNode(f);
    }

    public volatile ValueNode numberNode(int i)
    {
        return numberNode(i);
    }

    public volatile ValueNode numberNode(long l)
    {
        return numberNode(l);
    }

    public ValueNode numberNode(Byte byte1)
    {
        if (byte1 == null)
        {
            return nullNode();
        } else
        {
            return IntNode.valueOf(byte1.intValue());
        }
    }

    public ValueNode numberNode(Double double1)
    {
        if (double1 == null)
        {
            return nullNode();
        } else
        {
            return DoubleNode.valueOf(double1.doubleValue());
        }
    }

    public ValueNode numberNode(Float float1)
    {
        if (float1 == null)
        {
            return nullNode();
        } else
        {
            return FloatNode.valueOf(float1.floatValue());
        }
    }

    public ValueNode numberNode(Integer integer)
    {
        if (integer == null)
        {
            return nullNode();
        } else
        {
            return IntNode.valueOf(integer.intValue());
        }
    }

    public ValueNode numberNode(Long long1)
    {
        if (long1 == null)
        {
            return nullNode();
        } else
        {
            return LongNode.valueOf(long1.longValue());
        }
    }

    public ValueNode numberNode(Short short1)
    {
        if (short1 == null)
        {
            return nullNode();
        } else
        {
            return ShortNode.valueOf(short1.shortValue());
        }
    }

    public volatile ValueNode numberNode(BigDecimal bigdecimal)
    {
        return numberNode(bigdecimal);
    }

    public volatile ValueNode numberNode(BigInteger biginteger)
    {
        return numberNode(biginteger);
    }

    public volatile ValueNode numberNode(short word0)
    {
        return numberNode(word0);
    }

    public ObjectNode objectNode()
    {
        return new ObjectNode(this);
    }

    public ValueNode pojoNode(Object obj)
    {
        return new POJONode(obj);
    }

    public TextNode textNode(String s)
    {
        return TextNode.valueOf(s);
    }

    public volatile ValueNode textNode(String s)
    {
        return textNode(s);
    }

    static 
    {
        decimalsNormalized = new JsonNodeFactory(false);
        instance = decimalsNormalized;
    }
}
