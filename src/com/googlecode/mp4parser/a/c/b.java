// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.a.c;

import com.coremedia.iso.boxes.CompositionTimeToSample;
import com.coremedia.iso.boxes.SampleDescriptionBox;
import com.coremedia.iso.boxes.TimeToSampleBox;
import com.coremedia.iso.boxes.k;
import com.googlecode.mp4parser.a.a;
import com.googlecode.mp4parser.a.e;
import com.googlecode.mp4parser.a.f;
import java.util.LinkedList;
import java.util.List;

public class b extends a
{

    static final boolean b;
    e a;
    private int c;
    private int d;
    private long e[];

    public b(e e1, long l1)
    {
        a = e1;
        if (!b && 0L > 0x7fffffffL)
        {
            throw new AssertionError();
        }
        if (!b && l1 > 0x7fffffffL)
        {
            throw new AssertionError();
        } else
        {
            c = 0;
            d = (int)l1;
            return;
        }
    }

    public final List e()
    {
        return a.e().subList(c, d);
    }

    public final SampleDescriptionBox f()
    {
        return a.f();
    }

    public final List g()
    {
        if (a.g() != null && !a.g().isEmpty())
        {
            long al[] = TimeToSampleBox.blowupTimeToSamples(a.g());
            long al1[] = new long[d - c];
            System.arraycopy(al, c, al1, 0, d - c);
            LinkedList linkedlist = new LinkedList();
            int i1 = al1.length;
            int j1 = 0;
            while (j1 < i1) 
            {
                long l1 = al1[j1];
                if (linkedlist.isEmpty() || ((k)linkedlist.getLast()).b() != l1)
                {
                    linkedlist.add(new k(1L, l1));
                } else
                {
                    k k1 = (k)linkedlist.getLast();
                    k1.a(1L + k1.a());
                }
                j1++;
            }
            return linkedlist;
        } else
        {
            return null;
        }
    }

    public final List h()
    {
        if (a.h() != null && !a.h().isEmpty())
        {
            int ai[] = CompositionTimeToSample.blowupCompositionTimes(a.h());
            int ai1[] = new int[d - c];
            System.arraycopy(ai, c, ai1, 0, d - c);
            LinkedList linkedlist = new LinkedList();
            int i1 = ai1.length;
            int j1 = 0;
            while (j1 < i1) 
            {
                int k1 = ai1[j1];
                if (linkedlist.isEmpty() || ((com.coremedia.iso.boxes.b)linkedlist.getLast()).b() != k1)
                {
                    linkedlist.add(new com.coremedia.iso.boxes.b(1, k1));
                } else
                {
                    com.coremedia.iso.boxes.b b1 = (com.coremedia.iso.boxes.b)linkedlist.getLast();
                    b1.a(1 + b1.a());
                }
                j1++;
            }
            return linkedlist;
        } else
        {
            return null;
        }
    }

    public final long[] i()
    {
        this;
        JVM INSTR monitorenter ;
        if (e != null) goto _L2; else goto _L1
_L1:
        if (a.i() == null || a.i().length <= 0) goto _L4; else goto _L3
_L3:
        LinkedList linkedlist;
        long al1[];
        int i1;
        linkedlist = new LinkedList();
        al1 = a.i();
        i1 = al1.length;
        int j1 = 0;
_L12:
        if (j1 >= i1) goto _L6; else goto _L5
_L5:
        long l1 = al1[j1];
        if (l1 >= (long)c && l1 < (long)d)
        {
            linkedlist.add(Long.valueOf(l1 - (long)c));
        }
          goto _L7
_L6:
        e = new long[linkedlist.size()];
        int k1 = 0;
_L9:
        if (k1 >= e.length)
        {
            break; /* Loop/switch isn't completed */
        }
        e[k1] = ((Long)linkedlist.get(k1)).longValue();
        k1++;
        if (true) goto _L9; else goto _L8
_L8:
        long al[] = e;
_L10:
        this;
        JVM INSTR monitorexit ;
        return al;
_L4:
        al = null;
          goto _L10
_L2:
        al = e;
          goto _L10
        Exception exception;
        exception;
        throw exception;
_L7:
        j1++;
        if (true) goto _L12; else goto _L11
_L11:
    }

    public final List j()
    {
        if (a.j() != null && !a.j().isEmpty())
        {
            return a.j().subList(c, d);
        } else
        {
            return null;
        }
    }

    public final f k()
    {
        return a.k();
    }

    public final String l()
    {
        return a.l();
    }

    public final com.coremedia.iso.boxes.a m()
    {
        return a.m();
    }

    static 
    {
        boolean flag;
        if (!com/googlecode/mp4parser/a/c/b.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b = flag;
    }
}
