// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib;


// Referenced classes of package ch.boye.httpclientandroidlib:
//            ProtocolException

public class UnsupportedHttpVersionException extends ProtocolException
{

    private static final long serialVersionUID = 0xed49599b39fc67a9L;

    public UnsupportedHttpVersionException()
    {
    }

    public UnsupportedHttpVersionException(String s)
    {
        super(s);
    }
}