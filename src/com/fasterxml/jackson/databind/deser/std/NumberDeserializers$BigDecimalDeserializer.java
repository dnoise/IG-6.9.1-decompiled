// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.DeserializationContext;
import java.math.BigDecimal;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            StdScalarDeserializer

public class Y extends StdScalarDeserializer
{

    public static final _valueClass instance = new <init>();

    public volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        return deserialize(l1, deserializationcontext);
    }

    public BigDecimal deserialize(l l1, DeserializationContext deserializationcontext)
    {
        r r1 = l1.getCurrentToken();
        if (r1 == r.i || r1 == r.j)
        {
            return l1.getDecimalValue();
        }
        if (r1 == r.h)
        {
            String s = l1.getText().trim();
            if (s.length() == 0)
            {
                return null;
            }
            BigDecimal bigdecimal;
            try
            {
                bigdecimal = new BigDecimal(s);
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                throw deserializationcontext.weirdStringException(s, _valueClass, "not a valid representation");
            }
            return bigdecimal;
        } else
        {
            throw deserializationcontext.mappingException(_valueClass, r1);
        }
    }


    public Y()
    {
        super(java/math/BigDecimal);
    }
}
