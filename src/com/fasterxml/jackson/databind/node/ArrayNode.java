// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.a.v;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.fasterxml.jackson.databind.node:
//            ContainerNode, ObjectNode, JsonNodeType, MissingNode, 
//            BaseJsonNode, JsonNodeFactory

public final class ArrayNode extends ContainerNode
{

    private final List _children = new ArrayList();

    public ArrayNode(JsonNodeFactory jsonnodefactory)
    {
        super(jsonnodefactory);
    }

    private ArrayNode _add(JsonNode jsonnode)
    {
        _children.add(jsonnode);
        return this;
    }

    private ArrayNode _insert(int i, JsonNode jsonnode)
    {
        if (i < 0)
        {
            _children.add(0, jsonnode);
            return this;
        }
        if (i >= _children.size())
        {
            _children.add(jsonnode);
            return this;
        } else
        {
            _children.add(i, jsonnode);
            return this;
        }
    }

    public final ArrayNode add(double d)
    {
        return _add(numberNode(d));
    }

    public final ArrayNode add(float f)
    {
        return _add(numberNode(f));
    }

    public final ArrayNode add(int i)
    {
        _add(numberNode(i));
        return this;
    }

    public final ArrayNode add(long l)
    {
        return _add(numberNode(l));
    }

    public final ArrayNode add(JsonNode jsonnode)
    {
        if (jsonnode == null)
        {
            jsonnode = nullNode();
        }
        _add(jsonnode);
        return this;
    }

    public final ArrayNode add(Boolean boolean1)
    {
        if (boolean1 == null)
        {
            return addNull();
        } else
        {
            return _add(booleanNode(boolean1.booleanValue()));
        }
    }

    public final ArrayNode add(Double double1)
    {
        if (double1 == null)
        {
            return addNull();
        } else
        {
            return _add(numberNode(double1.doubleValue()));
        }
    }

    public final ArrayNode add(Float float1)
    {
        if (float1 == null)
        {
            return addNull();
        } else
        {
            return _add(numberNode(float1.floatValue()));
        }
    }

    public final ArrayNode add(Integer integer)
    {
        if (integer == null)
        {
            return addNull();
        } else
        {
            return _add(numberNode(integer.intValue()));
        }
    }

    public final ArrayNode add(Long long1)
    {
        if (long1 == null)
        {
            return addNull();
        } else
        {
            return _add(numberNode(long1.longValue()));
        }
    }

    public final ArrayNode add(String s)
    {
        if (s == null)
        {
            return addNull();
        } else
        {
            return _add(textNode(s));
        }
    }

    public final ArrayNode add(BigDecimal bigdecimal)
    {
        if (bigdecimal == null)
        {
            return addNull();
        } else
        {
            return _add(numberNode(bigdecimal));
        }
    }

    public final ArrayNode add(boolean flag)
    {
        return _add(booleanNode(flag));
    }

    public final ArrayNode add(byte abyte0[])
    {
        if (abyte0 == null)
        {
            return addNull();
        } else
        {
            return _add(binaryNode(abyte0));
        }
    }

    public final ArrayNode addAll(ArrayNode arraynode)
    {
        _children.addAll(arraynode._children);
        return this;
    }

    public final ArrayNode addAll(Collection collection)
    {
        _children.addAll(collection);
        return this;
    }

    public final ArrayNode addArray()
    {
        ArrayNode arraynode = arrayNode();
        _add(arraynode);
        return arraynode;
    }

    public final ArrayNode addNull()
    {
        _add(nullNode());
        return this;
    }

    public final ObjectNode addObject()
    {
        ObjectNode objectnode = objectNode();
        _add(objectnode);
        return objectnode;
    }

    public final ArrayNode addPOJO(Object obj)
    {
        if (obj == null)
        {
            addNull();
            return this;
        } else
        {
            _add(pojoNode(obj));
            return this;
        }
    }

    public final r asToken()
    {
        return r.d;
    }

    public final volatile JsonNode deepCopy()
    {
        return deepCopy();
    }

    public final ArrayNode deepCopy()
    {
        ArrayNode arraynode = new ArrayNode(_nodeFactory);
        JsonNode jsonnode;
        for (Iterator iterator = _children.iterator(); iterator.hasNext(); arraynode._children.add(jsonnode.deepCopy()))
        {
            jsonnode = (JsonNode)iterator.next();
        }

        return arraynode;
    }

    public final Iterator elements()
    {
        return _children.iterator();
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
                Class class1 = getClass();
                Class class2 = obj.getClass();
                flag = false;
                if (class1 == class2)
                {
                    return _children.equals(((ArrayNode)obj)._children);
                }
            }
        }
        return flag;
    }

    public final volatile JsonNode findParent(String s)
    {
        return findParent(s);
    }

    public final ObjectNode findParent(String s)
    {
        for (Iterator iterator = _children.iterator(); iterator.hasNext();)
        {
            JsonNode jsonnode = ((JsonNode)iterator.next()).findParent(s);
            if (jsonnode != null)
            {
                return (ObjectNode)jsonnode;
            }
        }

        return null;
    }

    public final List findParents(String s, List list)
    {
        for (Iterator iterator = _children.iterator(); iterator.hasNext();)
        {
            list = ((JsonNode)iterator.next()).findParents(s, list);
        }

        return list;
    }

    public final JsonNode findValue(String s)
    {
        for (Iterator iterator = _children.iterator(); iterator.hasNext();)
        {
            JsonNode jsonnode = ((JsonNode)iterator.next()).findValue(s);
            if (jsonnode != null)
            {
                return jsonnode;
            }
        }

        return null;
    }

    public final List findValues(String s, List list)
    {
        for (Iterator iterator = _children.iterator(); iterator.hasNext();)
        {
            list = ((JsonNode)iterator.next()).findValues(s, list);
        }

        return list;
    }

    public final List findValuesAsText(String s, List list)
    {
        for (Iterator iterator = _children.iterator(); iterator.hasNext();)
        {
            list = ((JsonNode)iterator.next()).findValuesAsText(s, list);
        }

        return list;
    }

    public final volatile v get(int i)
    {
        return get(i);
    }

    public final volatile v get(String s)
    {
        return get(s);
    }

    public final JsonNode get(int i)
    {
        if (i >= 0 && i < _children.size())
        {
            return (JsonNode)_children.get(i);
        } else
        {
            return null;
        }
    }

    public final JsonNode get(String s)
    {
        return null;
    }

    public final JsonNodeType getNodeType()
    {
        return JsonNodeType.ARRAY;
    }

    public final int hashCode()
    {
        return _children.hashCode();
    }

    public final ArrayNode insert(int i, double d)
    {
        return _insert(i, numberNode(d));
    }

    public final ArrayNode insert(int i, float f)
    {
        return _insert(i, numberNode(f));
    }

    public final ArrayNode insert(int i, int j)
    {
        _insert(i, numberNode(j));
        return this;
    }

    public final ArrayNode insert(int i, long l)
    {
        return _insert(i, numberNode(l));
    }

    public final ArrayNode insert(int i, JsonNode jsonnode)
    {
        if (jsonnode == null)
        {
            jsonnode = nullNode();
        }
        _insert(i, jsonnode);
        return this;
    }

    public final ArrayNode insert(int i, Boolean boolean1)
    {
        if (boolean1 == null)
        {
            return insertNull(i);
        } else
        {
            return _insert(i, booleanNode(boolean1.booleanValue()));
        }
    }

    public final ArrayNode insert(int i, Double double1)
    {
        if (double1 == null)
        {
            return insertNull(i);
        } else
        {
            return _insert(i, numberNode(double1.doubleValue()));
        }
    }

    public final ArrayNode insert(int i, Float float1)
    {
        if (float1 == null)
        {
            return insertNull(i);
        } else
        {
            return _insert(i, numberNode(float1.floatValue()));
        }
    }

    public final ArrayNode insert(int i, Integer integer)
    {
        if (integer == null)
        {
            insertNull(i);
            return this;
        } else
        {
            _insert(i, numberNode(integer.intValue()));
            return this;
        }
    }

    public final ArrayNode insert(int i, Long long1)
    {
        if (long1 == null)
        {
            return insertNull(i);
        } else
        {
            return _insert(i, numberNode(long1.longValue()));
        }
    }

    public final ArrayNode insert(int i, String s)
    {
        if (s == null)
        {
            return insertNull(i);
        } else
        {
            return _insert(i, textNode(s));
        }
    }

    public final ArrayNode insert(int i, BigDecimal bigdecimal)
    {
        if (bigdecimal == null)
        {
            return insertNull(i);
        } else
        {
            return _insert(i, numberNode(bigdecimal));
        }
    }

    public final ArrayNode insert(int i, boolean flag)
    {
        return _insert(i, booleanNode(flag));
    }

    public final ArrayNode insert(int i, byte abyte0[])
    {
        if (abyte0 == null)
        {
            return insertNull(i);
        } else
        {
            return _insert(i, binaryNode(abyte0));
        }
    }

    public final ArrayNode insertArray(int i)
    {
        ArrayNode arraynode = arrayNode();
        _insert(i, arraynode);
        return arraynode;
    }

    public final ArrayNode insertNull(int i)
    {
        _insert(i, nullNode());
        return this;
    }

    public final ObjectNode insertObject(int i)
    {
        ObjectNode objectnode = objectNode();
        _insert(i, objectnode);
        return objectnode;
    }

    public final ArrayNode insertPOJO(int i, Object obj)
    {
        if (obj == null)
        {
            return insertNull(i);
        } else
        {
            return _insert(i, pojoNode(obj));
        }
    }

    public final volatile v path(int i)
    {
        return path(i);
    }

    public final volatile v path(String s)
    {
        return path(s);
    }

    public final JsonNode path(int i)
    {
        if (i >= 0 && i < _children.size())
        {
            return (JsonNode)_children.get(i);
        } else
        {
            return MissingNode.getInstance();
        }
    }

    public final JsonNode path(String s)
    {
        return MissingNode.getInstance();
    }

    public final JsonNode remove(int i)
    {
        if (i >= 0 && i < _children.size())
        {
            return (JsonNode)_children.remove(i);
        } else
        {
            return null;
        }
    }

    public final ArrayNode removeAll()
    {
        _children.clear();
        return this;
    }

    public final volatile ContainerNode removeAll()
    {
        return removeAll();
    }

    public final void serialize(h h1, SerializerProvider serializerprovider)
    {
        h1.writeStartArray();
        for (Iterator iterator = _children.iterator(); iterator.hasNext(); ((BaseJsonNode)(JsonNode)iterator.next()).serialize(h1, serializerprovider)) { }
        h1.writeEndArray();
    }

    public final void serializeWithType(h h1, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        typeserializer.writeTypePrefixForArray(this, h1);
        for (Iterator iterator = _children.iterator(); iterator.hasNext(); ((BaseJsonNode)(JsonNode)iterator.next()).serialize(h1, serializerprovider)) { }
        typeserializer.writeTypeSuffixForArray(this, h1);
    }

    public final JsonNode set(int i, JsonNode jsonnode)
    {
        if (jsonnode == null)
        {
            jsonnode = nullNode();
        }
        if (i < 0 || i >= _children.size())
        {
            throw new IndexOutOfBoundsException((new StringBuilder("Illegal index ")).append(i).append(", array size ").append(size()).toString());
        } else
        {
            return (JsonNode)_children.set(i, jsonnode);
        }
    }

    public final int size()
    {
        return _children.size();
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(16 + (size() << 4));
        stringbuilder.append('[');
        int i = _children.size();
        for (int j = 0; j < i; j++)
        {
            if (j > 0)
            {
                stringbuilder.append(',');
            }
            stringbuilder.append(((JsonNode)_children.get(j)).toString());
        }

        stringbuilder.append(']');
        return stringbuilder.toString();
    }
}
