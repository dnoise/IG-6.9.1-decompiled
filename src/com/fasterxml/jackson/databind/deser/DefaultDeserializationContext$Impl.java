// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.InjectableValues;

// Referenced classes of package com.fasterxml.jackson.databind.deser:
//            DefaultDeserializationContext, DeserializerFactory

public final class > extends DefaultDeserializationContext
{

    private static final long serialVersionUID = 1L;

    public final DefaultDeserializationContext createInstance(DeserializationConfig deserializationconfig, l l, InjectableValues injectablevalues)
    {
        return new <init>(this, deserializationconfig, l, injectablevalues);
    }

    public final DefaultDeserializationContext with(DeserializerFactory deserializerfactory)
    {
        return new <init>(this, deserializerfactory);
    }

    protected ( , DeserializationConfig deserializationconfig, l l, InjectableValues injectablevalues)
    {
        super(, deserializationconfig, l, injectablevalues);
    }

    protected >(> >, DeserializerFactory deserializerfactory)
    {
        super(>, deserializerfactory);
    }

    public >(DeserializerFactory deserializerfactory)
    {
        super(deserializerfactory, null);
    }
}
