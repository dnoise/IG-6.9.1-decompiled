// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import java.math.BigDecimal;
import java.math.BigInteger;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            StdScalarDeserializer

public final class  extends StdScalarDeserializer
{

    public static final deserialize instance = new <init>();

    public final Number deserialize(l l1, DeserializationContext deserializationcontext)
    {
        r r1;
        String s;
label0:
        {
            r1 = l1.getCurrentToken();
            if (r1 == r.i)
            {
                if (deserializationcontext.isEnabled(DeserializationFeature.USE_BIG_INTEGER_FOR_INTS))
                {
                    return l1.getBigIntegerValue();
                } else
                {
                    return l1.getNumberValue();
                }
            }
            if (r1 == r.j)
            {
                if (deserializationcontext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS))
                {
                    return l1.getDecimalValue();
                } else
                {
                    return Double.valueOf(l1.getDoubleValue());
                }
            }
            if (r1 != r.h)
            {
                break MISSING_BLOCK_LABEL_199;
            }
            s = l1.getText().trim();
            BigDecimal bigdecimal;
            try
            {
                if (s.indexOf('.') < 0)
                {
                    break MISSING_BLOCK_LABEL_137;
                }
                if (!deserializationcontext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS))
                {
                    break label0;
                }
                bigdecimal = new BigDecimal(s);
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                throw deserializationcontext.weirdStringException(s, _valueClass, "not a valid number");
            }
            return bigdecimal;
        }
        return new Double(s);
        long l2;
        if (deserializationcontext.isEnabled(DeserializationFeature.USE_BIG_INTEGER_FOR_INTS))
        {
            return new BigInteger(s);
        }
        l2 = Long.parseLong(s);
        if (l2 > 0x7fffffffL || l2 < 0xffffffff80000000L)
        {
            break MISSING_BLOCK_LABEL_189;
        }
        return Integer.valueOf((int)l2);
        Long long1 = Long.valueOf(l2);
        return long1;
        throw deserializationcontext.mappingException(_valueClass, r1);
    }

    public final volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        return deserialize(l1, deserializationcontext);
    }

    public final Object deserializeWithType(l l1, DeserializationContext deserializationcontext, TypeDeserializer typedeserializer)
    {
        switch (sterxml.jackson.core.JsonToken[l1.getCurrentToken().ordinal()])
        {
        default:
            return typedeserializer.deserializeTypedFromScalar(l1, deserializationcontext);

        case 1: // '\001'
        case 2: // '\002'
        case 3: // '\003'
            return deserialize(l1, deserializationcontext);
        }
    }


    public ()
    {
        super(java/lang/Number);
    }
}
