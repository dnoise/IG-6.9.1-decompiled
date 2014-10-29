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

    private final byte[] handleNonArray(l l1, DeserializationContext deserializationcontext)
    {
        if (l1.getCurrentToken() == r.h && deserializationcontext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) && l1.getText().length() == 0)
        {
            return null;
        }
        if (!deserializationcontext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY))
        {
            throw deserializationcontext.mappingException(_valueClass);
        }
        r r1 = l1.getCurrentToken();
        byte byte0;
        if (r1 == r.i || r1 == r.j)
        {
            byte0 = l1.getByteValue();
        } else
        {
            if (r1 != r.m)
            {
                throw deserializationcontext.mappingException(_valueClass.getComponentType());
            }
            byte0 = 0;
        }
        return (new byte[] {
            byte0
        });
    }

    public final volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        return deserialize(l1, deserializationcontext);
    }

    public final byte[] deserialize(l l1, DeserializationContext deserializationcontext)
    {
        r r1 = l1.getCurrentToken();
        if (r1 == r.h)
        {
            return l1.getBinaryValue(deserializationcontext.getBase64Variant());
        }
        if (r1 == r.g)
        {
            Object obj = l1.getEmbeddedObject();
            if (obj == null)
            {
                return null;
            }
            if (obj instanceof byte[])
            {
                return (byte[])(byte[])obj;
            }
        }
        if (!l1.isExpectedStartArrayToken())
        {
            return handleNonArray(l1, deserializationcontext);
        }
        com.fasterxml.jackson.databind.util.eser eser = deserializationcontext.getArrayBuilders().getByteBuilder();
        byte abyte0[] = (byte[])eser.t();
        int i = 0;
        byte abyte1[] = abyte0;
        do
        {
            r r2 = l1.nextToken();
            if (r2 != r.e)
            {
                byte byte0;
                int j;
                byte abyte2[];
                int k;
                if (r2 == r.i || r2 == r.j)
                {
                    byte0 = l1.getByteValue();
                } else
                {
                    if (r2 != r.m)
                    {
                        throw deserializationcontext.mappingException(_valueClass.getComponentType());
                    }
                    byte0 = 0;
                }
                if (i >= abyte1.length)
                {
                    abyte2 = (byte[])eser.tedChunk(abyte1, i);
                    j = 0;
                } else
                {
                    j = i;
                    abyte2 = abyte1;
                }
                k = j + 1;
                abyte2[j] = byte0;
                abyte1 = abyte2;
                i = k;
            } else
            {
                return (byte[])eser.learBuffer(abyte1, i);
            }
        } while (true);
    }

    public ()
    {
        super([B);
    }
}
