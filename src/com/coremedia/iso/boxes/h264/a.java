// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.coremedia.iso.boxes.h264;

import com.coremedia.iso.e;
import com.coremedia.iso.g;
import com.googlecode.mp4parser.b.a.i;
import com.googlecode.mp4parser.boxes.mp4.a.c;
import com.googlecode.mp4parser.boxes.mp4.a.d;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class a
{

    public int a;
    public int b;
    public int c;
    public int d;
    public int e;
    public List f;
    public List g;
    public boolean h;
    public int i;
    public int j;
    public int k;
    public List l;
    public int m;
    public int n;
    public int o;
    public int p;
    public int q;

    public a()
    {
        f = new ArrayList();
        g = new ArrayList();
        h = true;
        i = 1;
        j = 0;
        k = 0;
        l = new ArrayList();
        m = 60;
        n = 7;
        o = 31;
        p = 31;
        q = 31;
    }

    public a(ByteBuffer bytebuffer)
    {
        int i1 = 0;
        super();
        f = new ArrayList();
        g = new ArrayList();
        h = true;
        i = 1;
        j = 0;
        k = 0;
        l = new ArrayList();
        m = 60;
        n = 7;
        o = 31;
        p = 31;
        q = 31;
        a = com.coremedia.iso.e.f(bytebuffer);
        b = com.coremedia.iso.e.f(bytebuffer);
        c = com.coremedia.iso.e.f(bytebuffer);
        d = com.coremedia.iso.e.f(bytebuffer);
        c c1 = new c(bytebuffer);
        m = c1.a(6);
        e = c1.a(2);
        n = c1.a(3);
        int j1 = c1.a(5);
        for (int k1 = 0; k1 < j1; k1++)
        {
            byte abyte2[] = new byte[com.coremedia.iso.e.d(bytebuffer)];
            bytebuffer.get(abyte2);
            f.add(abyte2);
        }

        long l1 = com.coremedia.iso.e.f(bytebuffer);
        for (int i2 = 0; (long)i2 < l1; i2++)
        {
            byte abyte1[] = new byte[com.coremedia.iso.e.d(bytebuffer)];
            bytebuffer.get(abyte1);
            g.add(abyte1);
        }

        if (bytebuffer.remaining() < 4)
        {
            h = false;
        }
        if (h && (b == 100 || b == 110 || b == 122 || b == 144))
        {
            c c2 = new c(bytebuffer);
            o = c2.a(6);
            i = c2.a(2);
            p = c2.a(5);
            j = c2.a(3);
            q = c2.a(5);
            k = c2.a(3);
            for (long l2 = com.coremedia.iso.e.f(bytebuffer); (long)i1 < l2; i1++)
            {
                byte abyte0[] = new byte[com.coremedia.iso.e.d(bytebuffer)];
                bytebuffer.get(abyte0);
                l.add(abyte0);
            }

        } else
        {
            i = -1;
            j = -1;
            k = -1;
        }
    }

    public final long a()
    {
        Iterator iterator = f.iterator();
        long l1;
        byte abyte2[];
        for (l1 = 6L; iterator.hasNext(); l1 = l1 + 2L + (long)abyte2.length)
        {
            abyte2 = (byte[])iterator.next();
        }

        long l2 = l1 + 1L;
        Iterator iterator1 = g.iterator();
        long l3;
        byte abyte1[];
        for (l3 = l2; iterator1.hasNext(); l3 = l3 + 2L + (long)abyte1.length)
        {
            abyte1 = (byte[])iterator1.next();
        }

        if (h && (b == 100 || b == 110 || b == 122 || b == 144))
        {
            long l4 = l3 + 4L;
            Iterator iterator2 = l.iterator();
            byte abyte0[];
            for (l3 = l4; iterator2.hasNext(); l3 = l3 + 2L + (long)abyte0.length)
            {
                abyte0 = (byte[])iterator2.next();
            }

        }
        return l3;
    }

    public final void a(ByteBuffer bytebuffer)
    {
        com.coremedia.iso.g.d(bytebuffer, a);
        com.coremedia.iso.g.d(bytebuffer, b);
        com.coremedia.iso.g.d(bytebuffer, c);
        com.coremedia.iso.g.d(bytebuffer, d);
        d d1 = new d(bytebuffer);
        d1.a(m, 6);
        d1.a(e, 2);
        d1.a(n, 3);
        d1.a(g.size(), 5);
        byte abyte2[];
        for (Iterator iterator = f.iterator(); iterator.hasNext(); bytebuffer.put(abyte2))
        {
            abyte2 = (byte[])iterator.next();
            com.coremedia.iso.g.b(bytebuffer, abyte2.length);
        }

        com.coremedia.iso.g.d(bytebuffer, g.size());
        byte abyte1[];
        for (Iterator iterator1 = g.iterator(); iterator1.hasNext(); bytebuffer.put(abyte1))
        {
            abyte1 = (byte[])iterator1.next();
            com.coremedia.iso.g.b(bytebuffer, abyte1.length);
        }

        if (h && (b == 100 || b == 110 || b == 122 || b == 144))
        {
            d d2 = new d(bytebuffer);
            d2.a(o, 6);
            d2.a(i, 2);
            d2.a(p, 5);
            d2.a(j, 3);
            d2.a(q, 5);
            d2.a(k, 3);
            byte abyte0[];
            for (Iterator iterator2 = l.iterator(); iterator2.hasNext(); bytebuffer.put(abyte0))
            {
                abyte0 = (byte[])iterator2.next();
                com.coremedia.iso.g.b(bytebuffer, abyte0.length);
            }

        }
    }

    public final String[] b()
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = g.iterator();
        while (iterator.hasNext()) 
        {
            byte abyte0[] = (byte[])iterator.next();
            String s;
            try
            {
                s = com.googlecode.mp4parser.b.a.e.a(abyte0).toString();
            }
            catch (IOException ioexception)
            {
                throw new RuntimeException(ioexception);
            }
            arraylist.add(s);
        }
        return (String[])arraylist.toArray(new String[arraylist.size()]);
    }

    public final String[] c()
    {
        ArrayList arraylist;
        Iterator iterator;
        arraylist = new ArrayList();
        iterator = f.iterator();
_L2:
        byte abyte0[];
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        abyte0 = (byte[])iterator.next();
        String s1 = com.googlecode.mp4parser.b.a.i.a(new ByteArrayInputStream(abyte0)).toString();
        String s = s1;
_L3:
        arraylist.add(s);
        if (true) goto _L2; else goto _L1
        IOException ioexception;
        ioexception;
        s = "not parsable";
          goto _L3
_L1:
        return (String[])arraylist.toArray(new String[arraylist.size()]);
    }

    public final List d()
    {
        ArrayList arraylist = new ArrayList(f.size());
        for (Iterator iterator = f.iterator(); iterator.hasNext(); arraylist.add(com.coremedia.iso.d.a((byte[])iterator.next()))) { }
        return arraylist;
    }

    public final List e()
    {
        ArrayList arraylist = new ArrayList(l.size());
        for (Iterator iterator = l.iterator(); iterator.hasNext(); arraylist.add(com.coremedia.iso.d.a((byte[])iterator.next()))) { }
        return arraylist;
    }

    public final List f()
    {
        ArrayList arraylist = new ArrayList(g.size());
        for (Iterator iterator = g.iterator(); iterator.hasNext(); arraylist.add(com.coremedia.iso.d.a((byte[])iterator.next()))) { }
        return arraylist;
    }
}
