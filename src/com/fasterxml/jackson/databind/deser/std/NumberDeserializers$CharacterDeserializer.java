// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.fasterxml.jackson.databind.DeserializationContext;

public final class rializer extends rializer
{

    private static final <init> primitiveInstance = new <init>(java/lang/Character, Character.valueOf('\0'));
    private static final long serialVersionUID = 1L;
    private static final <init> wrapperInstance;

    public final Character deserialize(l l1, DeserializationContext deserializationcontext)
    {
        r r1 = l1.getCurrentToken();
        if (r1 == r.i)
        {
            int i = l1.getIntValue();
            if (i >= 0 && i <= 65535)
            {
                return Character.valueOf((char)i);
            }
        } else
        if (r1 == r.h)
        {
            String s = l1.getText();
            if (s.length() == 1)
            {
                return Character.valueOf(s.charAt(0));
            }
            if (s.length() == 0)
            {
                return (Character)getEmptyValue();
            }
        }
        throw deserializationcontext.mappingException(_valueClass, r1);
    }

    public final volatile Object deserialize(l l1, DeserializationContext deserializationcontext)
    {
        return deserialize(l1, deserializationcontext);
    }

    static 
    {
        wrapperInstance = new <init>(Character.TYPE, null);
    }



    public rializer(Class class1, Character character)
    {
        super(class1, character);
    }
}
