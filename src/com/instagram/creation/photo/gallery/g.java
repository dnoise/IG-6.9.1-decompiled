// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.gallery;

import android.net.Uri;
import java.util.Arrays;
import java.util.PriorityQueue;

// Referenced classes of package com.instagram.creation.photo.gallery:
//            d, h, j, i, 
//            c

public final class g
    implements d
{

    private final d a[];
    private final PriorityQueue b;
    private long c[];
    private int d;
    private int e[];
    private int f;

    public g(d ad[], int k)
    {
        a = (d[])ad.clone();
        Object obj;
        int l;
        if (k == 1)
        {
            obj = new h((byte)0);
        } else
        {
            obj = new i((byte)0);
        }
        b = new PriorityQueue(4, ((java.util.Comparator) (obj)));
        c = new long[16];
        d = 0;
        e = new int[a.length];
        f = -1;
        b.clear();
        l = a.length;
        for (int i1 = 0; i1 < l; i1++)
        {
            j j1 = new j(a[i1], i1);
            if (j1.a())
            {
                b.add(j1);
            }
        }

    }

    private j c()
    {
        j j1 = (j)b.poll();
        if (j1 == null)
        {
            return null;
        }
        if (j1.a == f)
        {
            int l = -1 + d;
            long al2[] = c;
            al2[l] = 1L + al2[l];
            return j1;
        }
        f = j1.a;
        if (c.length == d)
        {
            long al1[] = new long[2 * d];
            System.arraycopy(c, 0, al1, 0, d);
            c = al1;
        }
        long al[] = c;
        int k = d;
        d = k + 1;
        al[k] = 1L | (long)f << 32;
        return j1;
    }

    public final c a(int k)
    {
        int l;
        int i1;
        int j1;
        l = 0;
        if (k < 0 || k > b())
        {
            throw new IndexOutOfBoundsException((new StringBuilder("index ")).append(k).append(" out of range max is ").append(b()).toString());
        }
        Arrays.fill(e, 0);
        i1 = d;
        j1 = 0;
_L10:
        if (j1 >= i1) goto _L2; else goto _L1
_L1:
        int k1;
        int i2;
        long l1 = c[j1];
        k1 = (int)(-1L & l1);
        i2 = (int)(l1 >> 32);
        if (l + k1 <= k) goto _L4; else goto _L3
_L3:
        c c1;
        int l2 = e[i2] + (k - l);
        c1 = a[i2].a(l2);
_L8:
        return c1;
_L4:
        int k2 = l + k1;
        int ai[] = e;
        ai[i2] = k1 + ai[i2];
        j1++;
        l = k2;
        continue; /* Loop/switch isn't completed */
_L6:
        j j2;
        if (j2.a())
        {
            b.add(j2);
        }
        l++;
_L2:
        j2 = c();
        if (j2 == null)
        {
            return null;
        }
        if (l != k) goto _L6; else goto _L5
_L5:
        c1 = j2.c;
        if (!j2.a()) goto _L8; else goto _L7
_L7:
        b.add(j2);
        return c1;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public final c a(Uri uri)
    {
        d ad[] = a;
        int k = ad.length;
        for (int l = 0; l < k; l++)
        {
            c c1 = ad[l].a(uri);
            if (c1 != null)
            {
                return c1;
            }
        }

        return null;
    }

    public final void a()
    {
        int k = 0;
        for (int l = a.length; k < l; k++)
        {
            a[k].a();
        }

    }

    public final int b()
    {
        int k = 0;
        d ad[] = a;
        int l = ad.length;
        int i1 = 0;
        for (; k < l; k++)
        {
            i1 += ad[k].b();
        }

        return i1;
    }
}
