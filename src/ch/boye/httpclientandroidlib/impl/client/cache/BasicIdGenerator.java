// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.impl.client.cache;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Formatter;
import java.util.Locale;

class BasicIdGenerator
{

    private long count;
    private final String hostname;
    private final SecureRandom rnd;

    public BasicIdGenerator()
    {
        String s1 = InetAddress.getLocalHost().getHostName();
        String s = s1;
_L1:
        hostname = s;
        UnknownHostException unknownhostexception;
        try
        {
            rnd = SecureRandom.getInstance("SHA1PRNG");
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            throw new Error(nosuchalgorithmexception);
        }
        rnd.setSeed(System.currentTimeMillis());
        return;
        unknownhostexception;
        s = "localhost";
          goto _L1
    }

    public String generate()
    {
        StringBuilder stringbuilder = new StringBuilder();
        generate(stringbuilder);
        return stringbuilder.toString();
    }

    public void generate(StringBuilder stringbuilder)
    {
        this;
        JVM INSTR monitorenter ;
        count = 1L + count;
        int i = rnd.nextInt();
        stringbuilder.append(System.currentTimeMillis());
        stringbuilder.append('.');
        Formatter formatter = new Formatter(stringbuilder, Locale.US);
        Object aobj[] = new Object[2];
        aobj[0] = Long.valueOf(count);
        aobj[1] = Integer.valueOf(i);
        formatter.format("%1$016x-%2$08x", aobj);
        stringbuilder.append('.');
        stringbuilder.append(hostname);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}
