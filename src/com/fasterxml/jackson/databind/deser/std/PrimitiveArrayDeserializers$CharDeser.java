// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.a;
import com.fasterxml.jackson.a.b;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonMappingException;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            PrimitiveArrayDeserializers

final class  extends PrimitiveArrayDeserializers
{

    private static final long serialVersionUID = 1L;

    public final volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        return deserialize(l1, deserializationcontext);
    }

    public final char[] deserialize(l l1, DeserializationContext deserializationcontext)
    {
        r r1 = l1.getCurrentToken();
        if (r1 == r.h)
        {
            char ac[] = l1.getTextCharacters();
            int i = l1.getTextOffset();
            int j = l1.getTextLength();
            char ac1[] = new char[j];
            System.arraycopy(ac, i, ac1, 0, j);
            return ac1;
        }
        if (l1.isExpectedStartArrayToken())
        {
            StringBuilder stringbuilder = new StringBuilder(64);
            do
            {
                r r2 = l1.nextToken();
                if (r2 != r.e)
                {
                    if (r2 != r.h)
                    {
                        throw deserializationcontext.mappingException(Character.TYPE);
                    }
                    String s = l1.getText();
                    if (s.length() != 1)
                    {
                        throw JsonMappingException.from(l1, (new StringBuilder("Can not convert a JSON String of length ")).append(s.length()).append(" into a char element of char array").toString());
                    }
                    stringbuilder.append(s.charAt(0));
                } else
                {
                    return stringbuilder.toString().toCharArray();
                }
            } while (true);
        }
        if (r1 == r.g)
        {
            Object obj = l1.getEmbeddedObject();
            if (obj == null)
            {
                return null;
            }
            if (obj instanceof char[])
            {
                return (char[])(char[])obj;
            }
            if (obj instanceof String)
            {
                return ((String)obj).toCharArray();
            }
            if (obj instanceof byte[])
            {
                return b.a().a((byte[])(byte[])obj, false).toCharArray();
            }
        }
        throw deserializationcontext.mappingException(_valueClass);
    }

    public ()
    {
        super([C);
    }
}
