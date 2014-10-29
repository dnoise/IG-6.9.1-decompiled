// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.a.s;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializable;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;

// Referenced classes of package com.fasterxml.jackson.databind.node:
//            MissingNode, TreeTraversingParser

public abstract class BaseJsonNode extends JsonNode
    implements JsonSerializable
{

    protected BaseJsonNode()
    {
    }

    public abstract r asToken();

    public final JsonNode findPath(String s)
    {
        Object obj = findValue(s);
        if (obj == null)
        {
            obj = MissingNode.getInstance();
        }
        return ((JsonNode) (obj));
    }

    public int numberType$72641f5()
    {
        return 0;
    }

    public abstract void serialize(h h, SerializerProvider serializerprovider);

    public abstract void serializeWithType(h h, SerializerProvider serializerprovider, TypeSerializer typeserializer);

    public l traverse()
    {
        return new TreeTraversingParser(this);
    }

    public l traverse(s s)
    {
        return new TreeTraversingParser(this, s);
    }
}
