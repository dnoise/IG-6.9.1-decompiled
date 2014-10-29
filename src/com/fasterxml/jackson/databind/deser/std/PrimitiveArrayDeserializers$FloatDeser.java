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

    private final float[] handleNonArray(l l1, DeserializationContext deserializationcontext)
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
            float af[] = new float[1];
            af[0] = _parseFloatPrimitive(l1, deserializationcontext);
            return af;
        }
    }

    public final volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        return deserialize(l1, deserializationcontext);
    }

    public final float[] deserialize(l l1, DeserializationContext deserializationcontext)
    {
        if (!l1.isExpectedStartArrayToken())
        {
            return handleNonArray(l1, deserializationcontext);
        }
        com.fasterxml.jackson.databind.util.eser eser = deserializationcontext.getArrayBuilders().getFloatBuilder();
        float af[] = (float[])eser.t();
        int i = 0;
        while (l1.nextToken() != r.e) 
        {
            float f = _parseFloatPrimitive(l1, deserializationcontext);
            int j;
            if (i >= af.length)
            {
                float af1[] = (float[])eser.tedChunk(af, i);
                j = 0;
                af = af1;
            } else
            {
                j = i;
            }
            i = j + 1;
            af[j] = f;
        }
        return (float[])eser.learBuffer(af, i);
    }

    public ()
    {
        super([F);
    }
}
