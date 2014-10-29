// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.databind.DeserializationContext;

public final class Deserializer extends Deserializer
{

    private static final <init> primitiveInstance = new <init>(java/lang/Float, Float.valueOf(0.0F));
    private static final long serialVersionUID = 1L;
    private static final <init> wrapperInstance;

    public final Float deserialize(l l, DeserializationContext deserializationcontext)
    {
        return _parseFloat(l, deserializationcontext);
    }

    public final volatile Object deserialize(l l, DeserializationContext deserializationcontext)
    {
        return deserialize(l, deserializationcontext);
    }

    static 
    {
        wrapperInstance = new <init>(Float.TYPE, null);
    }



    public Deserializer(Class class1, Float float1)
    {
        super(class1, float1);
    }
}
