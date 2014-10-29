// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.databind.DeserializationContext;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            StdScalarDeserializer

public class Y extends StdScalarDeserializer
{

    public static final _parseBooleanPrimitive instance = new <init>();

    public volatile Object deserialize(l l, DeserializationContext deserializationcontext)
    {
        return deserialize(l, deserializationcontext);
    }

    public AtomicBoolean deserialize(l l, DeserializationContext deserializationcontext)
    {
        return new AtomicBoolean(_parseBooleanPrimitive(l, deserializationcontext));
    }


    public Y()
    {
        super(java/util/concurrent/atomic/AtomicBoolean);
    }
}
