// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.databind.DeserializationContext;
import java.util.UUID;

// Referenced classes of package com.fasterxml.jackson.databind.deser.std:
//            StdKeyDeserializer

final class  extends StdKeyDeserializer
{

    private static final long serialVersionUID = 1L;

    public final Object _parse(String s, DeserializationContext deserializationcontext)
    {
        return UUID.fromString(s);
    }

    protected ()
    {
        super(java/util/UUID);
    }
}
