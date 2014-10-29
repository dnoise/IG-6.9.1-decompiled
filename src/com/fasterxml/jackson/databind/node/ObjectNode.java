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
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.fasterxml.jackson.databind.node:
//            ContainerNode, JsonNodeType, MissingNode, BaseJsonNode, 
//            TextNode, ArrayNode, JsonNodeFactory

public final class ObjectNode extends ContainerNode
{

    private final Map _children = new LinkedHashMap();

    public ObjectNode(JsonNodeFactory jsonnodefactory)
    {
        super(jsonnodefactory);
    }

    public final r asToken()
    {
        return r.b;
    }

    public final volatile JsonNode deepCopy()
    {
        return deepCopy();
    }

    public final ObjectNode deepCopy()
    {
        ObjectNode objectnode = new ObjectNode(_nodeFactory);
        java.util.Map.Entry entry;
        for (Iterator iterator = _children.entrySet().iterator(); iterator.hasNext(); objectnode._children.put(entry.getKey(), ((JsonNode)entry.getValue()).deepCopy()))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        return objectnode;
    }

    public final Iterator elements()
    {
        return _children.values().iterator();
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
                    return _children.equals(((ObjectNode)obj)._children);
                }
            }
        }
        return flag;
    }

    public final Iterator fieldNames()
    {
        return _children.keySet().iterator();
    }

    public final Iterator fields()
    {
        return _children.entrySet().iterator();
    }

    public final volatile JsonNode findParent(String s)
    {
        return findParent(s);
    }

    public final ObjectNode findParent(String s)
    {
        for (Iterator iterator = _children.entrySet().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if (s.equals(entry.getKey()))
            {
                return this;
            }
            JsonNode jsonnode = ((JsonNode)entry.getValue()).findParent(s);
            if (jsonnode != null)
            {
                return (ObjectNode)jsonnode;
            }
        }

        return null;
    }

    public final List findParents(String s, List list)
    {
        for (Iterator iterator = _children.entrySet().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if (s.equals(entry.getKey()))
            {
                if (list == null)
                {
                    list = new ArrayList();
                }
                list.add(this);
            } else
            {
                list = ((JsonNode)entry.getValue()).findParents(s, list);
            }
        }

        return list;
    }

    public final JsonNode findValue(String s)
    {
        for (Iterator iterator = _children.entrySet().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if (s.equals(entry.getKey()))
            {
                return (JsonNode)entry.getValue();
            }
            JsonNode jsonnode = ((JsonNode)entry.getValue()).findValue(s);
            if (jsonnode != null)
            {
                return jsonnode;
            }
        }

        return null;
    }

    public final List findValues(String s, List list)
    {
        for (Iterator iterator = _children.entrySet().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if (s.equals(entry.getKey()))
            {
                if (list == null)
                {
                    list = new ArrayList();
                }
                list.add(entry.getValue());
            } else
            {
                list = ((JsonNode)entry.getValue()).findValues(s, list);
            }
        }

        return list;
    }

    public final List findValuesAsText(String s, List list)
    {
        for (Iterator iterator = _children.entrySet().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if (s.equals(entry.getKey()))
            {
                if (list == null)
                {
                    list = new ArrayList();
                }
                list.add(((JsonNode)entry.getValue()).asText());
            } else
            {
                list = ((JsonNode)entry.getValue()).findValuesAsText(s, list);
            }
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
        return null;
    }

    public final JsonNode get(String s)
    {
        return (JsonNode)_children.get(s);
    }

    public final JsonNodeType getNodeType()
    {
        return JsonNodeType.OBJECT;
    }

    public final int hashCode()
    {
        return _children.hashCode();
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
        return MissingNode.getInstance();
    }

    public final JsonNode path(String s)
    {
        JsonNode jsonnode = (JsonNode)_children.get(s);
        if (jsonnode != null)
        {
            return jsonnode;
        } else
        {
            return MissingNode.getInstance();
        }
    }

    public final JsonNode put(String s, JsonNode jsonnode)
    {
        if (jsonnode == null)
        {
            jsonnode = nullNode();
        }
        return (JsonNode)_children.put(s, jsonnode);
    }

    public final ObjectNode put(String s, double d)
    {
        _children.put(s, numberNode(d));
        return this;
    }

    public final ObjectNode put(String s, float f)
    {
        _children.put(s, numberNode(f));
        return this;
    }

    public final ObjectNode put(String s, int i)
    {
        _children.put(s, numberNode(i));
        return this;
    }

    public final ObjectNode put(String s, long l)
    {
        _children.put(s, numberNode(l));
        return this;
    }

    public final ObjectNode put(String s, Boolean boolean1)
    {
        if (boolean1 == null)
        {
            _children.put(s, nullNode());
            return this;
        } else
        {
            _children.put(s, booleanNode(boolean1.booleanValue()));
            return this;
        }
    }

    public final ObjectNode put(String s, Double double1)
    {
        if (double1 == null)
        {
            _children.put(s, nullNode());
            return this;
        } else
        {
            _children.put(s, numberNode(double1.doubleValue()));
            return this;
        }
    }

    public final ObjectNode put(String s, Float float1)
    {
        if (float1 == null)
        {
            _children.put(s, nullNode());
            return this;
        } else
        {
            _children.put(s, numberNode(float1.floatValue()));
            return this;
        }
    }

    public final ObjectNode put(String s, Integer integer)
    {
        if (integer == null)
        {
            _children.put(s, nullNode());
            return this;
        } else
        {
            _children.put(s, numberNode(integer.intValue()));
            return this;
        }
    }

    public final ObjectNode put(String s, Long long1)
    {
        if (long1 == null)
        {
            _children.put(s, nullNode());
            return this;
        } else
        {
            _children.put(s, numberNode(long1.longValue()));
            return this;
        }
    }

    public final ObjectNode put(String s, Short short1)
    {
        if (short1 == null)
        {
            _children.put(s, nullNode());
            return this;
        } else
        {
            _children.put(s, numberNode(short1.shortValue()));
            return this;
        }
    }

    public final ObjectNode put(String s, String s1)
    {
        if (s1 == null)
        {
            putNull(s);
            return this;
        } else
        {
            _children.put(s, textNode(s1));
            return this;
        }
    }

    public final ObjectNode put(String s, BigDecimal bigdecimal)
    {
        if (bigdecimal == null)
        {
            putNull(s);
            return this;
        } else
        {
            _children.put(s, numberNode(bigdecimal));
            return this;
        }
    }

    public final ObjectNode put(String s, short word0)
    {
        _children.put(s, numberNode(word0));
        return this;
    }

    public final ObjectNode put(String s, boolean flag)
    {
        _children.put(s, booleanNode(flag));
        return this;
    }

    public final ObjectNode put(String s, byte abyte0[])
    {
        if (abyte0 == null)
        {
            _children.put(s, nullNode());
            return this;
        } else
        {
            _children.put(s, binaryNode(abyte0));
            return this;
        }
    }

    public final JsonNode putAll(ObjectNode objectnode)
    {
        return setAll(objectnode);
    }

    public final JsonNode putAll(Map map)
    {
        return setAll(map);
    }

    public final ArrayNode putArray(String s)
    {
        ArrayNode arraynode = arrayNode();
        _children.put(s, arraynode);
        return arraynode;
    }

    public final ObjectNode putNull(String s)
    {
        _children.put(s, nullNode());
        return this;
    }

    public final ObjectNode putObject(String s)
    {
        ObjectNode objectnode = objectNode();
        _children.put(s, objectnode);
        return objectnode;
    }

    public final ObjectNode putPOJO(String s, Object obj)
    {
        _children.put(s, pojoNode(obj));
        return this;
    }

    public final JsonNode remove(String s)
    {
        return (JsonNode)_children.remove(s);
    }

    public final ObjectNode remove(Collection collection)
    {
        _children.keySet().removeAll(collection);
        return this;
    }

    public final volatile ContainerNode removeAll()
    {
        return removeAll();
    }

    public final ObjectNode removeAll()
    {
        _children.clear();
        return this;
    }

    public final JsonNode replace(String s, JsonNode jsonnode)
    {
        if (jsonnode == null)
        {
            jsonnode = nullNode();
        }
        return (JsonNode)_children.put(s, jsonnode);
    }

    public final ObjectNode retain(Collection collection)
    {
        _children.keySet().retainAll(collection);
        return this;
    }

    public final transient ObjectNode retain(String as[])
    {
        return retain(((Collection) (Arrays.asList(as))));
    }

    public final void serialize(h h1, SerializerProvider serializerprovider)
    {
        h1.writeStartObject();
        java.util.Map.Entry entry;
        for (Iterator iterator = _children.entrySet().iterator(); iterator.hasNext(); ((BaseJsonNode)entry.getValue()).serialize(h1, serializerprovider))
        {
            entry = (java.util.Map.Entry)iterator.next();
            h1.writeFieldName((String)entry.getKey());
        }

        h1.writeEndObject();
    }

    public final void serializeWithType(h h1, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        typeserializer.writeTypePrefixForObject(this, h1);
        java.util.Map.Entry entry;
        for (Iterator iterator = _children.entrySet().iterator(); iterator.hasNext(); ((BaseJsonNode)entry.getValue()).serialize(h1, serializerprovider))
        {
            entry = (java.util.Map.Entry)iterator.next();
            h1.writeFieldName((String)entry.getKey());
        }

        typeserializer.writeTypeSuffixForObject(this, h1);
    }

    public final JsonNode set(String s, JsonNode jsonnode)
    {
        if (jsonnode == null)
        {
            jsonnode = nullNode();
        }
        _children.put(s, jsonnode);
        return this;
    }

    public final JsonNode setAll(ObjectNode objectnode)
    {
        _children.putAll(objectnode._children);
        return this;
    }

    public final JsonNode setAll(Map map)
    {
        java.util.Map.Entry entry;
        Object obj;
        for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); _children.put(entry.getKey(), obj))
        {
            entry = (java.util.Map.Entry)iterator.next();
            obj = (JsonNode)entry.getValue();
            if (obj == null)
            {
                obj = nullNode();
            }
        }

        return this;
    }

    public final int size()
    {
        return _children.size();
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(32 + (size() << 4));
        stringbuilder.append("{");
        Iterator iterator = _children.entrySet().iterator();
        int j;
        for (int i = 0; iterator.hasNext(); i = j)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if (i > 0)
            {
                stringbuilder.append(",");
            }
            j = i + 1;
            TextNode.appendQuoted(stringbuilder, (String)entry.getKey());
            stringbuilder.append(':');
            stringbuilder.append(((JsonNode)entry.getValue()).toString());
        }

        stringbuilder.append("}");
        return stringbuilder.toString();
    }

    public final volatile JsonNode with(String s)
    {
        return with(s);
    }

    public final ObjectNode with(String s)
    {
        JsonNode jsonnode = (JsonNode)_children.get(s);
        if (jsonnode != null)
        {
            if (jsonnode instanceof ObjectNode)
            {
                return (ObjectNode)jsonnode;
            } else
            {
                throw new UnsupportedOperationException((new StringBuilder("Property '")).append(s).append("' has value that is not of type ObjectNode (but ").append(jsonnode.getClass().getName()).append(")").toString());
            }
        } else
        {
            ObjectNode objectnode = objectNode();
            _children.put(s, objectnode);
            return objectnode;
        }
    }

    public final volatile JsonNode withArray(String s)
    {
        return withArray(s);
    }

    public final ArrayNode withArray(String s)
    {
        JsonNode jsonnode = (JsonNode)_children.get(s);
        if (jsonnode != null)
        {
            if (jsonnode instanceof ArrayNode)
            {
                return (ArrayNode)jsonnode;
            } else
            {
                throw new UnsupportedOperationException((new StringBuilder("Property '")).append(s).append("' has value that is not of type ArrayNode (but ").append(jsonnode.getClass().getName()).append(")").toString());
            }
        } else
        {
            ArrayNode arraynode = arrayNode();
            _children.put(s, arraynode);
            return arraynode;
        }
    }

    public final JsonNode without(String s)
    {
        _children.remove(s);
        return this;
    }

    public final ObjectNode without(Collection collection)
    {
        _children.keySet().removeAll(collection);
        return this;
    }
}
