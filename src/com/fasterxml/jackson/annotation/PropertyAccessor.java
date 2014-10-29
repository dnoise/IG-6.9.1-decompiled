// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.annotation;


public final class PropertyAccessor extends Enum
{

    private static final PropertyAccessor $VALUES[];
    public static final PropertyAccessor ALL;
    public static final PropertyAccessor CREATOR;
    public static final PropertyAccessor FIELD;
    public static final PropertyAccessor GETTER;
    public static final PropertyAccessor IS_GETTER;
    public static final PropertyAccessor NONE;
    public static final PropertyAccessor SETTER;

    private PropertyAccessor(String s, int i)
    {
        super(s, i);
    }

    public static PropertyAccessor valueOf(String s)
    {
        return (PropertyAccessor)Enum.valueOf(com/fasterxml/jackson/annotation/PropertyAccessor, s);
    }

    public static PropertyAccessor[] values()
    {
        return (PropertyAccessor[])$VALUES.clone();
    }

    public final boolean creatorEnabled()
    {
        return this == CREATOR || this == ALL;
    }

    public final boolean fieldEnabled()
    {
        return this == FIELD || this == ALL;
    }

    public final boolean getterEnabled()
    {
        return this == GETTER || this == ALL;
    }

    public final boolean isGetterEnabled()
    {
        return this == IS_GETTER || this == ALL;
    }

    public final boolean setterEnabled()
    {
        return this == SETTER || this == ALL;
    }

    static 
    {
        GETTER = new PropertyAccessor("GETTER", 0);
        SETTER = new PropertyAccessor("SETTER", 1);
        CREATOR = new PropertyAccessor("CREATOR", 2);
        FIELD = new PropertyAccessor("FIELD", 3);
        IS_GETTER = new PropertyAccessor("IS_GETTER", 4);
        NONE = new PropertyAccessor("NONE", 5);
        ALL = new PropertyAccessor("ALL", 6);
        PropertyAccessor apropertyaccessor[] = new PropertyAccessor[7];
        apropertyaccessor[0] = GETTER;
        apropertyaccessor[1] = SETTER;
        apropertyaccessor[2] = CREATOR;
        apropertyaccessor[3] = FIELD;
        apropertyaccessor[4] = IS_GETTER;
        apropertyaccessor[5] = NONE;
        apropertyaccessor[6] = ALL;
        $VALUES = apropertyaccessor;
    }
}
