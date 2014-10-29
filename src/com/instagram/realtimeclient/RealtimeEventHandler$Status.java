// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.realtimeclient;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES CONNECTED;
    public static final .VALUES NOT_CONNECTED;
    public static final .VALUES SUBSCRIBED;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/instagram/realtimeclient/RealtimeEventHandler$Status, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        NOT_CONNECTED = new <init>("NOT_CONNECTED", 0);
        CONNECTED = new <init>("CONNECTED", 1);
        SUBSCRIBED = new <init>("SUBSCRIBED", 2);
        s_3B_.clone aclone[] = new <init>[3];
        aclone[0] = NOT_CONNECTED;
        aclone[1] = CONNECTED;
        aclone[2] = SUBSCRIBED;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
