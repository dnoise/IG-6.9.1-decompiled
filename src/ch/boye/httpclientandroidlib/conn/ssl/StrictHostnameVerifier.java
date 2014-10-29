// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.conn.ssl;


// Referenced classes of package ch.boye.httpclientandroidlib.conn.ssl:
//            AbstractVerifier

public class StrictHostnameVerifier extends AbstractVerifier
{

    public StrictHostnameVerifier()
    {
    }

    public final String toString()
    {
        return "STRICT";
    }

    public final void verify(String s, String as[], String as1[])
    {
        verify(s, as, as1, true);
    }
}
