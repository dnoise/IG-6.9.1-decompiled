// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.realtimeclient;


public final class _cls9 extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES add;
    public static final .VALUES remove;
    public static final .VALUES replace;

    public static _cls9 valueOf(String s)
    {
        return (_cls9)Enum.valueOf(com/instagram/realtimeclient/RealtimeOperation$Type, s);
    }

    public static _cls9[] values()
    {
        return (_cls9[])$VALUES.clone();
    }

    static 
    {
        add = new <init>("add", 0);
        remove = new <init>("remove", 1);
        replace = new <init>("replace", 2);
        e_3B_.clone aclone[] = new <init>[3];
        aclone[0] = add;
        aclone[1] = remove;
        aclone[2] = replace;
        $VALUES = aclone;
    }

    private _cls9(String s, int i)
    {
        super(s, i);
    }
}
