// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind;


// Referenced classes of package com.fasterxml.jackson.databind:
//            DeserializationContext

public abstract class KeyDeserializer
{

    public KeyDeserializer()
    {
    }

    public abstract Object deserializeKey(String s, DeserializationContext deserializationcontext);
}
