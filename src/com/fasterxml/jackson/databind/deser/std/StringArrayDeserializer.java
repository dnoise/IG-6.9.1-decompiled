// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.ObjectBuffer;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            StdDeserializer

public final class StringArrayDeserializer extends StdDeserializer
    implements ContextualDeserializer
{

    public static final StringArrayDeserializer instance = new StringArrayDeserializer();
    private static final long serialVersionUID = 0x96aca308ea9cc20bL;
    protected JsonDeserializer _elementDeserializer;

    public StringArrayDeserializer()
    {
        super([Ljava/lang/String;);
        _elementDeserializer = null;
    }

    protected StringArrayDeserializer(JsonDeserializer jsondeserializer)
    {
        super([Ljava/lang/String;);
        _elementDeserializer = jsondeserializer;
    }

    private final String[] handleNonArray(l l1, DeserializationContext deserializationcontext)
    {
        if (!deserializationcontext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY))
        {
            if (l1.getCurrentToken() == r.h && deserializationcontext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && l1.getText().length() == 0)
            {
                return null;
            } else
            {
                throw deserializationcontext.mappingException(_valueClass);
            }
        }
        String as[] = new String[1];
        r r1 = l1.getCurrentToken();
        r r2 = r.m;
        String s = null;
        if (r1 != r2)
        {
            s = _parseString(l1, deserializationcontext);
        }
        as[0] = s;
        return as;
    }

    protected final String[] _deserializeCustom(l l1, DeserializationContext deserializationcontext)
    {
        ObjectBuffer objectbuffer = deserializationcontext.leaseObjectBuffer();
        Object aobj[] = objectbuffer.resetAndStart();
        JsonDeserializer jsondeserializer = _elementDeserializer;
        int i = 0;
        Object aobj1[] = aobj;
        do
        {
            r r1 = l1.nextToken();
            if (r1 != r.e)
            {
                Object obj;
                Object aobj2[];
                int k;
                int i1;
                if (r1 == r.m)
                {
                    obj = null;
                } else
                {
                    obj = (String)jsondeserializer.deserialize(l1, deserializationcontext);
                }
                String as[];
                if (i >= aobj1.length)
                {
                    aobj2 = objectbuffer.appendCompletedChunk(aobj1);
                    k = 0;
                } else
                {
                    int j = i;
                    aobj2 = aobj1;
                    k = j;
                }
                i1 = k + 1;
                aobj2[k] = obj;
                aobj1 = aobj2;
                i = i1;
            } else
            {
                as = (String[])objectbuffer.completeAndClearBuffer(aobj1, i, java/lang/String);
                deserializationcontext.returnObjectBuffer(objectbuffer);
                return as;
            }
        } while (true);
    }

    public final JsonDeserializer createContextual(DeserializationContext deserializationcontext, BeanProperty beanproperty)
    {
        JsonDeserializer jsondeserializer = findConvertingContentDeserializer(deserializationcontext, beanproperty, _elementDeserializer);
        if (jsondeserializer != null) goto _L2; else goto _L1
_L1:
        jsondeserializer = deserializationcontext.findContextualValueDeserializer(deserializationcontext.constructType(java/lang/String), beanproperty);
_L4:
        if (jsondeserializer != null && isDefaultDeserializer(jsondeserializer))
        {
            jsondeserializer = null;
        }
        if (_elementDeserializer != jsondeserializer)
        {
            this = new StringArrayDeserializer(jsondeserializer);
        }
        return this;
_L2:
        if (jsondeserializer instanceof ContextualDeserializer)
        {
            jsondeserializer = ((ContextualDeserializer)jsondeserializer).createContextual(deserializationcontext, beanproperty);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        return deserialize(l1, deserializationcontext);
    }

    public final String[] deserialize(l l1, DeserializationContext deserializationcontext)
    {
        if (!l1.isExpectedStartArrayToken())
        {
            return handleNonArray(l1, deserializationcontext);
        }
        if (_elementDeserializer != null)
        {
            return _deserializeCustom(l1, deserializationcontext);
        }
        ObjectBuffer objectbuffer = deserializationcontext.leaseObjectBuffer();
        Object aobj[] = objectbuffer.resetAndStart();
        int i = 0;
        do
        {
            r r1 = l1.nextToken();
            if (r1 != r.e)
            {
                String s;
                int j;
                if (r1 == r.h)
                {
                    s = l1.getText();
                } else
                if (r1 == r.m)
                {
                    s = null;
                } else
                {
                    s = _parseString(l1, deserializationcontext);
                }
                String as[];
                if (i >= aobj.length)
                {
                    aobj = objectbuffer.appendCompletedChunk(aobj);
                    j = 0;
                } else
                {
                    j = i;
                }
                i = j + 1;
                aobj[j] = s;
            } else
            {
                as = (String[])objectbuffer.completeAndClearBuffer(aobj, i, java/lang/String);
                deserializationcontext.returnObjectBuffer(objectbuffer);
                return as;
            }
        } while (true);
    }

    public final Object deserializeWithType(l l1, DeserializationContext deserializationcontext, TypeDeserializer typedeserializer)
    {
        return typedeserializer.deserializeTypedFromArray(l1, deserializationcontext);
    }

}
