// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonMappingException;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            StdScalarDeserializer

public class  extends StdScalarDeserializer
{

    public static final _valueClass instance = new <init>();

    public volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        return deserialize(l1, deserializationcontext);
    }

    public StackTraceElement deserialize(l l1, DeserializationContext deserializationcontext)
    {
        r r1 = l1.getCurrentToken();
        if (r1 == r.b)
        {
            String s = "";
            String s1 = "";
            String s2 = "";
            int i = -1;
            do
            {
                r r2 = l1.nextValue();
                if (r2 == r.c)
                {
                    break;
                }
                String s3 = l1.getCurrentName();
                if ("className".equals(s3))
                {
                    s = l1.getText();
                } else
                if ("fileName".equals(s3))
                {
                    s2 = l1.getText();
                } else
                if ("lineNumber".equals(s3))
                {
                    if (r2.c())
                    {
                        i = l1.getIntValue();
                    } else
                    {
                        throw JsonMappingException.from(l1, (new StringBuilder("Non-numeric token (")).append(r2).append(") for property 'lineNumber'").toString());
                    }
                } else
                if ("methodName".equals(s3))
                {
                    s1 = l1.getText();
                } else
                if (!"nativeMethod".equals(s3))
                {
                    handleUnknownProperty(l1, deserializationcontext, _valueClass, s3);
                }
            } while (true);
            return new StackTraceElement(s, s1, s2, i);
        } else
        {
            throw deserializationcontext.mappingException(_valueClass, r1);
        }
    }


    public ()
    {
        super(java/lang/StackTraceElement);
    }
}
