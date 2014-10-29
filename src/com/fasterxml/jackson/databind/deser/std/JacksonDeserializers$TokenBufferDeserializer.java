// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.util.TokenBuffer;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            StdScalarDeserializer

public class  extends StdScalarDeserializer
{

    public static final deserialize instance = new <init>();

    public TokenBuffer deserialize(l l1, DeserializationContext deserializationcontext)
    {
        TokenBuffer tokenbuffer = new TokenBuffer(l1.getCodec());
        tokenbuffer.copyCurrentStructure(l1);
        return tokenbuffer;
    }

    public volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        return deserialize(l1, deserializationcontext);
    }


    public ()
    {
        super(com/fasterxml/jackson/databind/util/TokenBuffer);
    }
}
