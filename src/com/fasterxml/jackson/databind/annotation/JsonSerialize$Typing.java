// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind.annotation;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES DYNAMIC;
    public static final .VALUES STATIC;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/fasterxml/jackson/databind/annotation/JsonSerialize$Typing, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        DYNAMIC = new <init>("DYNAMIC", 0);
        STATIC = new <init>("STATIC", 1);
        g_3B_.clone aclone[] = new <init>[2];
        aclone[0] = DYNAMIC;
        aclone[1] = STATIC;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
