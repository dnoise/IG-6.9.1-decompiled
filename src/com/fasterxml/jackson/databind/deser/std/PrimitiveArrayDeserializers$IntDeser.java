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

    public static final uffer instance = new <init>();
    private static final long serialVersionUID = 1L;

    private final int[] handleNonArray(l l1, DeserializationContext deserializationcontext)
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
            int ai[] = new int[1];
            ai[0] = _parseIntPrimitive(l1, deserializationcontext);
            return ai;
        }
    }

    public final volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        return deserialize(l1, deserializationcontext);
    }

    public final int[] deserialize(l l1, DeserializationContext deserializationcontext)
    {
        if (!l1.isExpectedStartArrayToken())
        {
            return handleNonArray(l1, deserializationcontext);
        }
        com.fasterxml.jackson.databind.util.eser eser = deserializationcontext.getArrayBuilders().getIntBuilder();
        int ai[] = (int[])eser.t();
        int i = 0;
        while (l1.nextToken() != r.e) 
        {
            int j = _parseIntPrimitive(l1, deserializationcontext);
            int k;
            if (i >= ai.length)
            {
                int ai1[] = (int[])eser.tedChunk(ai, i);
                k = 0;
                ai = ai1;
            } else
            {
                k = i;
            }
            i = k + 1;
            ai[k] = j;
        }
        return (int[])eser.learBuffer(ai, i);
    }


    public ()
    {
        super([I);
    }
}
