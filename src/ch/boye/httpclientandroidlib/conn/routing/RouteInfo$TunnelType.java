// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.conn.routing;


public final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES PLAIN;
    public static final .VALUES TUNNELLED;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(ch/boye/httpclientandroidlib/conn/routing/RouteInfo$TunnelType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        PLAIN = new <init>("PLAIN", 0);
        TUNNELLED = new <init>("TUNNELLED", 1);
        e_3B_.clone aclone[] = new <init>[2];
        aclone[0] = PLAIN;
        aclone[1] = TUNNELLED;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
