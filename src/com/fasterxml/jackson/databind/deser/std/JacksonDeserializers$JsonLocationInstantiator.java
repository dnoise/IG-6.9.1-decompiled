// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.a.j;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.deser.CreatorProperty;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;

public class  extends ValueInstantiator
{

    public static final getFromObjectArguments instance = new <init>();

    private static final int _int(Object obj)
    {
        if (obj == null)
        {
            return 0;
        } else
        {
            return ((Number)obj).intValue();
        }
    }

    private static final long _long(Object obj)
    {
        if (obj == null)
        {
            return 0L;
        } else
        {
            return ((Number)obj).longValue();
        }
    }

    private static CreatorProperty creatorProp(String s, JavaType javatype, int i)
    {
        return new CreatorProperty(s, javatype, null, null, null, null, i, null, true);
    }

    public boolean canCreateFromObjectWith()
    {
        return true;
    }

    public Object createFromObjectWith(DeserializationContext deserializationcontext, Object aobj[])
    {
        return new j(aobj[0], _long(aobj[1]), _long(aobj[2]), _int(aobj[3]), _int(aobj[4]));
    }

    public CreatorProperty[] getFromObjectArguments(DeserializationConfig deserializationconfig)
    {
        JavaType javatype = deserializationconfig.constructType(Integer.TYPE);
        JavaType javatype1 = deserializationconfig.constructType(Long.TYPE);
        CreatorProperty acreatorproperty[] = new CreatorProperty[5];
        acreatorproperty[0] = creatorProp("sourceRef", deserializationconfig.constructType(java/lang/Object), 0);
        acreatorproperty[1] = creatorProp("byteOffset", javatype1, 1);
        acreatorproperty[2] = creatorProp("charOffset", javatype1, 2);
        acreatorproperty[3] = creatorProp("lineNr", javatype, 3);
        acreatorproperty[4] = creatorProp("columnNr", javatype, 4);
        return acreatorproperty;
    }

    public volatile SettableBeanProperty[] getFromObjectArguments(DeserializationConfig deserializationconfig)
    {
        return getFromObjectArguments(deserializationconfig);
    }

    public String getValueTypeDesc()
    {
        return com/fasterxml/jackson/a/j.getName();
    }


    public ()
    {
    }
}
