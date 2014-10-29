// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            BaseNodeDeserializer

public class JsonNodeDeserializer extends BaseNodeDeserializer
{

    private static final JsonNodeDeserializer instance = new JsonNodeDeserializer();

    protected JsonNodeDeserializer()
    {
    }

    public static JsonDeserializer getDeserializer(Class class1)
    {
        if (class1 == com/fasterxml/jackson/databind/node/ObjectNode)
        {
            return ObjectDeserializer.getInstance();
        }
        if (class1 == com/fasterxml/jackson/databind/node/ArrayNode)
        {
            return ArrayDeserializer.getInstance();
        } else
        {
            return instance;
        }
    }

    public JsonNode deserialize(l l1, DeserializationContext deserializationcontext)
    {
        switch (_cls1..SwitchMap.com.fasterxml.jackson.core.JsonToken[l1.getCurrentToken().ordinal()])
        {
        default:
            return deserializeAny(l1, deserializationcontext, deserializationcontext.getNodeFactory());

        case 1: // '\001'
            return deserializeObject(l1, deserializationcontext, deserializationcontext.getNodeFactory());

        case 2: // '\002'
            return deserializeArray(l1, deserializationcontext, deserializationcontext.getNodeFactory());
        }
    }

    public volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        return deserialize(l1, deserializationcontext);
    }

    public volatile Object deserializeWithType(l l1, DeserializationContext deserializationcontext, TypeDeserializer typedeserializer)
    {
        return super.deserializeWithType(l1, deserializationcontext, typedeserializer);
    }

    public volatile JsonNode getNullValue()
    {
        return super.getNullValue();
    }


    private class ObjectDeserializer extends BaseNodeDeserializer
    {

        protected static final ObjectDeserializer _instance = new ObjectDeserializer();
        private static final long serialVersionUID = 1L;

        public static ObjectDeserializer getInstance()
        {
            return _instance;
        }

        public final ObjectNode deserialize(l l1, DeserializationContext deserializationcontext)
        {
            if (l1.getCurrentToken() == r.b)
            {
                l1.nextToken();
                return deserializeObject(l1, deserializationcontext, deserializationcontext.getNodeFactory());
            }
            if (l1.getCurrentToken() == r.f)
            {
                return deserializeObject(l1, deserializationcontext, deserializationcontext.getNodeFactory());
            } else
            {
                throw deserializationcontext.mappingException(com/fasterxml/jackson/databind/node/ObjectNode);
            }
        }

        public final volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
        {
            return deserialize(l1, deserializationcontext);
        }


        protected ObjectDeserializer()
        {
        }
    }


    private class ArrayDeserializer extends BaseNodeDeserializer
    {

        protected static final ArrayDeserializer _instance = new ArrayDeserializer();
        private static final long serialVersionUID = 1L;

        public static ArrayDeserializer getInstance()
        {
            return _instance;
        }

        public final ArrayNode deserialize(l l1, DeserializationContext deserializationcontext)
        {
            if (l1.isExpectedStartArrayToken())
            {
                return deserializeArray(l1, deserializationcontext, deserializationcontext.getNodeFactory());
            } else
            {
                throw deserializationcontext.mappingException(com/fasterxml/jackson/databind/node/ArrayNode);
            }
        }

        public final volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
        {
            return deserialize(l1, deserializationcontext);
        }


        protected ArrayDeserializer()
        {
        }
    }


    private class _cls1
    {

        static final int $SwitchMap$com$fasterxml$jackson$core$JsonToken[];

        static 
        {
            $SwitchMap$com$fasterxml$jackson$core$JsonToken = new int[r.values().length];
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.b.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.d.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror1)
            {
                return;
            }
        }
    }

}
