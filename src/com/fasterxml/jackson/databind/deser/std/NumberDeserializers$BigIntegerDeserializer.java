// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.DeserializationContext;
import java.math.BigDecimal;
import java.math.BigInteger;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            StdScalarDeserializer

public class Y extends StdScalarDeserializer
{

    public static final _valueClass instance = new <init>();

    public volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        return deserialize(l1, deserializationcontext);
    }

    public BigInteger deserialize(l l1, DeserializationContext deserializationcontext)
    {
        r r1 = l1.getCurrentToken();
        if (r1 != r.i) goto _L2; else goto _L1
_L1:
        xml.jackson.core.JsonParser.NumberType[-1 + l1.getNumberType$72641f5()];
        JVM INSTR tableswitch 1 2: default 44
    //                   1 63
    //                   2 63;
           goto _L3 _L4 _L4
_L3:
        String s;
        s = l1.getText().trim();
        if (s.length() == 0)
        {
            return null;
        }
        break; /* Loop/switch isn't completed */
_L4:
        return BigInteger.valueOf(l1.getLongValue());
_L2:
        if (r1 == r.j)
        {
            return l1.getDecimalValue().toBigInteger();
        }
        if (r1 != r.h)
        {
            throw deserializationcontext.mappingException(_valueClass, r1);
        }
        if (true) goto _L3; else goto _L5
_L5:
        BigInteger biginteger;
        try
        {
            biginteger = new BigInteger(s);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            throw deserializationcontext.weirdStringException(s, _valueClass, "not a valid representation");
        }
        return biginteger;
    }


    public Y()
    {
        super(java/math/BigInteger);
    }
}
