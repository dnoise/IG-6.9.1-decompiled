// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.quicksand;

import com.instagram.common.l.a.b;
import com.instagram.common.y.e;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.quicksand:
//            QuickSandSolverBridge

public class a
    implements Runnable
{

    static final boolean a;
    private String b;
    private Integer c;
    private Integer d;
    private Integer e;
    private Integer f;
    private List g;
    private QuickSandSolverBridge h;

    public a(Integer integer, String s, Integer integer1, Integer integer2, Integer integer3)
    {
        h = new QuickSandSolverBridge(integer1.intValue(), integer3.intValue());
        d = integer;
        b = s;
        e = integer2;
        f = integer1;
        g = new ArrayList();
        c = Integer.valueOf(0);
    }

    private static String a(List list)
    {
        String s1;
        try
        {
            String s = com.instagram.common.l.a.b.a("-").a(list);
            MessageDigest messagedigest = MessageDigest.getInstance("SHA-256");
            messagedigest.update(s.getBytes());
            byte abyte0[] = messagedigest.digest();
            BigInteger biginteger = new BigInteger(1, abyte0);
            s1 = com.instagram.common.y.e.a((new StringBuilder("%0")).append(abyte0.length << 1).append("x").toString(), new Object[] {
                biginteger
            });
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            return new String();
        }
        return s1;
    }

    public final void a()
    {
        h.a();
    }

    public final boolean b()
    {
        return c == d;
    }

    public final List c()
    {
        this;
        JVM INSTR monitorenter ;
        List list = g;
        this;
        JVM INSTR monitorexit ;
        return list;
        Exception exception;
        exception;
        throw exception;
    }

    public void run()
    {
label0:
        {
            do
            {
                if (c.intValue() >= d.intValue())
                {
                    break;
                }
                if (h.b())
                {
                    h.c();
                    if (!a && h.b())
                    {
                        throw new AssertionError();
                    }
                    break label0;
                }
                int ai[] = h.a(b, e.intValue());
                if (ai.length == f.intValue())
                {
                    ArrayList arraylist = new ArrayList(f.intValue());
                    for (int i = 0; i < ai.length; i++)
                    {
                        arraylist.add(Integer.valueOf(ai[i]));
                    }

                    b = a(arraylist);
                    synchronized (g)
                    {
                        g.add(arraylist);
                    }
                } else
                {
                    Integer _tmp = c;
                    c = Integer.valueOf(-1 + c.intValue());
                }
                Integer _tmp1 = c;
                c = Integer.valueOf(1 + c.intValue());
            } while (true);
            h.c();
        }
    }

    static 
    {
        boolean flag;
        if (!com/instagram/quicksand/a.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }
}
