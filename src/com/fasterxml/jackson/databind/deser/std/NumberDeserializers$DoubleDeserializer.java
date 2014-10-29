// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;

public final class eserializer extends eserializer
{

    private static final <init> primitiveInstance = new <init>(java/lang/Double, Double.valueOf(0.0D));
    private static final long serialVersionUID = 1L;
    private static final <init> wrapperInstance;

    public final Double deserialize(l l, DeserializationContext deserializationcontext)
    {
        return _parseDouble(l, deserializationcontext);
    }

    public final volatile Object deserialize(l l, DeserializationContext deserializationcontext)
    {
        return deserialize(l, deserializationcontext);
    }

    public final Double deserializeWithType(l l, DeserializationContext deserializationcontext, TypeDeserializer typedeserializer)
    {
        return _parseDouble(l, deserializationcontext);
    }

    public final volatile Object deserializeWithType(l l, DeserializationContext deserializationcontext, TypeDeserializer typedeserializer)
    {
        return deserializeWithType(l, deserializationcontext, typedeserializer);
    }

    static 
    {
        wrapperInstance = new <init>(Double.TYPE, null);
    }



    public eserializer(Class class1, Double double1)
    {
        super(class1, double1);
    }
}
