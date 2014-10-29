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
import java.util.List;

// Referenced classes of package com.fasterxml.jackson.databind.node:
//            BaseJsonNode, MissingNode, ObjectNode

public abstract class ValueNode extends BaseJsonNode
{

    protected ValueNode()
    {
    }

    public abstract r asToken();

    public JsonNode deepCopy()
    {
        return this;
    }

    public volatile JsonNode findParent(String s)
    {
        return findParent(s);
    }

    public final ObjectNode findParent(String s)
    {
        return null;
    }

    public final List findParents(String s, List list)
    {
        return list;
    }

    public final JsonNode findValue(String s)
    {
        return null;
    }

    public final List findValues(String s, List list)
    {
        return list;
    }

    public final List findValuesAsText(String s, List list)
    {
        return list;
    }

    public volatile v get(int i)
    {
        return get(i);
    }

    public volatile v get(String s)
    {
        return get(s);
    }

    public final JsonNode get(int i)
    {
        return null;
    }

    public final JsonNode get(String s)
    {
        return null;
    }

    public final boolean has(int i)
    {
        return false;
    }

    public final boolean has(String s)
    {
        return false;
    }

    public final boolean hasNonNull(int i)
    {
        return false;
    }

    public final boolean hasNonNull(String s)
    {
        return false;
    }

    public volatile v path(int i)
    {
        return path(i);
    }

    public volatile v path(String s)
    {
        return path(s);
    }

    public final JsonNode path(int i)
    {
        return MissingNode.getInstance();
    }

    public final JsonNode path(String s)
    {
        return MissingNode.getInstance();
    }

    public void serializeWithType(h h, SerializerProvider serializerprovider, TypeSerializer typeserializer)
    {
        typeserializer.writeTypePrefixForScalar(this, h);
        serialize(h, serializerprovider);
        typeserializer.writeTypeSuffixForScalar(this, h);
    }

    public String toString()
    {
        return asText();
    }
}
