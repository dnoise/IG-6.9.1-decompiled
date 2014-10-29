// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.auth;


final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES CHALLENGE_RECEIVED;
    public static final .VALUES FAILED;
    public static final .VALUES MSG_TYPE1_GENERATED;
    public static final .VALUES MSG_TYPE2_RECEVIED;
    public static final .VALUES MSG_TYPE3_GENERATED;
    public static final .VALUES UNINITIATED;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(ch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        UNINITIATED = new <init>("UNINITIATED", 0);
        CHALLENGE_RECEIVED = new <init>("CHALLENGE_RECEIVED", 1);
        MSG_TYPE1_GENERATED = new <init>("MSG_TYPE1_GENERATED", 2);
        MSG_TYPE2_RECEVIED = new <init>("MSG_TYPE2_RECEVIED", 3);
        MSG_TYPE3_GENERATED = new <init>("MSG_TYPE3_GENERATED", 4);
        FAILED = new <init>("FAILED", 5);
        e_3B_.clone aclone[] = new <init>[6];
        aclone[0] = UNINITIATED;
        aclone[1] = CHALLENGE_RECEIVED;
        aclone[2] = MSG_TYPE1_GENERATED;
        aclone[3] = MSG_TYPE2_RECEVIED;
        aclone[4] = MSG_TYPE3_GENERATED;
        aclone[5] = FAILED;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
