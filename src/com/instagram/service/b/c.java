// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.service.b;

import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.type.TypeFactory;

// Referenced classes of package com.instagram.service.b:
//            a

public abstract class c extends ValueInstantiator
{

    protected Class b;
    protected a c;

    public c(Class class1, a a)
    {
        b = class1;
        c = a;
    }

    public boolean canCreateUsingDelegate()
    {
        return true;
    }

    public JavaType getDelegateType(DeserializationConfig deserializationconfig)
    {
        return TypeFactory.defaultInstance().constructType(com/fasterxml/jackson/databind/JsonNode);
    }

    public String getValueTypeDesc()
    {
        return b.getName();
    }
}
