// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.databind.DeserializationContext;

public final class rDeserializer extends rDeserializer
{

    private static final <init> primitiveInstance;
    private static final long serialVersionUID = 1L;
    private static final <init> wrapperInstance = new <init>(java/lang/Byte, null);

    public final Byte deserialize(l l, DeserializationContext deserializationcontext)
    {
        return _parseByte(l, deserializationcontext);
    }

    public final volatile Object deserialize(l l, DeserializationContext deserializationcontext)
    {
        return deserialize(l, deserializationcontext);
    }

    static 
    {
        primitiveInstance = new <init>(Byte.TYPE, Byte.valueOf((byte)0));
    }



    public rDeserializer(Class class1, Byte byte1)
    {
        super(class1, byte1);
    }
}
