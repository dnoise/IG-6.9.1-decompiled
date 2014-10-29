// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.jsonFormatVisitors;


public final class JsonFormatTypes extends Enum
{

    private static final JsonFormatTypes $VALUES[];
    public static final JsonFormatTypes ANY;
    public static final JsonFormatTypes ARRAY;
    public static final JsonFormatTypes BOOLEAN;
    public static final JsonFormatTypes INTEGER;
    public static final JsonFormatTypes NULL;
    public static final JsonFormatTypes NUMBER;
    public static final JsonFormatTypes OBJECT;
    public static final JsonFormatTypes STRING;

    private JsonFormatTypes(String s, int i)
    {
        super(s, i);
    }

    public static JsonFormatTypes forValue(String s)
    {
        return valueOf(s.toUpperCase());
    }

    public static JsonFormatTypes valueOf(String s)
    {
        return (JsonFormatTypes)Enum.valueOf(com/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes, s);
    }

    public static JsonFormatTypes[] values()
    {
        return (JsonFormatTypes[])$VALUES.clone();
    }

    public final String value()
    {
        return name().toLowerCase();
    }

    static 
    {
        STRING = new JsonFormatTypes("STRING", 0);
        NUMBER = new JsonFormatTypes("NUMBER", 1);
        INTEGER = new JsonFormatTypes("INTEGER", 2);
        BOOLEAN = new JsonFormatTypes("BOOLEAN", 3);
        OBJECT = new JsonFormatTypes("OBJECT", 4);
        ARRAY = new JsonFormatTypes("ARRAY", 5);
        NULL = new JsonFormatTypes("NULL", 6);
        ANY = new JsonFormatTypes("ANY", 7);
        JsonFormatTypes ajsonformattypes[] = new JsonFormatTypes[8];
        ajsonformattypes[0] = STRING;
        ajsonformattypes[1] = NUMBER;
        ajsonformattypes[2] = INTEGER;
        ajsonformattypes[3] = BOOLEAN;
        ajsonformattypes[4] = OBJECT;
        ajsonformattypes[5] = ARRAY;
        ajsonformattypes[6] = NULL;
        ajsonformattypes[7] = ANY;
        $VALUES = ajsonformattypes;
    }
}
