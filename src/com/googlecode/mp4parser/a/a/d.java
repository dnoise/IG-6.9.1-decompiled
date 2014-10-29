// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.googlecode.mp4parser.a.a;

import com.coremedia.iso.boxes.k;
import com.googlecode.mp4parser.a.c;
import com.googlecode.mp4parser.a.e;
import com.googlecode.mp4parser.a.f;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.googlecode.mp4parser.a.a:
//            c

public final class d
    implements com.googlecode.mp4parser.a.a.c
{

    public d()
    {
    }

    private static long a(e e1)
    {
        Iterator iterator = e1.g().iterator();
        long l;
        k k1;
        for (l = 0L; iterator.hasNext(); l += k1.a() * k1.b())
        {
            k1 = (k)iterator.next();
        }

        return l;
    }

    public final long[] a(e e1, c c1)
    {
        List list = e1.g();
        Iterator iterator = c1.a().iterator();
        double d1 = 0.0D;
        while (iterator.hasNext()) 
        {
            e e2 = (e)iterator.next();
            double d2 = a(e2) / e2.k().b();
            int i;
            long al[];
            long l;
            int j;
            Iterator iterator1;
            long l1;
            int i1;
            k k1;
            int j1;
            int i2;
            int j2;
            double d3;
            if (d1 < d2)
            {
                d3 = d2;
            } else
            {
                d3 = d1;
            }
            d1 = d3;
        }
        i = -1 + (int)Math.ceil(d1 / 2D);
        if (i <= 0)
        {
            i = 1;
        }
        al = new long[i];
        Arrays.fill(al, -1L);
        al[0] = 1L;
        l = 0L;
        j = 0;
        iterator1 = list.iterator();
label0:
        {
            if (!iterator1.hasNext())
            {
                break label0;
            }
            k1 = (k)iterator1.next();
            j1 = 0;
            do
            {
                if ((long)j1 >= k1.a())
                {
                    break MISSING_BLOCK_LABEL_136;
                }
                i2 = 1 + (int)(l / e1.k().b() / 2L);
                if (i2 >= al.length)
                {
                    break MISSING_BLOCK_LABEL_136;
                }
                j2 = j + 1;
                al[i2] = j + 1;
                l += k1.b();
                j1++;
                j = j2;
            } while (true);
        }
        l1 = j + 1;
        for (i1 = -1 + al.length; i1 >= 0; i1--)
        {
            if (al[i1] == -1L)
            {
                al[i1] = l1;
            }
            l1 = al[i1];
        }

        return al;
    }
}
