// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.type.TypeFactory;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            StdScalarDeserializer

public class  extends StdScalarDeserializer
{

    public static final deserialize instance = new <init>();

    public JavaType deserialize(l l1, DeserializationContext deserializationcontext)
    {
        r r1 = l1.getCurrentToken();
        if (r1 == r.h)
        {
            String s = l1.getText().trim();
            if (s.length() == 0)
            {
                return (JavaType)getEmptyValue();
            } else
            {
                return deserializationcontext.getTypeFactory().constructFromCanonical(s);
            }
        }
        if (r1 == r.g)
        {
            return (JavaType)l1.getEmbeddedObject();
        } else
        {
            throw deserializationcontext.mappingException(_valueClass);
        }
    }

    public volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        return deserialize(l1, deserializationcontext);
    }


    public ()
    {
        super(com/fasterxml/jackson/databind/JavaType);
    }
}
