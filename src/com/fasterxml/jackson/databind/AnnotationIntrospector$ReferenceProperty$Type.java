// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.databind;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES BACK_REFERENCE;
    public static final .VALUES MANAGED_REFERENCE;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty$Type, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        MANAGED_REFERENCE = new <init>("MANAGED_REFERENCE", 0);
        BACK_REFERENCE = new <init>("BACK_REFERENCE", 1);
        e_3B_.clone aclone[] = new <init>[2];
        aclone[0] = MANAGED_REFERENCE;
        aclone[1] = BACK_REFERENCE;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
