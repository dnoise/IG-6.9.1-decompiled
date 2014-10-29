// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.util.ArrayBuilders;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            PrimitiveArrayDeserializers

final class  extends PrimitiveArrayDeserializers
{

    private static final long serialVersionUID = 1L;

    private final short[] handleNonArray(l l1, DeserializationContext deserializationcontext)
    {
        if (l1.getCurrentToken() == r.h && deserializationcontext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && l1.getText().length() == 0)
        {
            return null;
        }
        if (!deserializationcontext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY))
        {
            throw deserializationcontext.mappingException(_valueClass);
        } else
        {
            short aword0[] = new short[1];
            aword0[0] = _parseShortPrimitive(l1, deserializationcontext);
            return aword0;
        }
    }

    public final volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        return deserialize(l1, deserializationcontext);
    }

    public final short[] deserialize(l l1, DeserializationContext deserializationcontext)
    {
        if (!l1.isExpectedStartArrayToken())
        {
            return handleNonArray(l1, deserializationcontext);
        }
        com.fasterxml.jackson.databind.util.eser eser = deserializationcontext.getArrayBuilders().getShortBuilder();
        short aword0[] = (short[])eser.t();
        int i = 0;
        while (l1.nextToken() != r.e) 
        {
            short word0 = _parseShortPrimitive(l1, deserializationcontext);
            int j;
            if (i >= aword0.length)
            {
                short aword1[] = (short[])eser.tedChunk(aword0, i);
                j = 0;
                aword0 = aword1;
            } else
            {
                j = i;
            }
            i = j + 1;
            aword0[j] = word0;
        }
        return (short[])eser.learBuffer(aword0, i);
    }

    public ()
    {
        super([S);
    }
}
