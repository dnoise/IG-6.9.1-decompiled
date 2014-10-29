// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.databind.DeserializationContext;

public final class Deserializer extends Deserializer
{

    private static final <init> primitiveInstance = new <init>(java/lang/Short, Short.valueOf((short)0));
    private static final long serialVersionUID = 1L;
    private static final <init> wrapperInstance;

    public final volatile Object deserialize(l l, DeserializationContext deserializationcontext)
    {
        return deserialize(l, deserializationcontext);
    }

    public final Short deserialize(l l, DeserializationContext deserializationcontext)
    {
        return _parseShort(l, deserializationcontext);
    }

    static 
    {
        wrapperInstance = new <init>(Short.TYPE, null);
    }



    public Deserializer(Class class1, Short short1)
    {
        super(class1, short1);
    }
}
