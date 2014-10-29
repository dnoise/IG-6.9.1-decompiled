// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.o;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.node.NullNode;
import com.fasterxml.jackson.databind.node.ObjectNode;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            StdDeserializer

abstract class BaseNodeDeserializer extends StdDeserializer
{

    public BaseNodeDeserializer()
    {
        super(com/fasterxml/jackson/databind/JsonNode);
    }

    protected void _handleDuplicateField(String s, ObjectNode objectnode, JsonNode jsonnode, JsonNode jsonnode1)
    {
    }

    protected void _reportProblem(l l1, String s)
    {
        throw new JsonMappingException(s, l1.getTokenLocation());
    }

    protected final JsonNode deserializeAny(l l1, DeserializationContext deserializationcontext, JsonNodeFactory jsonnodefactory)
    {
        switch (_cls1..SwitchMap.com.fasterxml.jackson.core.JsonToken[l1.getCurrentToken().ordinal()])
        {
        case 4: // '\004'
        default:
            throw deserializationcontext.mappingException(getValueClass());

        case 1: // '\001'
            return deserializeObject(l1, deserializationcontext, jsonnodefactory);

        case 2: // '\002'
            return deserializeArray(l1, deserializationcontext, jsonnodefactory);

        case 5: // '\005'
            return deserializeObject(l1, deserializationcontext, jsonnodefactory);

        case 6: // '\006'
            Object obj = l1.getEmbeddedObject();
            if (obj == null)
            {
                return jsonnodefactory.nullNode();
            }
            if (obj.getClass() == [B)
            {
                return jsonnodefactory.binaryNode((byte[])(byte[])obj);
            } else
            {
                return jsonnodefactory.pojoNode(obj);
            }

        case 3: // '\003'
            return jsonnodefactory.textNode(l1.getText());

        case 7: // '\007'
            int i = l1.getNumberType$72641f5();
            if (i == o.c || deserializationcontext.isEnabled(DeserializationFeature.USE_BIG_INTEGER_FOR_INTS))
            {
                return jsonnodefactory.numberNode(l1.getBigIntegerValue());
            }
            if (i == o.a)
            {
                return jsonnodefactory.numberNode(l1.getIntValue());
            } else
            {
                return jsonnodefactory.numberNode(l1.getLongValue());
            }

        case 8: // '\b'
            if (l1.getNumberType$72641f5() == o.f || deserializationcontext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS))
            {
                return jsonnodefactory.numberNode(l1.getDecimalValue());
            } else
            {
                return jsonnodefactory.numberNode(l1.getDoubleValue());
            }

        case 9: // '\t'
            return jsonnodefactory.booleanNode(true);

        case 10: // '\n'
            return jsonnodefactory.booleanNode(false);

        case 11: // '\013'
            return jsonnodefactory.nullNode();
        }
    }

    protected final ArrayNode deserializeArray(l l1, DeserializationContext deserializationcontext, JsonNodeFactory jsonnodefactory)
    {
        ArrayNode arraynode = jsonnodefactory.arrayNode();
        do
        {
            r r1 = l1.nextToken();
            if (r1 == null)
            {
                throw deserializationcontext.mappingException("Unexpected end-of-input when binding data into ArrayNode");
            }
            switch (_cls1..SwitchMap.com.fasterxml.jackson.core.JsonToken[r1.ordinal()])
            {
            default:
                arraynode.add(deserializeAny(l1, deserializationcontext, jsonnodefactory));
                break;

            case 1: // '\001'
                arraynode.add(deserializeObject(l1, deserializationcontext, jsonnodefactory));
                break;

            case 2: // '\002'
                arraynode.add(deserializeArray(l1, deserializationcontext, jsonnodefactory));
                break;

            case 3: // '\003'
                arraynode.add(jsonnodefactory.textNode(l1.getText()));
                break;

            case 4: // '\004'
                return arraynode;
            }
        } while (true);
    }

    protected final ObjectNode deserializeObject(l l1, DeserializationContext deserializationcontext, JsonNodeFactory jsonnodefactory)
    {
        ObjectNode objectnode;
        r r1;
        objectnode = jsonnodefactory.objectNode();
        r1 = l1.getCurrentToken();
        if (r1 == r.b)
        {
            r1 = l1.nextToken();
        }
_L6:
        String s;
        if (r1 != r.f)
        {
            break MISSING_BLOCK_LABEL_159;
        }
        s = l1.getCurrentName();
        _cls1..SwitchMap.com.fasterxml.jackson.core.JsonToken[l1.nextToken().ordinal()];
        JVM INSTR tableswitch 1 3: default 76
    //                   1 122
    //                   2 134
    //                   3 146;
           goto _L1 _L2 _L3 _L4
_L4:
        break MISSING_BLOCK_LABEL_146;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        Object obj = deserializeAny(l1, deserializationcontext, jsonnodefactory);
_L7:
        JsonNode jsonnode = objectnode.replace(s, ((JsonNode) (obj)));
        if (jsonnode != null)
        {
            _handleDuplicateField(s, objectnode, jsonnode, ((JsonNode) (obj)));
        }
        r1 = l1.nextToken();
        if (true) goto _L6; else goto _L5
_L5:
        obj = deserializeObject(l1, deserializationcontext, jsonnodefactory);
          goto _L7
_L3:
        obj = deserializeArray(l1, deserializationcontext, jsonnodefactory);
          goto _L7
        obj = jsonnodefactory.textNode(l1.getText());
          goto _L7
        return objectnode;
    }

    public Object deserializeWithType(l l1, DeserializationContext deserializationcontext, TypeDeserializer typedeserializer)
    {
        return typedeserializer.deserializeTypedFromAny(l1, deserializationcontext);
    }

    public JsonNode getNullValue()
    {
        return NullNode.getInstance();
    }

    public volatile Object getNullValue()
    {
        return getNullValue();
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
            catch (NoSuchFieldError nosuchfielderror1) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.h.ordinal()] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror2) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.e.ordinal()] = 4;
            }
            catch (NoSuchFieldError nosuchfielderror3) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.f.ordinal()] = 5;
            }
            catch (NoSuchFieldError nosuchfielderror4) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.g.ordinal()] = 6;
            }
            catch (NoSuchFieldError nosuchfielderror5) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.i.ordinal()] = 7;
            }
            catch (NoSuchFieldError nosuchfielderror6) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.j.ordinal()] = 8;
            }
            catch (NoSuchFieldError nosuchfielderror7) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.k.ordinal()] = 9;
            }
            catch (NoSuchFieldError nosuchfielderror8) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.l.ordinal()] = 10;
            }
            catch (NoSuchFieldError nosuchfielderror9) { }
            try
            {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[r.m.ordinal()] = 11;
            }
            catch (NoSuchFieldError nosuchfielderror10)
            {
                return;
            }
        }
    }

}
