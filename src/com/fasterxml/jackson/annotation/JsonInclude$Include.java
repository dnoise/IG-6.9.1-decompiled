// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.annotation;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES ALWAYS;
    public static final .VALUES NON_DEFAULT;
    public static final .VALUES NON_EMPTY;
    public static final .VALUES NON_NULL;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/fasterxml/jackson/annotation/JsonInclude$Include, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        ALWAYS = new <init>("ALWAYS", 0);
        NON_NULL = new <init>("NON_NULL", 1);
        NON_DEFAULT = new <init>("NON_DEFAULT", 2);
        NON_EMPTY = new <init>("NON_EMPTY", 3);
        e_3B_.clone aclone[] = new <init>[4];
        aclone[0] = ALWAYS;
        aclone[1] = NON_NULL;
        aclone[2] = NON_DEFAULT;
        aclone[3] = NON_EMPTY;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
