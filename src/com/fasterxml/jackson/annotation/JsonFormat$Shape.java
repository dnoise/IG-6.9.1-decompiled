// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.annotation;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES ANY;
    public static final .VALUES ARRAY;
    public static final .VALUES BOOLEAN;
    public static final .VALUES NUMBER;
    public static final .VALUES NUMBER_FLOAT;
    public static final .VALUES NUMBER_INT;
    public static final .VALUES OBJECT;
    public static final .VALUES SCALAR;
    public static final .VALUES STRING;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/fasterxml/jackson/annotation/JsonFormat$Shape, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    public final boolean isNumeric()
    {
        return this == NUMBER || this == NUMBER_INT || this == NUMBER_FLOAT;
    }

    public final boolean isStructured()
    {
        return this == OBJECT || this == ARRAY;
    }

    static 
    {
        ANY = new <init>("ANY", 0);
        SCALAR = new <init>("SCALAR", 1);
        ARRAY = new <init>("ARRAY", 2);
        OBJECT = new <init>("OBJECT", 3);
        NUMBER = new <init>("NUMBER", 4);
        NUMBER_FLOAT = new <init>("NUMBER_FLOAT", 5);
        NUMBER_INT = new <init>("NUMBER_INT", 6);
        STRING = new <init>("STRING", 7);
        BOOLEAN = new <init>("BOOLEAN", 8);
        ARRAY aarray[] = new <init>[9];
        aarray[0] = ANY;
        aarray[1] = SCALAR;
        aarray[2] = ARRAY;
        aarray[3] = OBJECT;
        aarray[4] = NUMBER;
        aarray[5] = NUMBER_FLOAT;
        aarray[6] = NUMBER_INT;
        aarray[7] = STRING;
        aarray[8] = BOOLEAN;
        $VALUES = aarray;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
