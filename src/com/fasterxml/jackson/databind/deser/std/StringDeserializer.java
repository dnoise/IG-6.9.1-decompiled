// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.a;
import com.fasterxml.jackson.a.b;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            StdScalarDeserializer

public final class StringDeserializer extends StdScalarDeserializer
{

    public static final StringDeserializer instance = new StringDeserializer();
    private static final long serialVersionUID = 1L;

    public StringDeserializer()
    {
        super(java/lang/String);
    }

    public final volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        return deserialize(l1, deserializationcontext);
    }

    public final String deserialize(l l1, DeserializationContext deserializationcontext)
    {
        String s = l1.getValueAsString();
        if (s != null)
        {
            return s;
        }
        r r1 = l1.getCurrentToken();
        if (r1 == r.g)
        {
            Object obj = l1.getEmbeddedObject();
            if (obj == null)
            {
                return null;
            }
            if (obj instanceof byte[])
            {
                return b.a().a((byte[])(byte[])obj, false);
            } else
            {
                return obj.toString();
            }
        } else
        {
            throw deserializationcontext.mappingException(_valueClass, r1);
        }
    }

    public final volatile Object deserializeWithType(l l1, DeserializationContext deserializationcontext, TypeDeserializer typedeserializer)
    {
        return deserializeWithType(l1, deserializationcontext, typedeserializer);
    }

    public final String deserializeWithType(l l1, DeserializationContext deserializationcontext, TypeDeserializer typedeserializer)
    {
        return deserialize(l1, deserializationcontext);
    }

}
