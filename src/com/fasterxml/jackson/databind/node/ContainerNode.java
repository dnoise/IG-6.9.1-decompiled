// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.a.v;
import com.fasterxml.jackson.databind.JsonNode;
import java.math.BigDecimal;
import java.math.BigInteger;

// Referenced classes of package com.fasterxml.jackson.databind.node:
//            BaseJsonNode, JsonNodeCreator, JsonNodeFactory, POJONode, 
//            ArrayNode, BinaryNode, ValueNode, BooleanNode, 
//            NullNode, NumericNode, ObjectNode, TextNode

public abstract class ContainerNode extends BaseJsonNode
    implements JsonNodeCreator
{

    protected final JsonNodeFactory _nodeFactory;

    protected ContainerNode(JsonNodeFactory jsonnodefactory)
    {
        _nodeFactory = jsonnodefactory;
    }

    public final POJONode POJONode(Object obj)
    {
        return (POJONode)_nodeFactory.pojoNode(obj);
    }

    public final ArrayNode arrayNode()
    {
        return _nodeFactory.arrayNode();
    }

    public String asText()
    {
        return "";
    }

    public abstract r asToken();

    public final BinaryNode binaryNode(byte abyte0[])
    {
        return _nodeFactory.binaryNode(abyte0);
    }

    public final BinaryNode binaryNode(byte abyte0[], int i, int j)
    {
        return _nodeFactory.binaryNode(abyte0, i, j);
    }

    public volatile ValueNode binaryNode(byte abyte0[])
    {
        return binaryNode(abyte0);
    }

    public volatile ValueNode binaryNode(byte abyte0[], int i, int j)
    {
        return binaryNode(abyte0, i, j);
    }

    public final BooleanNode booleanNode(boolean flag)
    {
        return _nodeFactory.booleanNode(flag);
    }

    public volatile ValueNode booleanNode(boolean flag)
    {
        return booleanNode(flag);
    }

    public volatile v get(int i)
    {
        return get(i);
    }

    public volatile v get(String s)
    {
        return get(s);
    }

    public abstract JsonNode get(int i);

    public abstract JsonNode get(String s);

    public final NullNode nullNode()
    {
        return _nodeFactory.nullNode();
    }

    public volatile ValueNode nullNode()
    {
        return nullNode();
    }

    public final NumericNode numberNode(byte byte0)
    {
        return _nodeFactory.numberNode(byte0);
    }

    public final NumericNode numberNode(double d)
    {
        return _nodeFactory.numberNode(d);
    }

    public final NumericNode numberNode(float f)
    {
        return _nodeFactory.numberNode(f);
    }

    public final NumericNode numberNode(int i)
    {
        return _nodeFactory.numberNode(i);
    }

    public final NumericNode numberNode(long l)
    {
        return _nodeFactory.numberNode(l);
    }

    public final NumericNode numberNode(BigDecimal bigdecimal)
    {
        return _nodeFactory.numberNode(bigdecimal);
    }

    public final NumericNode numberNode(BigInteger biginteger)
    {
        return _nodeFactory.numberNode(biginteger);
    }

    public final NumericNode numberNode(short word0)
    {
        return _nodeFactory.numberNode(word0);
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

    public final ValueNode numberNode(Byte byte1)
    {
        return _nodeFactory.numberNode(byte1);
    }

    public final ValueNode numberNode(Double double1)
    {
        return _nodeFactory.numberNode(double1);
    }

    public final ValueNode numberNode(Float float1)
    {
        return _nodeFactory.numberNode(float1);
    }

    public final ValueNode numberNode(Integer integer)
    {
        return _nodeFactory.numberNode(integer);
    }

    public final ValueNode numberNode(Long long1)
    {
        return _nodeFactory.numberNode(long1);
    }

    public final ValueNode numberNode(Short short1)
    {
        return _nodeFactory.numberNode(short1);
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

    public final ObjectNode objectNode()
    {
        return _nodeFactory.objectNode();
    }

    public final ValueNode pojoNode(Object obj)
    {
        return _nodeFactory.pojoNode(obj);
    }

    public abstract ContainerNode removeAll();

    public abstract int size();

    public final TextNode textNode(String s)
    {
        return _nodeFactory.textNode(s);
    }

    public volatile ValueNode textNode(String s)
    {
        return textNode(s);
    }
}
