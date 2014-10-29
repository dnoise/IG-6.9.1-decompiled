// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;

public abstract class DeserializationProblemHandler
{

    public DeserializationProblemHandler()
    {
    }

    public boolean handleUnknownProperty(DeserializationContext deserializationcontext, l l, JsonDeserializer jsondeserializer, Object obj, String s)
    {
        return false;
    }
}
